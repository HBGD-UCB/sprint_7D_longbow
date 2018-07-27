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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/14ecbf79-8d17-48a5-97c1-f84432237134/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/14ecbf79-8d17-48a5-97c1-f84432237134/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                3.6873447   3.5650271   3.8096623
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                3.6186427   3.4618746   3.7754107
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                3.2891865   2.9556702   3.6227028
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                3.5634091   3.4153861   3.7114321
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                3.6291443   3.4750187   3.7832700
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                3.3713092   3.1318509   3.6107675
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                3.6569412   3.4967254   3.8171570
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                3.7179133   3.4838180   3.9520086
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                3.8132792   3.5814441   4.0451143
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                3.8642155   3.6447258   4.0837052
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                3.8785992   3.7020938   4.0551046
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                4.0307221   3.2941055   4.7673386
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                3.2944245   3.1824949   3.4063541
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                3.2769900   3.1331925   3.4207876
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                3.3135669   3.1902592   3.4368746
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                3.6650475   3.4471351   3.8829599
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                3.5458080   3.2931766   3.7984393
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                3.7828086   3.4938600   4.0717572
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                3.3153590   3.0429468   3.5877713
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                3.3133589   2.9232595   3.7034584
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                3.4295821   2.9926215   3.8665427
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                3.5361823   3.3546560   3.7177086
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                3.4212131   3.2174520   3.6249741
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                3.5226861   3.4114221   3.6339500
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                3.7144883   3.6485139   3.7804627
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                3.4696835   3.4326462   3.5067207
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                3.5746569   3.5077991   3.6415148
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                3.6430534   3.5933236   3.6927833
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                3.7897875   3.4953270   4.0842479
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                3.4367654   3.3797061   3.4938247
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                3.4942487   3.4326135   3.5558840
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                3.5452735   3.4358759   3.6546712
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                3.3161363   3.2462803   3.3859922
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                3.3328323   3.2461977   3.4194668
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                3.2932776   3.2189703   3.3675848
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                3.2695831   3.1943030   3.3448631
0-3 months     ki1119695-PROBIT           BELARUS                        Q4                   NA                2.8746357   2.7611784   2.9880930
0-3 months     ki1119695-PROBIT           BELARUS                        Q1                   NA                2.8013864   2.4473449   3.1554279
0-3 months     ki1119695-PROBIT           BELARUS                        Q2                   NA                2.8539892   2.7252324   2.9827459
0-3 months     ki1119695-PROBIT           BELARUS                        Q3                   NA                2.8289972   2.7132584   2.9447360
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                3.3820843   3.3591728   3.4049957
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                3.2469831   2.9147878   3.5791785
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                3.3327487   3.0718200   3.5936775
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                3.3390938   3.2808168   3.3973708
0-3 months     ki1135781-COHORTS          INDIA                          Q4                   NA                3.6501852   3.5911349   3.7092355
0-3 months     ki1135781-COHORTS          INDIA                          Q1                   NA                3.3939755   3.3200513   3.4678997
0-3 months     ki1135781-COHORTS          INDIA                          Q2                   NA                3.6075826   3.5253592   3.6898059
0-3 months     ki1135781-COHORTS          INDIA                          Q3                   NA                3.5378412   3.4865254   3.5891570
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                3.7939304   3.7656890   3.8221718
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                3.6915125   3.6781321   3.7048929
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                3.7270091   3.7056694   3.7483488
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                3.7396429   3.7188059   3.7604798
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                3.7535357   3.3298098   4.1772616
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                3.6361654   3.5898409   3.6824900
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                3.6160797   3.4338099   3.7983495
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                3.6298398   3.5350834   3.7245962
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                2.0639805   1.9796295   2.1483314
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                1.8655754   1.7488941   1.9822568
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                2.1089489   1.7800432   2.4378545
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                1.9257674   1.7917247   2.0598101
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                1.8918943   1.7762565   2.0075322
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                2.0482805   1.8620885   2.2344724
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                1.8509063   1.6879189   2.0138937
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                1.8169785   1.6103231   2.0236339
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                1.9522615   1.7972942   2.1072288
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                1.8234168   1.6793679   1.9674657
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                2.0020407   1.8135347   2.1905467
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                1.5559261   1.2751290   1.8367232
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                2.0428730   1.9200601   2.1656859
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                2.0215794   1.8713741   2.1717848
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                2.0393410   1.9330771   2.1456048
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                2.1448469   1.7336268   2.5560670
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                1.9333237   1.6904907   2.1761567
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                1.8549939   1.5540588   2.1559290
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                1.7788753   1.6027555   1.9549951
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                2.1348989   1.8250669   2.4447309
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                1.6116786   1.3697530   1.8536043
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                1.8809642   1.7068315   2.0550970
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                1.8009418   1.6177673   1.9841164
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                1.8326702   1.7298320   1.9355084
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                1.9746162   1.9126068   2.0366255
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                1.8693942   1.7849162   1.9538722
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                1.9161446   1.8747257   1.9575635
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                1.9904720   1.8971068   2.0838372
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                2.1305473   1.9667713   2.2943233
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                1.9532455   1.9019576   2.0045333
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                1.9678927   1.9128651   2.0229203
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                1.9647661   1.8540706   2.0754616
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                1.9924929   1.9277388   2.0572470
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                1.9808273   1.9037385   2.0579162
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                2.0028484   1.9281475   2.0775493
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                2.0465750   1.9714181   2.1217320
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                   NA                1.7760637   1.6583188   1.8938087
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                   NA                1.8512281   1.4743131   2.2281431
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                   NA                1.7912124   1.7526100   1.8298148
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                   NA                1.8773622   1.7033691   2.0513554
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                1.7215573   1.6429479   1.8001667
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                1.7110806   1.6505425   1.7716187
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                1.7075942   1.6098447   1.8053436
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                1.6579238   1.5672987   1.7485488
3-6 months     ki1119695-PROBIT           BELARUS                        Q4                   NA                2.1237500   2.0763105   2.1711894
3-6 months     ki1119695-PROBIT           BELARUS                        Q1                   NA                2.0267852   1.8475019   2.2060685
3-6 months     ki1119695-PROBIT           BELARUS                        Q2                   NA                2.0800075   1.9909747   2.1690403
3-6 months     ki1119695-PROBIT           BELARUS                        Q3                   NA                2.0871454   2.0455340   2.1287568
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                1.9813248   1.9594304   2.0032192
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                2.0354563   1.7851453   2.2857673
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                2.0801289   1.7934344   2.3668235
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                1.9210531   1.8657802   1.9763259
3-6 months     ki1135781-COHORTS          INDIA                          Q4                   NA                1.9338873   1.8862025   1.9815721
3-6 months     ki1135781-COHORTS          INDIA                          Q1                   NA                1.7536383   1.6861201   1.8211564
3-6 months     ki1135781-COHORTS          INDIA                          Q2                   NA                1.9438499   1.8678361   2.0198636
3-6 months     ki1135781-COHORTS          INDIA                          Q3                   NA                1.8649117   1.8227933   1.9070301
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                1.9484544   1.9168893   1.9800195
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                1.9045708   1.8889679   1.9201736
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                1.9242914   1.9000077   1.9485751
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                1.9291257   1.9083618   1.9498897
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                1.9659417   1.7671769   2.1647066
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                1.8979227   1.8544962   1.9413493
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                1.8391850   1.7304079   1.9479622
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                1.8924332   1.8160423   1.9688241
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                1.1474178   1.0921612   1.2026744
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                1.0986184   1.0406810   1.1565558
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.9385587   0.7210458   1.1560715
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                1.1018442   1.0463519   1.1573364
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                1.1368603   1.0790231   1.1946976
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                1.1427606   1.0331469   1.2523743
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                1.0943492   1.0226025   1.1660959
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                1.0881118   1.0117023   1.1645214
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   NA                1.2225579   1.1670751   1.2780406
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   NA                1.2051941   1.1010256   1.3093625
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   NA                1.2180337   1.1243543   1.3117130
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   NA                1.1899958   1.0308112   1.3491804
6-12 months    ki0047075b-MAL-ED          PERU                           Q4                   NA                1.2463399   1.1927318   1.2999480
6-12 months    ki0047075b-MAL-ED          PERU                           Q1                   NA                1.2215655   1.1374864   1.3056447
6-12 months    ki0047075b-MAL-ED          PERU                           Q2                   NA                1.1556796   1.0878646   1.2234945
6-12 months    ki0047075b-MAL-ED          PERU                           Q3                   NA                1.1141151   0.9192650   1.3089653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                1.1952664   1.0931879   1.2973449
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                1.0836225   0.9305740   1.2366710
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                1.1793890   1.0522613   1.3065166
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                1.1704445   1.0254392   1.3154497
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.8536468   0.6055104   1.1017833
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.9450757   0.8462597   1.0438917
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.9960156   0.8887639   1.1032674
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                1.0186337   0.9690191   1.0682483
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                1.1138565   1.0926920   1.1350210
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                1.0545200   0.9948492   1.1141909
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                1.0702267   1.0371085   1.1033449
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                1.1512290   1.1255954   1.1768626
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                0.8183492   0.7529716   0.8837268
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                1.0255052   0.8985831   1.1524272
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                0.9663422   0.8298756   1.1028087
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                1.0588216   0.9148309   1.2028123
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                1.3475025   1.2434129   1.4515922
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                1.1390692   1.1149320   1.1632064
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                1.1756283   1.1471201   1.2041365
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                1.2470103   1.2028325   1.2911880
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                1.2580381   1.2225358   1.2935404
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                1.1947701   1.1588513   1.2306890
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                1.1932612   1.1630289   1.2234935
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                1.2612513   1.2251939   1.2973087
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                1.2013567   1.1621990   1.2405145
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                1.1652428   1.1351733   1.1953123
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                1.1649037   1.1128707   1.2169367
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                1.1329640   1.0882236   1.1777044
6-12 months    ki1119695-PROBIT           BELARUS                        Q4                   NA                1.4577919   1.4277919   1.4877919
6-12 months    ki1119695-PROBIT           BELARUS                        Q1                   NA                1.5473467   1.2583596   1.8363338
6-12 months    ki1119695-PROBIT           BELARUS                        Q2                   NA                1.5273681   1.4636112   1.5911249
6-12 months    ki1119695-PROBIT           BELARUS                        Q3                   NA                1.4699048   1.4287246   1.5110850
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                1.1998292   1.1877852   1.2118732
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                1.0668966   0.9573604   1.1764329
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                1.1091409   0.9777124   1.2405695
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                1.1943758   1.1652012   1.2235504
6-12 months    ki1135781-COHORTS          INDIA                          Q4                   NA                1.1566424   1.1255830   1.1877017
6-12 months    ki1135781-COHORTS          INDIA                          Q1                   NA                1.0484122   1.0054929   1.0913315
6-12 months    ki1135781-COHORTS          INDIA                          Q2                   NA                1.0507967   1.0035972   1.0979962
6-12 months    ki1135781-COHORTS          INDIA                          Q3                   NA                1.1049742   1.0771463   1.1328021
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q4                   NA                1.1066297   1.0831078   1.1301515
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q1                   NA                1.0462257   1.0195373   1.0729140
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q2                   NA                0.9995558   0.9509318   1.0481798
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q3                   NA                1.0613847   1.0428877   1.0798816
6-12 months    ki1148112-LCNI-5           MALAWI                         Q4                   NA                1.3592040   1.2702848   1.4481231
6-12 months    ki1148112-LCNI-5           MALAWI                         Q1                   NA                1.2831994   1.2426302   1.3237687
6-12 months    ki1148112-LCNI-5           MALAWI                         Q2                   NA                1.2776638   1.2329402   1.3223874
6-12 months    ki1148112-LCNI-5           MALAWI                         Q3                   NA                1.2397731   1.1780044   1.3015418
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                1.1449075   1.1250600   1.1647550
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                1.0890068   1.0798265   1.0981872
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                1.1148389   1.0991583   1.1305195
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                1.1172417   1.1043359   1.1301476
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                1.1616424   1.0509528   1.2723321
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                1.1992714   1.1812702   1.2172727
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                1.2166628   1.1788594   1.2544661
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                1.2124620   1.1796199   1.2453040
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                0.8601996   0.8261520   0.8942471
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                0.8244639   0.7832524   0.8656755
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.9093887   0.8767531   0.9420244
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                0.8331406   0.7988647   0.8674166
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.8831410   0.8384599   0.9278221
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.8910514   0.8342185   0.9478843
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.8608915   0.8150538   0.9067292
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.8694836   0.8228316   0.9161357
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   NA                0.8965133   0.8533783   0.9396484
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   NA                0.8035325   0.7558418   0.8512231
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   NA                0.8435278   0.8014685   0.8855871
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   NA                0.8637717   0.7996694   0.9278740
12-24 months   ki0047075b-MAL-ED          PERU                           Q4                   NA                0.8283312   0.7932441   0.8634184
12-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                0.8551378   0.8001048   0.9101707
12-24 months   ki0047075b-MAL-ED          PERU                           Q2                   NA                0.8632015   0.8261994   0.9002035
12-24 months   ki0047075b-MAL-ED          PERU                           Q3                   NA                0.7790504   0.6949786   0.8631222
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                0.8992681   0.8411942   0.9573420
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                0.8195406   0.7406069   0.8984743
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                0.8794359   0.8218067   0.9370652
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                0.8276981   0.7352076   0.9201885
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.6965533   0.5682460   0.8248607
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.7388149   0.6853983   0.7922314
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.7686334   0.7092684   0.8279984
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.7876266   0.7546924   0.8205608
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.9933691   0.9200781   1.0666602
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.8333235   0.8157862   0.8508609
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.8704282   0.8514617   0.8893947
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.8825374   0.8527961   0.9122787
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.8906944   0.8691464   0.9122423
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.8374014   0.8105724   0.8642305
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.8592413   0.8371868   0.8812958
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.9046129   0.8814695   0.9277564
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                0.8681185   0.8346431   0.9015938
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                0.8338421   0.8115697   0.8561145
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                0.8170820   0.7759937   0.8581703
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                0.8202722   0.7852095   0.8553349
12-24 months   ki1135781-COHORTS          INDIA                          Q4                   NA                0.8730504   0.8550421   0.8910587
12-24 months   ki1135781-COHORTS          INDIA                          Q1                   NA                0.7789548   0.7553092   0.8026004
12-24 months   ki1135781-COHORTS          INDIA                          Q2                   NA                0.7881594   0.7633822   0.8129366
12-24 months   ki1135781-COHORTS          INDIA                          Q3                   NA                0.8276877   0.8126170   0.8427584
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                   NA                0.7686334   0.7551727   0.7820941
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                   NA                0.6682094   0.6524637   0.6839550
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                   NA                0.6802187   0.6533767   0.7070606
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                   NA                0.6894326   0.6780452   0.7008199
12-24 months   ki1148112-LCNI-5           MALAWI                         Q4                   NA                0.8318405   0.7578400   0.9058409
12-24 months   ki1148112-LCNI-5           MALAWI                         Q1                   NA                0.8512408   0.8250159   0.8774656
12-24 months   ki1148112-LCNI-5           MALAWI                         Q2                   NA                0.8364670   0.8096875   0.8632466
12-24 months   ki1148112-LCNI-5           MALAWI                         Q3                   NA                0.8249939   0.7843220   0.8656659
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                0.8308952   0.8135716   0.8482188
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                0.7859899   0.7789525   0.7930273
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                0.7978987   0.7864273   0.8093701
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                0.8040264   0.7923544   0.8156983
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.8354584   0.7891287   0.8817881
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.8513745   0.8428039   0.8599451
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.8446046   0.8232659   0.8659433
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.8518896   0.8362134   0.8675658


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0687020   -0.2675431    0.1301392
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                -0.3981582   -0.7533972   -0.0429192
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.1239356   -0.3159574    0.0680863
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q4                -0.2578351   -0.5426069    0.0269366
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q4                 0.0277968   -0.1945178    0.2501115
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q4                 0.0887690   -0.1915082    0.3690462
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                 0.0509363   -0.2683179    0.3701905
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                 0.0653200   -0.2260590    0.3566989
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                 0.2174428   -0.5547951    0.9896807
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   Q4                -0.0174345   -0.1996596    0.1647906
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   Q4                 0.0191424   -0.1473899    0.1856748
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   Q4                 0.3706230    0.1256453    0.6156007
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                 0.2370007   -0.1468142    0.6208156
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.2304489   -0.6019742    0.1410764
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.2324490   -0.6972072    0.2323092
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.1066002   -0.3665661    0.5797665
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                -0.0083690   -0.4905029    0.4737649
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0931040   -0.3577998    0.5440077
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.2448049   -0.3344218   -0.1551879
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.1398314   -0.2248429   -0.0548199
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                -0.0714349   -0.1391444   -0.0037254
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.3530221   -0.6529599   -0.0530842
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.2955387   -0.5963807    0.0053032
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.2445139   -0.5586394    0.0696115
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                 0.0166960   -0.0945937    0.1279857
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0228587   -0.1248460    0.0791286
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                -0.0465532   -0.1492515    0.0561451
0-3 months     ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Q1                   Q4                -0.0732493   -0.4219536    0.2754550
0-3 months     ki1119695-PROBIT           BELARUS                        Q2                   Q4                -0.0206465   -0.1300005    0.0887074
0-3 months     ki1119695-PROBIT           BELARUS                        Q3                   Q4                -0.0456385   -0.0986108    0.0073337
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                -0.1351011   -0.4680857    0.1978834
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                -0.0493355   -0.3112682    0.2125972
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                -0.0429904   -0.1056095    0.0196286
0-3 months     ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.2562097   -0.3508233   -0.1615962
0-3 months     ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.0426027   -0.1438332    0.0586278
0-3 months     ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.1123440   -0.1905760   -0.0341120
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.1024179   -0.1323795   -0.0724564
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0669213   -0.1019765   -0.0318661
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0542876   -0.0881369   -0.0204382
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                -0.1173702   -0.5463679    0.3116274
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                -0.1374560   -0.5968265    0.3219146
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                -0.1236959   -0.5582133    0.3108215
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.1984050   -0.3423829   -0.0544272
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                 0.0449684   -0.2945813    0.3845181
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.1382131   -0.2965877    0.0201616
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.1563862   -0.0627931    0.3755654
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0409880   -0.2408304    0.1588545
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0749159   -0.3117250    0.1618933
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.1288447   -0.3404220    0.0827326
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                 0.0497792   -0.1942482    0.2938066
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.3963355   -0.7170563   -0.0756146
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   Q4                -0.0212936   -0.2153159    0.1727287
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   Q4                -0.0035321   -0.1659359    0.1588718
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   Q4                 0.1019739   -0.3271939    0.5311416
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.0783298   -0.4650206    0.3083611
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.1544484   -0.4544252    0.1455284
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                 0.2015752   -0.1920791    0.5952296
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.2692856   -0.0287920    0.5673631
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.1892632   -0.1141852    0.4927116
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.2209916   -0.0418843    0.4838674
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.1052219   -0.2170276    0.0065837
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.0584716   -0.1208478    0.0039046
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                 0.0158558   -0.1127828    0.1444944
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.1773018   -0.3489207   -0.0056830
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.1626546   -0.3354279    0.0101187
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.1657812   -0.3634579    0.0318955
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0116656   -0.1123422    0.0890111
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                 0.0103555   -0.0885046    0.1092156
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0540821   -0.0451230    0.1532873
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0751644   -0.3197138    0.4700426
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0151486   -0.1087627    0.1390599
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.1012985   -0.1087907    0.3113877
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                -0.0104767   -0.1096952    0.0887418
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                -0.0139631   -0.1393999    0.1114737
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0636335   -0.1836016    0.0563346
3-6 months     ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Q1                   Q4                -0.0969648   -0.2655267    0.0715972
3-6 months     ki1119695-PROBIT           BELARUS                        Q2                   Q4                -0.0437425   -0.1258943    0.0384094
3-6 months     ki1119695-PROBIT           BELARUS                        Q3                   Q4                -0.0366046   -0.0674970   -0.0057122
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                 0.0541314   -0.1971353    0.3053982
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                 0.0988041   -0.1887252    0.3863334
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                -0.0602717   -0.1197230   -0.0008205
3-6 months     ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.1802490   -0.2629082   -0.0975899
3-6 months     ki1135781-COHORTS          INDIA                          Q2                   Q4                 0.0099626   -0.0797700    0.0996951
3-6 months     ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0689756   -0.1325980   -0.0053533
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0438836   -0.0793017   -0.0084656
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0241630   -0.0641123    0.0157864
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0193287   -0.0561737    0.0175164
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                -0.0680190   -0.2705681    0.1345301
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                -0.1267567   -0.3489948    0.0954814
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                -0.0735086   -0.2796788    0.1326616
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0487994   -0.1288621    0.0312633
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                -0.2088591   -0.4332809    0.0155627
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.0455736   -0.1238851    0.0327378
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.0059003   -0.1180364    0.1298370
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0425112   -0.1346672    0.0496449
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0487485   -0.1445794    0.0470824
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.0173638   -0.1353867    0.1006591
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                -0.0045242   -0.1134010    0.1043526
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.0325620   -0.2011387    0.1360146
6-12 months    ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Q1                   Q4                -0.0247744   -0.1244896    0.0749409
6-12 months    ki0047075b-MAL-ED          PERU                           Q2                   Q4                -0.0906603   -0.1771051   -0.0042155
6-12 months    ki0047075b-MAL-ED          PERU                           Q3                   Q4                -0.1322248   -0.3343149    0.0698653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.1116439   -0.2956109    0.0723231
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.0158774   -0.1789156    0.1471608
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.0248219   -0.2021537    0.1525098
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0914289   -0.1756597    0.3585175
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.1423688   -0.1279544    0.4126920
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.1649869   -0.0880611    0.4180349
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.0593365   -0.1303745    0.0117016
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.0436298   -0.0857887   -0.0014708
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                 0.0373725   -0.0003265    0.0750715
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q4                 0.2071560    0.0643854    0.3499266
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q4                 0.1479930   -0.0033257    0.2993117
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q4                 0.2404724    0.0823347    0.3986102
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.2084333   -0.3152849   -0.1015817
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.1718742   -0.2797972   -0.0639512
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.1004922   -0.2135689    0.0125844
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0632680   -0.1137712   -0.0127648
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0647769   -0.1114074   -0.0181464
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0032132   -0.0473887    0.0538151
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                -0.0361140   -0.0854851    0.0132572
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                -0.0364530   -0.1015742    0.0286681
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0683927   -0.1278489   -0.0089366
6-12 months    ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Q1                   Q4                 0.0895548   -0.1911411    0.3702507
6-12 months    ki1119695-PROBIT           BELARUS                        Q2                   Q4                 0.0695762    0.0170603    0.1220921
6-12 months    ki1119695-PROBIT           BELARUS                        Q3                   Q4                 0.0121129   -0.0185255    0.0427513
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                -0.1329326   -0.2431290   -0.0227362
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                -0.0906883   -0.2226675    0.0412910
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                -0.0054534   -0.0370162    0.0261095
6-12 months    ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.1082301   -0.1612089   -0.0552514
6-12 months    ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.1058457   -0.1623477   -0.0493437
6-12 months    ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0516682   -0.0933704   -0.0099660
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q1                   Q4                -0.0604040   -0.0959785   -0.0248294
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q2                   Q4                -0.1070738   -0.1610884   -0.0530593
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q3                   Q4                -0.0452450   -0.0751685   -0.0153215
6-12 months    ki1148112-LCNI-5           MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Q1                   Q4                -0.0760045   -0.1737413    0.0217322
6-12 months    ki1148112-LCNI-5           MALAWI                         Q2                   Q4                -0.0815401   -0.1810731    0.0179928
6-12 months    ki1148112-LCNI-5           MALAWI                         Q3                   Q4                -0.1194309   -0.2276990   -0.0111628
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0559007   -0.0769914   -0.0348100
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0300686   -0.0554893   -0.0046479
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0276658   -0.0510106   -0.0043209
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                 0.0376290   -0.0746662    0.1499242
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                 0.0550203   -0.0629446    0.1729853
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                 0.0508196   -0.0646864    0.1663255
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0357356   -0.0891924    0.0177212
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                 0.0491892    0.0020265    0.0963519
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.0270589   -0.0753712    0.0212533
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.0079104   -0.0643833    0.0802041
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0222495   -0.0862612    0.0417622
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0136574   -0.0782547    0.0509400
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.0929809   -0.1572851   -0.0286766
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                -0.0529855   -0.1132318    0.0072608
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.0327416   -0.1100057    0.0445224
12-24 months   ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Q1                   Q4                 0.0268066   -0.0384601    0.0920732
12-24 months   ki0047075b-MAL-ED          PERU                           Q2                   Q4                 0.0348703   -0.0161225    0.0858630
12-24 months   ki0047075b-MAL-ED          PERU                           Q3                   Q4                -0.0492808   -0.1403806    0.0418190
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.0797275   -0.1777229    0.0182680
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.0198322   -0.1016473    0.0619829
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.0715700   -0.1807811    0.0376411
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0422615   -0.0967208    0.1812439
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0720801   -0.0692952    0.2134554
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0910733   -0.0413934    0.2235400
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.1600456   -0.2354057   -0.0846855
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.1229409   -0.1986464   -0.0472355
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.1108317   -0.1899274   -0.0317360
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0532930   -0.0877039   -0.0188820
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0314531   -0.0622868   -0.0006194
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0139186   -0.0177031    0.0455403
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                -0.0342764   -0.0744841    0.0059313
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                -0.0510365   -0.1040350    0.0019621
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0478463   -0.0963230    0.0006304
12-24 months   ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.0940956   -0.1238178   -0.0643733
12-24 months   ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.0848909   -0.1155211   -0.0542607
12-24 months   ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0453627   -0.0688451   -0.0218802
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                   Q4                -0.1004240   -0.1211391   -0.0797089
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                   Q4                -0.0884147   -0.1184427   -0.0583867
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                   Q4                -0.0792008   -0.0968321   -0.0615696
12-24 months   ki1148112-LCNI-5           MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Q1                   Q4                 0.0194003   -0.0591096    0.0979102
12-24 months   ki1148112-LCNI-5           MALAWI                         Q2                   Q4                 0.0046266   -0.0740703    0.0833235
12-24 months   ki1148112-LCNI-5           MALAWI                         Q3                   Q4                -0.0068465   -0.0912875    0.0775944
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0449053   -0.0631805   -0.0266302
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0329965   -0.0542176   -0.0117755
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0268688   -0.0476730   -0.0060646
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                 0.0159161   -0.0313792    0.0632113
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                 0.0091462   -0.0414000    0.0596924
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                 0.0164312   -0.0320230    0.0648854
