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
![](/tmp/bde559e0-508c-49d8-a002-61ff4e7f5a28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bde559e0-508c-49d8-a002-61ff4e7f5a28/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0716571   -0.1285338   -0.0147804
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.1738048   -0.2432910   -0.1043187
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.6438634   -0.7561722   -0.5315547
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.1392332   -0.2060564   -0.0724099
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0069095   -0.0784971    0.0646780
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.1070211   -0.2200732    0.0060309
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                 0.0155697   -0.0730220    0.1041615
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                 0.0403171   -0.0782767    0.1589109
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                 0.0734241   -0.0218367    0.1686849
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                 0.1160441    0.0279628    0.2041254
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                 0.0629455   -0.0111044    0.1369954
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                 0.1926493   -0.1215179    0.5068165
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                -0.1508951   -0.1905771   -0.1112132
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.1351465   -0.1730683   -0.0972246
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                -0.1211691   -0.1568613   -0.0854769
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                 0.2556335    0.2262856    0.2849815
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                -0.1523919   -0.2466480   -0.0581359
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                -0.1496770   -0.2349022   -0.0644518
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                -0.2925577   -0.3725705   -0.2125449
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                -0.4279804   -0.5399226   -0.3160382
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1038787   -0.3190809    0.1113234
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0037578   -0.0938128    0.0862973
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0655252   -0.1651273    0.0340770
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0327089   -0.0887029    0.0232851
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                 0.0521537    0.0306980    0.0736095
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                -0.0367026   -0.0524862   -0.0209189
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                -0.0080578   -0.0325625    0.0164469
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                 0.0330749    0.0088099    0.0573399
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                 0.4426832    0.4237700    0.4615963
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0804798   -0.1021200   -0.0588396
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0529636   -0.0759283   -0.0299988
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0578579   -0.0808557   -0.0348601
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.1029830   -0.1349381   -0.0710278
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.1084316   -0.1458737   -0.0709894
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                -0.1141612   -0.1468455   -0.0814770
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.1164561   -0.1494841   -0.0834281
0-3 months     ki1119695-PROBIT           BELARUS                        Q4                   NA                -0.4221301   -0.4742448   -0.3700155
0-3 months     ki1119695-PROBIT           BELARUS                        Q1                   NA                -0.5441887   -0.5630876   -0.5252898
0-3 months     ki1119695-PROBIT           BELARUS                        Q2                   NA                -0.4881306   -0.5229355   -0.4533257
0-3 months     ki1119695-PROBIT           BELARUS                        Q3                   NA                -0.4409370   -0.5007224   -0.3811515
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                -0.1372857   -0.1485060   -0.1260654
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                -0.1483705   -0.1761691   -0.1205719
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                -0.1041215   -0.1620604   -0.0461826
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                -0.1366721   -0.1608785   -0.1124658
0-3 months     ki1135781-COHORTS          INDIA                          Q4                   NA                 0.0167958   -0.0081166    0.0417082
0-3 months     ki1135781-COHORTS          INDIA                          Q1                   NA                -0.1305070   -0.1563892   -0.1046249
0-3 months     ki1135781-COHORTS          INDIA                          Q2                   NA                -0.0062121   -0.0363565    0.0239324
0-3 months     ki1135781-COHORTS          INDIA                          Q3                   NA                -0.0512297   -0.0736639   -0.0287955
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                 0.1183723    0.1091097    0.1276348
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                 0.0565333    0.0505559    0.0625107
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                 0.0669804    0.0582871    0.0756737
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                 0.0789026    0.0702953    0.0875100
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                 0.2643308    0.1983654    0.3302962
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0669020    0.0457232    0.0880808
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                 0.0440799   -0.0191765    0.1073362
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                 0.0678907    0.0317274    0.1040539
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                 0.0374692   -0.0024546    0.0773930
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0457338   -0.1032921    0.0118245
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                 0.0555216   -0.1066920    0.2177353
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0290402   -0.0906261    0.0325456
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0395121   -0.0938183    0.0147940
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.0365857   -0.0485660    0.1217373
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0592062   -0.1313365    0.0129242
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0728671   -0.1693847    0.0236505
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0319415   -0.1049359    0.0410530
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                -0.0902306   -0.1667342   -0.0137270
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0073762   -0.0991493    0.0843969
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                -0.2096142   -0.3316681   -0.0875603
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                 0.0083293   -0.0489897    0.0656483
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.0764412   -0.1439949   -0.0088874
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                -0.0283315   -0.0775586    0.0208956
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                -0.3984306   -0.5326776   -0.2641836
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                -0.1933034   -0.3024798   -0.0841269
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                -0.4142923   -0.5359276   -0.2926571
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                -0.3254880   -0.4048239   -0.2461522
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                -0.3642094   -0.4831391   -0.2452798
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.5171663   -0.5660007   -0.4683319
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0846344   -0.1513832   -0.0178855
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.1433346   -0.2111815   -0.0754876
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0815070   -0.1270980   -0.0359160
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                -0.0316324   -0.0557454   -0.0075194
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                -0.0652003   -0.0919917   -0.0384089
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                -0.0574202   -0.0741223   -0.0407180
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                -0.0182096   -0.0538581    0.0174389
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                 0.0006220   -0.0124384    0.0136824
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0487296   -0.0690718   -0.0283875
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0437218   -0.0647345   -0.0227090
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.1228974   -0.1474051   -0.0983897
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                 0.0182723   -0.0073539    0.0438986
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0055214   -0.0239040    0.0349468
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                 0.0208121   -0.0093531    0.0509772
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                 0.0375024    0.0083749    0.0666300
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.0732303   -0.1003926   -0.0460680
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1153891   -0.1313813   -0.0993969
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0864565   -0.1038857   -0.0690272
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                   NA                 0.0938745    0.0714815    0.1162675
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                -0.1634794   -0.1991719   -0.1277869
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                -0.1551858   -0.1831957   -0.1271759
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                -0.1632302   -0.2074362   -0.1190241
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                -0.1789493   -0.2172283   -0.1406702
3-6 months     ki1119695-PROBIT           BELARUS                        Q4                   NA                 0.0595863    0.0396458    0.0795267
3-6 months     ki1119695-PROBIT           BELARUS                        Q1                   NA                 0.0635198    0.0390933    0.0879462
3-6 months     ki1119695-PROBIT           BELARUS                        Q2                   NA                 0.0496079    0.0283982    0.0708176
3-6 months     ki1119695-PROBIT           BELARUS                        Q3                   NA                 0.0454396    0.0262419    0.0646373
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                 0.0004732   -0.0094337    0.0103800
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                -0.2041296   -0.2193323   -0.1889269
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                 0.2688732    0.2281723    0.3095741
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                -0.0648000   -0.0862471   -0.0433530
3-6 months     ki1135781-COHORTS          INDIA                          Q4                   NA                -0.0342128   -0.0516030   -0.0168226
3-6 months     ki1135781-COHORTS          INDIA                          Q1                   NA                -0.1032757   -0.1229684   -0.0835830
3-6 months     ki1135781-COHORTS          INDIA                          Q2                   NA                -0.0247689   -0.0484454   -0.0010924
3-6 months     ki1135781-COHORTS          INDIA                          Q3                   NA                -0.0594913   -0.0760933   -0.0428894
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                -0.0041888   -0.0157062    0.0073286
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                -0.0108082   -0.0174726   -0.0041437
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                -0.0130872   -0.0225737   -0.0036007
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                -0.0010330   -0.0097013    0.0076353
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                -0.0554554   -0.1304575    0.0195467
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0098931   -0.0292152    0.0094291
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0443220   -0.0876538   -0.0009902
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0190005   -0.0506578    0.0126568
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0742748   -0.0918818   -0.0566677
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0860178   -0.1052581   -0.0667776
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.1330749   -0.1897492   -0.0764005
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0841656   -0.1011698   -0.0671615
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0746524   -0.0982688   -0.0510360
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0739744   -0.1168825   -0.0310662
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0917222   -0.1204521   -0.0629924
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0891027   -0.1196889   -0.0585165
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0507385   -0.0698913   -0.0315856
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   NA                -0.0599801   -0.0904882   -0.0294720
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0462536   -0.0739996   -0.0185076
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   NA                -0.0564331   -0.1008050   -0.0120613
6-12 months    ki0047075b-MAL-ED          PERU                           Q4                   NA                -0.0020404   -0.0235795    0.0194988
6-12 months    ki0047075b-MAL-ED          PERU                           Q1                   NA                 0.0464453    0.0154847    0.0774059
6-12 months    ki0047075b-MAL-ED          PERU                           Q2                   NA                -0.0197083   -0.0448837    0.0054671
6-12 months    ki0047075b-MAL-ED          PERU                           Q3                   NA                 0.2275106    0.1748320    0.2801892
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                -0.0099113   -0.0499782    0.0301555
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                -0.0141917   -0.0716924    0.0433089
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                 0.0048086   -0.0417937    0.0514109
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                 0.0516063    0.0022269    0.1009857
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1530275   -0.1997145   -0.1063405
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1482565   -0.1747832   -0.1217298
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.1220874   -0.1530632   -0.0911117
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.1146284   -0.1332934   -0.0959635
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                   NA                -0.0865278   -0.0940038   -0.0790518
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                   NA                -0.0955166   -0.1113754   -0.0796578
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                   NA                -0.0971150   -0.1077155   -0.0865145
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                   NA                -0.0691550   -0.0781934   -0.0601167
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                -0.2305320   -0.2508087   -0.2102552
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                -0.1049388   -0.1531578   -0.0567199
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                -0.1354943   -0.1839811   -0.0870076
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                -0.0972659   -0.1515672   -0.0429646
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                 0.1516035    0.1413250    0.1618819
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0725803   -0.0807840   -0.0643767
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0577491   -0.0672696   -0.0482287
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                 0.0154387    0.0068418    0.0240356
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.0160566   -0.0296051   -0.0025082
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.0375622   -0.0514730   -0.0236515
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                -0.0388929   -0.0507868   -0.0269991
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.0107313   -0.0244622    0.0029996
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                -0.0520515   -0.0687492   -0.0353538
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                -0.0595855   -0.0719822   -0.0471889
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                -0.0656826   -0.0862570   -0.0451082
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                -0.0773897   -0.0950759   -0.0597035
6-12 months    ki1119695-PROBIT           BELARUS                        Q4                   NA                 0.0343065    0.0217054    0.0469075
6-12 months    ki1119695-PROBIT           BELARUS                        Q1                   NA                -0.0309996   -0.0400417   -0.0219574
6-12 months    ki1119695-PROBIT           BELARUS                        Q2                   NA                 0.0739691    0.0591675    0.0887708
6-12 months    ki1119695-PROBIT           BELARUS                        Q3                   NA                 0.0416486    0.0242563    0.0590409
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   NA                -0.0500644   -0.0549910   -0.0451377
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   NA                -0.0506518   -0.0592323   -0.0420713
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   NA                -0.1594802   -0.1753540   -0.1436063
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   NA                -0.0594611   -0.0690951   -0.0498270
6-12 months    ki1135781-COHORTS          INDIA                          Q4                   NA                -0.0776959   -0.0882815   -0.0671103
6-12 months    ki1135781-COHORTS          INDIA                          Q1                   NA                -0.1063862   -0.1170554   -0.0957169
6-12 months    ki1135781-COHORTS          INDIA                          Q2                   NA                -0.1166196   -0.1309302   -0.1023089
6-12 months    ki1135781-COHORTS          INDIA                          Q3                   NA                -0.0912597   -0.1011554   -0.0813641
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q4                   NA                -0.0875475   -0.0959781   -0.0791170
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q1                   NA                -0.1010699   -0.1103389   -0.0918009
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q2                   NA                -0.1244223   -0.1377115   -0.1111331
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q3                   NA                -0.1025534   -0.1096850   -0.0954217
6-12 months    ki1148112-LCNI-5           MALAWI                         Q4                   NA                 0.0178494   -0.0051526    0.0408515
6-12 months    ki1148112-LCNI-5           MALAWI                         Q1                   NA                -0.0036026   -0.0187394    0.0115341
6-12 months    ki1148112-LCNI-5           MALAWI                         Q2                   NA                -0.0044150   -0.0202593    0.0114294
6-12 months    ki1148112-LCNI-5           MALAWI                         Q3                   NA                -0.0227157   -0.0415509   -0.0038804
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                -0.0760604   -0.0816692   -0.0704517
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                -0.0819644   -0.0856147   -0.0783142
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                -0.0786758   -0.0840734   -0.0732782
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                -0.0765582   -0.0812143   -0.0719020
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                -0.0526836   -0.0860457   -0.0193215
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0400455   -0.0473438   -0.0327471
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0380504   -0.0506626   -0.0254383
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0336870   -0.0453184   -0.0220557
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0194011   -0.0299399   -0.0088624
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0211214   -0.0354210   -0.0068219
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                 0.0052407   -0.0146438    0.0251253
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0231796   -0.0343936   -0.0119657
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0116325   -0.0252138    0.0019488
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0088952   -0.0240122    0.0062218
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0191269   -0.0312265   -0.0070273
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0139029   -0.0292925    0.0014866
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0163987   -0.0302053   -0.0025920
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   NA                -0.0470700   -0.0657232   -0.0284169
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0275202   -0.0440657   -0.0109746
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   NA                -0.0313283   -0.0528176   -0.0098390
12-24 months   ki0047075b-MAL-ED          PERU                           Q4                   NA                -0.0211894   -0.0316454   -0.0107333
12-24 months   ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.0193657   -0.0336042   -0.0051273
12-24 months   ki0047075b-MAL-ED          PERU                           Q2                   NA                -0.0095859   -0.0210888    0.0019169
12-24 months   ki0047075b-MAL-ED          PERU                           Q3                   NA                -0.0958290   -0.1106989   -0.0809591
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   NA                -0.0142952   -0.0332570    0.0046665
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   NA                -0.0484073   -0.0724018   -0.0244128
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   NA                -0.0288676   -0.0473735   -0.0103617
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   NA                -0.0488724   -0.0803252   -0.0174196
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.0547037   -0.0981998   -0.0112076
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0495268   -0.0666755   -0.0323781
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0390568   -0.0594076   -0.0187060
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0346803   -0.0451997   -0.0241609
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0466878   -0.0491519   -0.0442237
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0198479   -0.0244905   -0.0152053
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0100508   -0.0149396   -0.0051620
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0359337   -0.0401887   -0.0316787
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.0023446   -0.0083193    0.0036300
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.0171029   -0.0234160   -0.0107899
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                -0.0098658   -0.0154762   -0.0042555
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                 0.0077148    0.0014490    0.0139806
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                   NA                -0.0120550   -0.0219740   -0.0021360
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                   NA                -0.0140377   -0.0215825   -0.0064930
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                   NA                -0.0236476   -0.0355367   -0.0117584
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                   NA                -0.0228979   -0.0334511   -0.0123447
12-24 months   ki1135781-COHORTS          INDIA                          Q4                   NA                -0.0273086   -0.0320716   -0.0225456
12-24 months   ki1135781-COHORTS          INDIA                          Q1                   NA                -0.0379881   -0.0434784   -0.0324978
12-24 months   ki1135781-COHORTS          INDIA                          Q2                   NA                -0.0446051   -0.0507187   -0.0384914
12-24 months   ki1135781-COHORTS          INDIA                          Q3                   NA                -0.0342386   -0.0385918   -0.0298853
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                   NA                -0.0405017   -0.0444828   -0.0365206
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                   NA                -0.0705059   -0.0747500   -0.0662618
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                   NA                -0.0677186   -0.0731251   -0.0623122
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                   NA                -0.0646001   -0.0681307   -0.0610695
12-24 months   ki1148112-LCNI-5           MALAWI                         Q4                   NA                -0.0306986   -0.0493417   -0.0120555
12-24 months   ki1148112-LCNI-5           MALAWI                         Q1                   NA                -0.0104379   -0.0191636   -0.0017121
12-24 months   ki1148112-LCNI-5           MALAWI                         Q2                   NA                -0.0135044   -0.0215333   -0.0054755
12-24 months   ki1148112-LCNI-5           MALAWI                         Q3                   NA                -0.0157850   -0.0285491   -0.0030208
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                   NA                -0.0144154   -0.0184146   -0.0104163
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                   NA                -0.0197477   -0.0219518   -0.0175436
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                   NA                -0.0187826   -0.0220078   -0.0155574
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                   NA                -0.0182155   -0.0213811   -0.0150499
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                -0.0433932   -0.0499290   -0.0368575
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0135370   -0.0164139   -0.0106601
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0177641   -0.0231807   -0.0123475
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0153317   -0.0201267   -0.0105367


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0145359   -0.0558285    0.0267568
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0074102   -0.0562743    0.0414539
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0920870    0.0359791    0.1481950
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1640316   -0.2004678   -0.1275955
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0710012   -0.1451419    0.0031396
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0340979   -0.0766349    0.0084390
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0124966   -0.0032603    0.0282535
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4373735   -0.4964330   -0.3783141
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1407172   -0.1512982   -0.1301361
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0686752   -0.0843829   -0.0529675
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0703817    0.0653899    0.0753735
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0670403    0.0481864    0.0858943
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0037366   -0.0345660    0.0270929
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0411872   -0.0791877   -0.0031868
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0531267   -0.0985458   -0.0077076
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0368444    0.0016620    0.0720269
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321904   -0.0931294    0.0287487
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0718346   -0.1083792   -0.0352901
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0168853   -0.0357401    0.0019694
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855565   -0.1021743   -0.0689388
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1660301   -0.1845910   -0.1474692
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0475202    0.0282208    0.0668197
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0013688   -0.0108519    0.0081144
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0581890   -0.0708287   -0.0455492
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0040204   -0.0089971    0.0009563
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0114011   -0.0281285    0.0053262
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0839210   -0.0980120   -0.0698300
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0830422   -0.0990315   -0.0670530
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0514939   -0.0695948   -0.0333930
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0377406   -0.0539224   -0.0215589
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0640548   -0.0912245   -0.0368851
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1286743   -0.1461022   -0.1112465
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0858013   -0.0900320   -0.0815706
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0613442   -0.0695826   -0.0531058
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0414458    0.0250263    0.0578652
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0497056   -0.0544193   -0.0449919
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0892983   -0.0966919   -0.0819047
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1004258   -0.1056343   -0.0952173
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0071514   -0.0181345    0.0038317
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0750265   -0.0779373   -0.0721157
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0384776   -0.0446899   -0.0322653
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0201350   -0.0267873   -0.0134826
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0140412   -0.0213272   -0.0067551
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0280287   -0.0370734   -0.0189840
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0105779   -0.0184396   -0.0027162
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0179909   -0.0295422   -0.0064396
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0390385   -0.0474129   -0.0306641
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0345516   -0.0377982   -0.0313051
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0580661   -0.0606531   -0.0554790
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0158553   -0.0216714   -0.0100392
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187685   -0.0206314   -0.0169055
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0139919   -0.0164850   -0.0114988


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.1021477   -0.1918576   -0.0124378
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                -0.5722063   -0.6977462   -0.4466665
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.0675761   -0.1544516    0.0192995
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q4                -0.1001116   -0.2332582    0.0330350
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q4                 0.0224793   -0.0902297    0.1351882
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q4                 0.0472266   -0.0907830    0.1852362
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                 0.0426200   -0.0854707    0.1707107
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                -0.0104786   -0.1275766    0.1066194
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                 0.1192252   -0.2061263    0.4445767
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   Q4                 0.0157487   -0.0209843    0.0524816
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   Q4                 0.0297260   -0.0044190    0.0638711
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   Q4                 0.4065286    0.3686356    0.4444217
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                 0.0027149   -0.1087040    0.1141339
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.1401657   -0.2493832   -0.0309483
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.2755885   -0.4084010   -0.1427760
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.1001210   -0.1329866    0.3332285
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0383536   -0.1986071    0.2753143
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0711698   -0.1510177    0.2933574
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.0888563   -0.1169808   -0.0607318
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.0602115   -0.0877069   -0.0327162
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                -0.0190788   -0.0336549   -0.0045028
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.5231629   -0.5519402   -0.4943857
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.4956467   -0.5255804   -0.4657131
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.5005410   -0.5304489   -0.4706332
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0054486   -0.0546747    0.0437775
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0111783   -0.0568817    0.0345251
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                -0.0134732   -0.0594228    0.0324765
0-3 months     ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Q1                   Q4                -0.1220586   -0.1652650   -0.0788521
0-3 months     ki1119695-PROBIT           BELARUS                        Q2                   Q4                -0.0660004   -0.1052652   -0.0267357
0-3 months     ki1119695-PROBIT           BELARUS                        Q3                   Q4                -0.0188068   -0.0435964    0.0059828
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                -0.0110848   -0.0408920    0.0187224
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                 0.0331642   -0.0257539    0.0920823
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                 0.0006136   -0.0257790    0.0270061
0-3 months     ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.1473028   -0.1832585   -0.1113471
0-3 months     ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.0230079   -0.0621676    0.0161518
0-3 months     ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0680255   -0.1015955   -0.0344555
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0618390   -0.0720318   -0.0516462
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0513919   -0.0636441   -0.0391397
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0394696   -0.0510252   -0.0279141
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                -0.1974288   -0.2681722   -0.1266855
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                -0.2202509   -0.3111884   -0.1293134
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                -0.1964401   -0.2716988   -0.1211814
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0832030   -0.1532507   -0.0131553
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                 0.0180524   -0.1490020    0.1851068
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.0665094   -0.1399023    0.0068835
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.0760978   -0.0248971    0.1770927
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0196940   -0.1099822    0.0705941
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0333549   -0.1441015    0.0773917
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.0582892   -0.1640294    0.0474510
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                 0.0245652   -0.0926972    0.1418277
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.1776728   -0.3198886   -0.0354570
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   Q4                -0.0847704   -0.1732945    0.0037537
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   Q4                -0.0366608   -0.1122574    0.0389358
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   Q4                -0.4067599   -0.5528861   -0.2606336
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.2209889   -0.3868365   -0.0551414
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.1321846   -0.2690117    0.0046424
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.1709061   -0.3353532   -0.0064589
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.4325319    0.3499984    0.5150654
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.3738317    0.2904552    0.4572082
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.4356592    0.3687695    0.5025490
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.0335679   -0.0717945    0.0046587
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.0257878   -0.0492177   -0.0023579
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                 0.0134228   -0.0352502    0.0620958
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.0493517   -0.0731840   -0.0255193
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.0443438   -0.0686225   -0.0200651
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.1235194   -0.1511485   -0.0958903
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0127510   -0.0499570    0.0244551
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                 0.0025397   -0.0349747    0.0400541
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0192301   -0.0172786    0.0557387
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                -0.0421587   -0.0731389   -0.0111786
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                -0.0132261   -0.0443857    0.0179334
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.1671048    0.1324631    0.2017466
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                 0.0082936   -0.0369545    0.0535417
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                 0.0002492   -0.0564040    0.0569025
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0154699   -0.0676824    0.0367427
3-6 months     ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Q1                   Q4                 0.0039335   -0.0219871    0.0298541
3-6 months     ki1119695-PROBIT           BELARUS                        Q2                   Q4                -0.0099784   -0.0338777    0.0139210
3-6 months     ki1119695-PROBIT           BELARUS                        Q3                   Q4                -0.0141467   -0.0260855   -0.0022079
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                -0.2046027   -0.2224974   -0.1867080
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                 0.2684001    0.2266644    0.3101357
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                -0.0652732   -0.0886076   -0.0419387
3-6 months     ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.0690629   -0.0945030   -0.0436229
3-6 months     ki1135781-COHORTS          INDIA                          Q2                   Q4                 0.0094439   -0.0190651    0.0379529
3-6 months     ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0252785   -0.0482324   -0.0023246
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0066194   -0.0197272    0.0064884
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0088984   -0.0237566    0.0059599
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                 0.0031558   -0.0107356    0.0170473
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                 0.0455624   -0.0310114    0.1221362
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                 0.0111334   -0.0734227    0.0956896
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                 0.0364549   -0.0415927    0.1145025
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0117431   -0.0344961    0.0110100
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                -0.0588001   -0.1162761   -0.0013241
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.0098909   -0.0297503    0.0099685
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.0006780   -0.0475828    0.0489389
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0170698   -0.0534647    0.0193250
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0144503   -0.0523510    0.0234504
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.0092416   -0.0404658    0.0219826
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                 0.0044849   -0.0234620    0.0324317
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.0056946   -0.0511073    0.0397180
6-12 months    ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Q1                   Q4                 0.0484857    0.0118217    0.0851497
6-12 months    ki0047075b-MAL-ED          PERU                           Q2                   Q4                -0.0176679   -0.0495868    0.0142509
6-12 months    ki0047075b-MAL-ED          PERU                           Q3                   Q4                 0.2295510    0.1731394    0.2859625
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.0042804   -0.0744976    0.0659368
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                 0.0147200   -0.0469291    0.0763691
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                 0.0615177   -0.0021333    0.1251687
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0047710   -0.0463914    0.0559333
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0309400   -0.0227672    0.0846473
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0383990   -0.0098342    0.0866323
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                   Q4                -0.0089888   -0.0287155    0.0107380
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                   Q4                -0.0105872   -0.0249719    0.0037975
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                   Q4                 0.0173728    0.0058643    0.0288812
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q4                 0.1255931    0.0737809    0.1774053
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q4                 0.0950376    0.0431641    0.1469111
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q4                 0.1332661    0.0758031    0.1907290
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                -0.2241838   -0.2373515   -0.2110161
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                -0.2093526   -0.2233166   -0.1953886
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                -0.1361648   -0.1497171   -0.1226125
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0215056   -0.0409253   -0.0020859
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0228363   -0.0408674   -0.0048052
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0053253   -0.0139772    0.0246279
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                -0.0075340   -0.0283188    0.0132508
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                -0.0136311   -0.0400442    0.0127820
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0253382   -0.0496267   -0.0010496
6-12 months    ki1119695-PROBIT           BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Q1                   Q4                -0.0653060   -0.0773095   -0.0533026
6-12 months    ki1119695-PROBIT           BELARUS                        Q2                   Q4                 0.0396627    0.0275157    0.0518097
6-12 months    ki1119695-PROBIT           BELARUS                        Q3                   Q4                 0.0073421   -0.0047948    0.0194791
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                   Q4                -0.0005875   -0.0103460    0.0091710
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                   Q4                -0.1094158   -0.1259598   -0.0928718
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                   Q4                -0.0093967   -0.0200508    0.0012574
6-12 months    ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.0286902   -0.0431871   -0.0141934
6-12 months    ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.0389236   -0.0563408   -0.0215065
6-12 months    ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0135638   -0.0275048    0.0003771
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q1                   Q4                -0.0135224   -0.0258467   -0.0011980
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q2                   Q4                -0.0368748   -0.0524883   -0.0212613
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q3                   Q4                -0.0150058   -0.0258460   -0.0041657
6-12 months    ki1148112-LCNI-5           MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Q1                   Q4                -0.0214521   -0.0482283    0.0053241
6-12 months    ki1148112-LCNI-5           MALAWI                         Q2                   Q4                -0.0222644   -0.0493604    0.0048315
6-12 months    ki1148112-LCNI-5           MALAWI                         Q3                   Q4                -0.0405651   -0.0697403   -0.0113899
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0059040   -0.0122177    0.0004096
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0026154   -0.0104222    0.0051914
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0004977   -0.0075512    0.0065557
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                 0.0126381   -0.0214276    0.0467039
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                 0.0146332   -0.0212180    0.0504843
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                 0.0189966   -0.0164574    0.0544505
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q4                -0.0017203   -0.0194838    0.0160432
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q4                 0.0246419    0.0021372    0.0471465
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q4                -0.0037785   -0.0191674    0.0116104
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q4                 0.0027373   -0.0172668    0.0227413
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q4                -0.0074944   -0.0254658    0.0104769
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q4                -0.0022705   -0.0225880    0.0180471
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   Q4                -0.0306714   -0.0538733   -0.0074694
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   Q4                -0.0111215   -0.0326693    0.0104263
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   Q4                -0.0149296   -0.0404680    0.0106087
12-24 months   ki0047075b-MAL-ED          PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Q1                   Q4                 0.0018236   -0.0153306    0.0189778
12-24 months   ki0047075b-MAL-ED          PERU                           Q2                   Q4                 0.0116035   -0.0035851    0.0267920
12-24 months   ki0047075b-MAL-ED          PERU                           Q3                   Q4                -0.0746396   -0.0925752   -0.0567040
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                   Q4                -0.0341121   -0.0647455   -0.0034786
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                   Q4                -0.0145724   -0.0411145    0.0119698
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                   Q4                -0.0345772   -0.0713048    0.0021504
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0051769   -0.0414447    0.0517985
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0156469   -0.0322970    0.0635908
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0200234   -0.0245890    0.0646358
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q4                 0.0268399    0.0216852    0.0319945
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q4                 0.0366369    0.0312384    0.0420355
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q4                 0.0107541    0.0059927    0.0155154
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q4                -0.0147583   -0.0232719   -0.0062447
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q4                -0.0075212   -0.0154946    0.0004522
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q4                 0.0100594    0.0015816    0.0185372
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                   Q4                -0.0019827   -0.0143879    0.0104225
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                   Q4                -0.0115925   -0.0270989    0.0039138
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                   Q4                -0.0108429   -0.0253760    0.0036903
12-24 months   ki1135781-COHORTS          INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Q1                   Q4                -0.0106795   -0.0177320   -0.0036269
12-24 months   ki1135781-COHORTS          INDIA                          Q2                   Q4                -0.0172965   -0.0248818   -0.0097111
12-24 months   ki1135781-COHORTS          INDIA                          Q3                   Q4                -0.0069300   -0.0131591   -0.0007008
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                   Q4                -0.0300042   -0.0357010   -0.0243073
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                   Q4                -0.0272169   -0.0338364   -0.0205974
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                   Q4                -0.0240984   -0.0292922   -0.0189045
12-24 months   ki1148112-LCNI-5           MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Q1                   Q4                 0.0202607   -0.0003204    0.0408417
12-24 months   ki1148112-LCNI-5           MALAWI                         Q2                   Q4                 0.0171941   -0.0031031    0.0374914
12-24 months   ki1148112-LCNI-5           MALAWI                         Q3                   Q4                 0.0149136   -0.0076829    0.0375101
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                   Q4                -0.0053323   -0.0097284   -0.0009361
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                   Q4                -0.0043672   -0.0095624    0.0008281
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                   Q4                -0.0038001   -0.0088015    0.0012013
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q4                 0.0298562    0.0227516    0.0369608
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q4                 0.0256291    0.0172261    0.0340321
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q4                 0.0280615    0.0201128    0.0360103
