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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        feducyrs    n_cell       n
-------------  --------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q4              50     138
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q1              31     138
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q2               7     138
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q3              50     138
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q4              50     129
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q1              29     129
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q2               5     129
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q3              45     129
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q4              46     121
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q1              27     121
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q2               5     121
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q3              43     121
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q4              39     114
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q1              28     114
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q2               5     114
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q3              42     114
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q1              18      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q2              15      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q3               5      38
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q4              17     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q1             287     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q2             249     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q3              81     634
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q4              16     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q1             258     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q2             227     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q3              73     574
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q4              14     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q1             241     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q2             219     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q3              71     545
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q4              10     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q1             211     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q2             179     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q3              58     458
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q4             192     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q1             169     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q2             183     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q3             176     720
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q4             186     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q1             161     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q2             176     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q3             172     695
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q4             184     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q1             153     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q2             171     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q3             168     676
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q4             147     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q1              95     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q2             131     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q3             122     495
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q4            1890   19324
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q1            9827   19324
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q2            3553   19324
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q3            4054   19324
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q4            1400   12081
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q1            5640   12081
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q2            2244   12081
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q3            2797   12081
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q4            1075    9453
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q1            4469    9453
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q2            1723    9453
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q3            2186    9453
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q4             457    4486
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q1            2216    4486
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q2             821    4486
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q3             992    4486
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q4              15    1031
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q1             763    1031
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q2              90    1031
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q3             163    1031
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q4              20    1769
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q1            1291    1769
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q2             160    1769
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q3             298    1769
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q4              24    2046
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q1            1484    2046
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q2             186    2046
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q3             352    2046
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q4              16    1067
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q1             783    1067
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q2              99    1067
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q3             169    1067
0-3 months     ki1119695-PROBIT            BELARUS                        Q4            1893   12311
0-3 months     ki1119695-PROBIT            BELARUS                        Q1              22   12311
0-3 months     ki1119695-PROBIT            BELARUS                        Q2             271   12311
0-3 months     ki1119695-PROBIT            BELARUS                        Q3           10125   12311
3-6 months     ki1119695-PROBIT            BELARUS                        Q4            2108   12835
3-6 months     ki1119695-PROBIT            BELARUS                        Q1              21   12835
3-6 months     ki1119695-PROBIT            BELARUS                        Q2             288   12835
3-6 months     ki1119695-PROBIT            BELARUS                        Q3           10418   12835
6-12 months    ki1119695-PROBIT            BELARUS                        Q4            2036   12459
6-12 months    ki1119695-PROBIT            BELARUS                        Q1              18   12459
6-12 months    ki1119695-PROBIT            BELARUS                        Q2             286   12459
6-12 months    ki1119695-PROBIT            BELARUS                        Q3           10119   12459
12-24 months   ki1119695-PROBIT            BELARUS                        Q4             357    2464
12-24 months   ki1119695-PROBIT            BELARUS                        Q1               1    2464
12-24 months   ki1119695-PROBIT            BELARUS                        Q2              44    2464
12-24 months   ki1119695-PROBIT            BELARUS                        Q3            2062    2464
3-6 months     ki1135781-COHORTS           GUATEMALA                      Q4               4     761
3-6 months     ki1135781-COHORTS           GUATEMALA                      Q1             619     761
3-6 months     ki1135781-COHORTS           GUATEMALA                      Q2             136     761
3-6 months     ki1135781-COHORTS           GUATEMALA                      Q3               2     761
6-12 months    ki1135781-COHORTS           GUATEMALA                      Q4               4     816
6-12 months    ki1135781-COHORTS           GUATEMALA                      Q1             665     816
6-12 months    ki1135781-COHORTS           GUATEMALA                      Q2             145     816
6-12 months    ki1135781-COHORTS           GUATEMALA                      Q3               2     816
12-24 months   ki1135781-COHORTS           GUATEMALA                      Q4               4     827
12-24 months   ki1135781-COHORTS           GUATEMALA                      Q1             677     827
12-24 months   ki1135781-COHORTS           GUATEMALA                      Q2             144     827
12-24 months   ki1135781-COHORTS           GUATEMALA                      Q3               2     827
0-3 months     ki1135781-COHORTS           GUATEMALA                      Q4               3     693
0-3 months     ki1135781-COHORTS           GUATEMALA                      Q1             558     693
0-3 months     ki1135781-COHORTS           GUATEMALA                      Q2             129     693
0-3 months     ki1135781-COHORTS           GUATEMALA                      Q3               3     693
0-3 months     ki0047075b-MAL-ED           INDIA                          Q4              36     116
0-3 months     ki0047075b-MAL-ED           INDIA                          Q1              20     116
0-3 months     ki0047075b-MAL-ED           INDIA                          Q2              36     116
0-3 months     ki0047075b-MAL-ED           INDIA                          Q3              24     116
3-6 months     ki0047075b-MAL-ED           INDIA                          Q4              42     131
3-6 months     ki0047075b-MAL-ED           INDIA                          Q1              20     131
3-6 months     ki0047075b-MAL-ED           INDIA                          Q2              41     131
3-6 months     ki0047075b-MAL-ED           INDIA                          Q3              28     131
6-12 months    ki0047075b-MAL-ED           INDIA                          Q4              42     129
6-12 months    ki0047075b-MAL-ED           INDIA                          Q1              20     129
6-12 months    ki0047075b-MAL-ED           INDIA                          Q2              40     129
6-12 months    ki0047075b-MAL-ED           INDIA                          Q3              27     129
12-24 months   ki0047075b-MAL-ED           INDIA                          Q4              42     131
12-24 months   ki0047075b-MAL-ED           INDIA                          Q1              20     131
12-24 months   ki0047075b-MAL-ED           INDIA                          Q2              41     131
12-24 months   ki0047075b-MAL-ED           INDIA                          Q3              28     131
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q4             911    2018
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q1             402    2018
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q2             298    2018
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q3             407    2018
3-6 months     ki1000304-VITAMIN-A         INDIA                          Q4               7      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          Q1               1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          Q2               1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          Q3               3      12
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q4              11      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q1               8      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q2              13      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q3              17      49
12-24 months   ki1000304-ZnMort            INDIA                          Q1               1       1
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q4             291    1165
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q1             279    1165
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q2             292    1165
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q3             303    1165
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q4             287    1121
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q1             263    1121
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q2             270    1121
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q3             301    1121
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q4             294    1134
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q1             257    1134
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q2             283    1134
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q3             300    1134
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q4              17     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q1             133     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q2              72     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q3             110     332
0-3 months     ki1135781-COHORTS           INDIA                          Q4             373    1330
0-3 months     ki1135781-COHORTS           INDIA                          Q1             238    1330
0-3 months     ki1135781-COHORTS           INDIA                          Q2             192    1330
0-3 months     ki1135781-COHORTS           INDIA                          Q3             527    1330
3-6 months     ki1135781-COHORTS           INDIA                          Q4             379    1343
3-6 months     ki1135781-COHORTS           INDIA                          Q1             241    1343
3-6 months     ki1135781-COHORTS           INDIA                          Q2             190    1343
3-6 months     ki1135781-COHORTS           INDIA                          Q3             533    1343
6-12 months    ki1135781-COHORTS           INDIA                          Q4             336    1164
6-12 months    ki1135781-COHORTS           INDIA                          Q1             198    1164
6-12 months    ki1135781-COHORTS           INDIA                          Q2             176    1164
6-12 months    ki1135781-COHORTS           INDIA                          Q3             454    1164
12-24 months   ki1135781-COHORTS           INDIA                          Q4             321    1126
12-24 months   ki1135781-COHORTS           INDIA                          Q1             193    1126
12-24 months   ki1135781-COHORTS           INDIA                          Q2             173    1126
12-24 months   ki1135781-COHORTS           INDIA                          Q3             439    1126
6-12 months    ki1148112-LCNI-5            MALAWI                         Q4              23     429
6-12 months    ki1148112-LCNI-5            MALAWI                         Q1             197     429
6-12 months    ki1148112-LCNI-5            MALAWI                         Q2             138     429
6-12 months    ki1148112-LCNI-5            MALAWI                         Q3              71     429
12-24 months   ki1148112-LCNI-5            MALAWI                         Q4              13     306
12-24 months   ki1148112-LCNI-5            MALAWI                         Q1             148     306
12-24 months   ki1148112-LCNI-5            MALAWI                         Q2              94     306
12-24 months   ki1148112-LCNI-5            MALAWI                         Q3              51     306
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q4             276    1017
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q1             247    1017
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q2             216    1017
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q3             278    1017
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q4             124     483
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q1             117     483
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q2             102     483
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q3             140     483
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q4              86     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q1             186     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q2             111     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q3             155     538
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q4              73     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q1             177     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q2             103     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q3             155     508
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Q4               1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Q1               2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Q2               3       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Q3               1       7
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q4              38      93
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q1              23      93
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q2              25      93
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q3               7      93
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q4              39      91
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q1              22      91
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q2              23      91
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q3               7      91
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q4              37      89
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q1              22      89
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q2              23      89
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q3               7      89
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q4              25      68
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q1              20      68
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q2              18      68
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q3               5      68
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q4             117     470
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q1             210     470
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q2              74     470
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q3              69     470
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q4             114     474
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q1             205     474
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q2              75     474
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q3              80     474
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q4              92     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q1             163     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q2              47     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q3              65     367
3-6 months     ki0047075b-MAL-ED           PERU                           Q4             105     220
3-6 months     ki0047075b-MAL-ED           PERU                           Q1              44     220
3-6 months     ki0047075b-MAL-ED           PERU                           Q2              62     220
3-6 months     ki0047075b-MAL-ED           PERU                           Q3               9     220
6-12 months    ki0047075b-MAL-ED           PERU                           Q4              90     193
6-12 months    ki0047075b-MAL-ED           PERU                           Q1              39     193
6-12 months    ki0047075b-MAL-ED           PERU                           Q2              55     193
6-12 months    ki0047075b-MAL-ED           PERU                           Q3               9     193
12-24 months   ki0047075b-MAL-ED           PERU                           Q4              71     157
12-24 months   ki0047075b-MAL-ED           PERU                           Q1              32     157
12-24 months   ki0047075b-MAL-ED           PERU                           Q2              47     157
12-24 months   ki0047075b-MAL-ED           PERU                           Q3               7     157
0-3 months     ki0047075b-MAL-ED           PERU                           Q4             107     223
0-3 months     ki0047075b-MAL-ED           PERU                           Q1              45     223
0-3 months     ki0047075b-MAL-ED           PERU                           Q2              61     223
0-3 months     ki0047075b-MAL-ED           PERU                           Q3              10     223
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q4             633    2296
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q1             517    2296
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q2             162    2296
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q3             984    2296
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q4             576    2136
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q1             486    2136
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q2             160    2136
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q3             914    2136
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q4              31      82
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q1              15      82
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q2              21      82
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q3              15      82
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q4              32      89
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q1              18      89
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q2              24      89
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q3              15      89
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q4              32      87
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q1              18      87
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q2              23      87
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q3              14      87
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q4              33      89
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q1              19      89
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q2              22      89
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q3              15      89
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4               7     182
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1              38     182
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2              27     182
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3             110     182
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4               6     170
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1              34     170
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2              24     170
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3             106     170
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4               7     186
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1              40     186
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2              28     186
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3             111     186
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4               8     194
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1              42     194
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2              29     194
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3             115     194
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q4             148    1655
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q1               5    1655
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q2            1437    1655
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q3              65    1655
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q4              98    1078
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q1               3    1078
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q2             933    1078
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q3              44    1078
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q2               2       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q4            6455    7627
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q1              46    7627
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q2              61    7627
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q3            1065    7627
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q4            4827    5711
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q1              41    5711
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q2              46    5711
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q3             797    5711
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q4            3732    4433
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q1              36    4433
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q2              34    4433
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q3             631    4433
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Q4             223     284
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Q1               7     284
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Q2               2     284
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Q3              52     284


The following strata were considered:

* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/608bcdbd-6106-4b1f-8005-81679d839492/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/608bcdbd-6106-4b1f-8005-81679d839492/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q4                   NA                 0.0272564   -0.0340788    0.0885915
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q1                   NA                 0.0125757   -0.0673929    0.0925443
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q2                   NA                -0.1650517   -0.3802173    0.0501139
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q3                   NA                -0.0520650   -0.1251139    0.0209838
0-3 months     ki0047075b-MAL-ED           INDIA                          Q4                   NA                -0.0066519   -0.0798338    0.0665300
0-3 months     ki0047075b-MAL-ED           INDIA                          Q1                   NA                -0.1089122   -0.2234965    0.0056721
0-3 months     ki0047075b-MAL-ED           INDIA                          Q2                   NA                 0.0150777   -0.0756091    0.1057645
0-3 months     ki0047075b-MAL-ED           INDIA                          Q3                   NA                 0.0423055   -0.0768564    0.1614673
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q4                   NA                 0.0656298   -0.0334235    0.1646831
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q1                   NA                 0.1134769    0.0263647    0.2005890
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q2                   NA                 0.0790804   -0.0022376    0.1603985
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q3                   NA                 0.1856378   -0.1584750    0.5297506
0-3 months     ki0047075b-MAL-ED           PERU                           Q4                   NA                -0.1663294   -0.2226884   -0.1099704
0-3 months     ki0047075b-MAL-ED           PERU                           Q1                   NA                -0.1919911   -0.2676615   -0.1163207
0-3 months     ki0047075b-MAL-ED           PERU                           Q2                   NA                -0.1641511   -0.2285442   -0.0997580
0-3 months     ki0047075b-MAL-ED           PERU                           Q3                   NA                -0.0128993   -0.1398044    0.1140058
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q4                   NA                -0.0490630   -0.1765463    0.0784202
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q1                   NA                 0.0790242   -0.0583631    0.2164114
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q2                   NA                -0.1458814   -0.2689791   -0.0227838
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q3                   NA                -0.1615329   -0.3513431    0.0282774
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1077331   -0.3261051    0.1106388
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0033609   -0.0939737    0.0872519
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0631121   -0.1634838    0.0372596
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0332118   -0.0893588    0.0229352
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q4                   NA                 0.0558165    0.0246435    0.0869894
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q1                   NA                -0.0349349   -0.0566007   -0.0132692
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q2                   NA                -0.0022412   -0.0382804    0.0337980
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q3                   NA                 0.0287697   -0.0011362    0.0586757
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q4                   NA                 0.1282303    0.0034937    0.2529669
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q1                   NA                -0.0647032   -0.0906014   -0.0388050
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q2                   NA                -0.0362839   -0.0657928   -0.0067750
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q3                   NA                -0.0094897   -0.0586952    0.0397157
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q4                   NA                -0.1157738   -0.1503116   -0.0812361
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q1                   NA                -0.1209294   -0.1613011   -0.0805577
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q2                   NA                -0.1229943   -0.1578813   -0.0881072
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q3                   NA                -0.1291222   -0.1651706   -0.0930738
0-3 months     ki1119695-PROBIT            BELARUS                        Q4                   NA                -0.4197148   -0.4798505   -0.3595791
0-3 months     ki1119695-PROBIT            BELARUS                        Q1                   NA                -0.4579880   -0.6495611   -0.2664149
0-3 months     ki1119695-PROBIT            BELARUS                        Q2                   NA                -0.4176032   -0.4840145   -0.3511920
0-3 months     ki1119695-PROBIT            BELARUS                        Q3                   NA                -0.4411594   -0.5013369   -0.3809819
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q4                   NA                -0.1375356   -0.1489701   -0.1261011
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q1                   NA                -0.1806008   -0.3437708   -0.0174308
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q2                   NA                -0.1440248   -0.2694423   -0.0186074
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q3                   NA                -0.1580884   -0.1870031   -0.1291736
0-3 months     ki1135781-COHORTS           INDIA                          Q4                   NA                -0.0239836   -0.0529590    0.0049918
0-3 months     ki1135781-COHORTS           INDIA                          Q1                   NA                -0.1551933   -0.1921106   -0.1182760
0-3 months     ki1135781-COHORTS           INDIA                          Q2                   NA                -0.0509057   -0.0905876   -0.0112239
0-3 months     ki1135781-COHORTS           INDIA                          Q3                   NA                -0.0677081   -0.0927699   -0.0426463
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q4                   NA                 0.1074023    0.0940198    0.1207849
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q1                   NA                 0.0574973    0.0510072    0.0639874
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q2                   NA                 0.0750802    0.0647697    0.0853908
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q3                   NA                 0.0802366    0.0699957    0.0904775
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q4                   NA                 0.1293994   -0.0519915    0.3107904
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q1                   NA                 0.0667422    0.0453432    0.0881412
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q2                   NA                 0.0644622   -0.0252855    0.1542099
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q3                   NA                 0.0641209    0.0221022    0.1061397
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q4                   NA                 0.0374712   -0.0024547    0.0773971
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q1                   NA                -0.0457187   -0.1032797    0.0118422
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q2                   NA                 0.0555249   -0.1066812    0.2177310
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q3                   NA                -0.0290524   -0.0906399    0.0325352
3-6 months     ki0047075b-MAL-ED           INDIA                          Q4                   NA                -0.0395121   -0.0938183    0.0147940
3-6 months     ki0047075b-MAL-ED           INDIA                          Q1                   NA                 0.0365857   -0.0485660    0.1217373
3-6 months     ki0047075b-MAL-ED           INDIA                          Q2                   NA                -0.0592062   -0.1313365    0.0129242
3-6 months     ki0047075b-MAL-ED           INDIA                          Q3                   NA                -0.0728671   -0.1693847    0.0236505
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q4                   NA                -0.0319415   -0.1049359    0.0410530
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q1                   NA                -0.0902306   -0.1667342   -0.0137270
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q2                   NA                -0.0073762   -0.0991493    0.0843969
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q3                   NA                -0.2096142   -0.3316681   -0.0875603
3-6 months     ki0047075b-MAL-ED           PERU                           Q4                   NA                 0.0381792   -0.0199960    0.0963545
3-6 months     ki0047075b-MAL-ED           PERU                           Q1                   NA                 0.0281976   -0.0421398    0.0985351
3-6 months     ki0047075b-MAL-ED           PERU                           Q2                   NA                 0.0356253   -0.0150468    0.0862973
3-6 months     ki0047075b-MAL-ED           PERU                           Q3                   NA                 0.0719439   -0.1234463    0.2673341
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q4                   NA                -0.0240782   -0.1377590    0.0896027
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q1                   NA                -0.0684213   -0.2098661    0.0730235
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q2                   NA                -0.0864374   -0.1704045   -0.0024704
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q3                   NA                 0.0807760   -0.0609656    0.2225177
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1909478   -0.3070666   -0.0748291
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0453621   -0.1276579    0.0369338
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0788430   -0.1674332    0.0097472
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0714494   -0.1193113   -0.0235875
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q4                   NA                -0.0076258   -0.0348848    0.0196333
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q1                   NA                -0.0397539   -0.0764864   -0.0030214
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q2                   NA                -0.0270444   -0.0463305   -0.0077584
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q3                   NA                 0.0033800   -0.0393784    0.0461385
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q4                   NA                 0.0407398   -0.0395590    0.1210386
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q1                   NA                -0.0311337   -0.0552961   -0.0069712
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q2                   NA                -0.0267490   -0.0525106   -0.0009875
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q3                   NA                -0.0299271   -0.0814995    0.0216452
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q4                   NA                 0.0182693   -0.0113147    0.0478532
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q1                   NA                 0.0125785   -0.0220113    0.0471684
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q2                   NA                 0.0286079   -0.0062721    0.0634880
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q3                   NA                 0.0473821    0.0119618    0.0828024
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.0939455   -0.1487299   -0.0391611
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0650432   -0.2409338    0.1108475
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0864486   -0.1043727   -0.0685245
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0483114   -0.1268334    0.0302106
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q4                   NA                -0.1643639   -0.2014155   -0.1273124
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q1                   NA                -0.1609954   -0.1897378   -0.1322530
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q2                   NA                -0.1663800   -0.2144264   -0.1183336
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q3                   NA                -0.1838031   -0.2251258   -0.1424803
3-6 months     ki1119695-PROBIT            BELARUS                        Q4                   NA                 0.0589212    0.0366368    0.0812055
3-6 months     ki1119695-PROBIT            BELARUS                        Q1                   NA                 0.0186082   -0.0625702    0.0997865
3-6 months     ki1119695-PROBIT            BELARUS                        Q2                   NA                 0.0475921    0.0062703    0.0889140
3-6 months     ki1119695-PROBIT            BELARUS                        Q3                   NA                 0.0452696    0.0257696    0.0647697
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q4                   NA                 0.0016489   -0.0085801    0.0118779
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q1                   NA                 0.0339859   -0.0864315    0.1544034
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q2                   NA                 0.0521412   -0.0851748    0.1894572
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q3                   NA                -0.0245522   -0.0505222    0.0014178
3-6 months     ki1135781-COHORTS           INDIA                          Q4                   NA                -0.0358531   -0.0580818   -0.0136244
3-6 months     ki1135781-COHORTS           INDIA                          Q1                   NA                -0.1120803   -0.1436291   -0.0805315
3-6 months     ki1135781-COHORTS           INDIA                          Q2                   NA                -0.0289028   -0.0644984    0.0066927
3-6 months     ki1135781-COHORTS           INDIA                          Q3                   NA                -0.0601436   -0.0797836   -0.0405037
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q4                   NA                 0.0029830   -0.0116974    0.0176635
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q1                   NA                -0.0088257   -0.0160219   -0.0016294
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q2                   NA                -0.0011727   -0.0123168    0.0099714
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q3                   NA                -0.0001210   -0.0098340    0.0095920
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q4                   NA                 0.0306675   -0.0557192    0.1170541
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q1                   NA                -0.0096131   -0.0294920    0.0102657
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q2                   NA                -0.0327301   -0.0831149    0.0176547
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q3                   NA                -0.0111736   -0.0470060    0.0246588
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q4                   NA                -0.0703739   -0.0931386   -0.0476093
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q1                   NA                -0.0875330   -0.1132661   -0.0617999
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q2                   NA                -0.1597130   -0.2637128   -0.0557132
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q3                   NA                -0.0873323   -0.1095181   -0.0651464
6-12 months    ki0047075b-MAL-ED           INDIA                          Q4                   NA                -0.0738474   -0.0988039   -0.0488909
6-12 months    ki0047075b-MAL-ED           INDIA                          Q1                   NA                -0.0735010   -0.1195551   -0.0274470
6-12 months    ki0047075b-MAL-ED           INDIA                          Q2                   NA                -0.0924724   -0.1229281   -0.0620167
6-12 months    ki0047075b-MAL-ED           INDIA                          Q3                   NA                -0.0904422   -0.1232144   -0.0576700
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q4                   NA                -0.0496096   -0.0725559   -0.0266633
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q1                   NA                -0.0571690   -0.0987520   -0.0155861
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q2                   NA                -0.0465077   -0.0867760   -0.0062394
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q3                   NA                -0.0605391   -0.1259923    0.0049141
6-12 months    ki0047075b-MAL-ED           PERU                           Q4                   NA                -0.0220952   -0.0454035    0.0012131
6-12 months    ki0047075b-MAL-ED           PERU                           Q1                   NA                -0.0311551   -0.0678065    0.0054964
6-12 months    ki0047075b-MAL-ED           PERU                           Q2                   NA                -0.0610175   -0.0893119   -0.0327232
6-12 months    ki0047075b-MAL-ED           PERU                           Q3                   NA                -0.0804849   -0.1678317    0.0068619
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q4                   NA                -0.0506883   -0.0929481   -0.0084284
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q1                   NA                -0.1031546   -0.1713691   -0.0349401
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q2                   NA                -0.0577578   -0.1098761   -0.0056396
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q3                   NA                -0.0546807   -0.1134331    0.0040718
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1875965   -0.2968415   -0.0783515
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1492304   -0.1896134   -0.1088473
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.1242547   -0.1699897   -0.0785196
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.1189084   -0.1400295   -0.0977873
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q4                   NA                -0.0669877   -0.0742547   -0.0597207
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q1                   NA                -0.0898453   -0.1006417   -0.0790489
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q2                   NA                -0.0881159   -0.1009135   -0.0753184
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q3                   NA                -0.0710595   -0.0825437   -0.0595752
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q4                   NA                -0.0356063   -0.0769565    0.0057439
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q1                   NA                -0.0244859   -0.0647039    0.0157322
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q2                   NA                 0.0079498   -0.0596242    0.0755239
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q3                   NA                -0.0247424   -0.0574051    0.0079204
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q4                   NA                -0.0849384   -0.0954599   -0.0744169
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q1                   NA                -0.0974771   -0.1208177   -0.0741364
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q2                   NA                -0.0957126   -0.1089553   -0.0824699
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q3                   NA                -0.0672952   -0.0786041   -0.0559863
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q4                   NA                -0.1963471   -0.2235276   -0.1691667
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q1                   NA                -0.1024989   -0.1541603   -0.0508374
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q2                   NA                -0.1275497   -0.1826356   -0.0724639
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q3                   NA                -0.0882355   -0.1471919   -0.0292791
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q4                   NA                -0.0044770   -0.0481998    0.0392457
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q1                   NA                -0.0742256   -0.0840062   -0.0644450
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q2                   NA                -0.0618933   -0.0733725   -0.0504140
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q3                   NA                -0.0368954   -0.0545767   -0.0192141
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q4                   NA                -0.0232741   -0.0379277   -0.0086204
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q1                   NA                -0.0431936   -0.0585931   -0.0277941
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q2                   NA                -0.0432340   -0.0560041   -0.0304639
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q3                   NA                -0.0181810   -0.0332234   -0.0031387
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q4                   NA                -0.0516500   -0.0686253   -0.0346746
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q1                   NA                -0.0603414   -0.0727961   -0.0478866
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q2                   NA                -0.0628528   -0.0850549   -0.0406506
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q3                   NA                -0.0763140   -0.0944315   -0.0581965
6-12 months    ki1119695-PROBIT            BELARUS                        Q4                   NA                 0.0336182    0.0200639    0.0471725
6-12 months    ki1119695-PROBIT            BELARUS                        Q1                   NA                 0.0932611   -0.0358104    0.2223325
6-12 months    ki1119695-PROBIT            BELARUS                        Q2                   NA                 0.0691829    0.0423363    0.0960294
6-12 months    ki1119695-PROBIT            BELARUS                        Q3                   NA                 0.0421446    0.0245022    0.0597869
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q4                   NA                -0.0492904   -0.0544305   -0.0441504
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q1                   NA                -0.1019440   -0.1481677   -0.0557204
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q2                   NA                -0.0855509   -0.1416925   -0.0294094
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q3                   NA                -0.0472492   -0.0596960   -0.0348025
6-12 months    ki1135781-COHORTS           INDIA                          Q4                   NA                -0.0733210   -0.0865426   -0.0600994
6-12 months    ki1135781-COHORTS           INDIA                          Q1                   NA                -0.1027648   -0.1207412   -0.0847884
6-12 months    ki1135781-COHORTS           INDIA                          Q2                   NA                -0.1081278   -0.1282904   -0.0879652
6-12 months    ki1135781-COHORTS           INDIA                          Q3                   NA                -0.0879503   -0.0996801   -0.0762205
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q4                   NA                -0.0880606   -0.0979838   -0.0781374
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q1                   NA                -0.1040713   -0.1153022   -0.0928403
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q2                   NA                -0.1250976   -0.1454353   -0.1047598
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q3                   NA                -0.1024031   -0.1101555   -0.0946507
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q4                   NA                -0.0274950   -0.0410331   -0.0139569
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q1                   NA                -0.0509797   -0.0651608   -0.0367985
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q2                   NA                -0.0371490   -0.0521314   -0.0221666
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q3                   NA                -0.0360991   -0.0495899   -0.0226083
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q4                   NA                -0.0406958   -0.0633525   -0.0180392
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q1                   NA                -0.0432916   -0.0605453   -0.0260380
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q2                   NA                -0.0326031   -0.0561098   -0.0090965
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q3                   NA                -0.0531632   -0.0706864   -0.0356400
6-12 months    ki1148112-LCNI-5            MALAWI                         Q4                   NA                 0.0145334   -0.0206760    0.0497428
6-12 months    ki1148112-LCNI-5            MALAWI                         Q1                   NA                -0.0040955   -0.0212022    0.0130112
6-12 months    ki1148112-LCNI-5            MALAWI                         Q2                   NA                -0.0064699   -0.0253999    0.0124601
6-12 months    ki1148112-LCNI-5            MALAWI                         Q3                   NA                -0.0239799   -0.0493206    0.0013608
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q4                   NA                -0.0671546   -0.0755942   -0.0587151
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q1                   NA                -0.0797315   -0.0836494   -0.0758135
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q2                   NA                -0.0708447   -0.0774794   -0.0642099
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q3                   NA                -0.0725751   -0.0780018   -0.0671484
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q4                   NA                -0.0553202   -0.0989859   -0.0116545
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q1                   NA                -0.0399763   -0.0474231   -0.0325296
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q2                   NA                -0.0315456   -0.0475252   -0.0155660
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q3                   NA                -0.0345763   -0.0479475   -0.0212051
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q4                   NA                -0.0194011   -0.0299399   -0.0088624
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q1                   NA                -0.0211214   -0.0354210   -0.0068219
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q2                   NA                 0.0052407   -0.0146438    0.0251253
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q3                   NA                -0.0231796   -0.0343936   -0.0119657
12-24 months   ki0047075b-MAL-ED           INDIA                          Q4                   NA                -0.0109656   -0.0249337    0.0030024
12-24 months   ki0047075b-MAL-ED           INDIA                          Q1                   NA                -0.0098369   -0.0263706    0.0066968
12-24 months   ki0047075b-MAL-ED           INDIA                          Q2                   NA                -0.0192770   -0.0316289   -0.0069250
12-24 months   ki0047075b-MAL-ED           INDIA                          Q3                   NA                -0.0139908   -0.0297121    0.0017305
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q4                   NA                -0.0164014   -0.0302131   -0.0025896
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q1                   NA                -0.0470802   -0.0657442   -0.0284161
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q2                   NA                -0.0275017   -0.0440446   -0.0109588
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q3                   NA                -0.0313429   -0.0528607   -0.0098250
12-24 months   ki0047075b-MAL-ED           PERU                           Q4                   NA                -0.0169300   -0.0284869   -0.0053731
12-24 months   ki0047075b-MAL-ED           PERU                           Q1                   NA                -0.0042166   -0.0227562    0.0143230
12-24 months   ki0047075b-MAL-ED           PERU                           Q2                   NA                -0.0022050   -0.0156753    0.0112653
12-24 months   ki0047075b-MAL-ED           PERU                           Q3                   NA                -0.0314471   -0.0654920    0.0025977
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q4                   NA                -0.0071672   -0.0263546    0.0120202
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q1                   NA                -0.0319996   -0.0566548   -0.0073444
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q2                   NA                -0.0161493   -0.0348951    0.0025964
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q3                   NA                -0.0267595   -0.0588842    0.0053652
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.0560043   -0.1021577   -0.0098508
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0502334   -0.0681008   -0.0323659
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0395259   -0.0607352   -0.0183165
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0343770   -0.0450914   -0.0236627
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q1                   NA                 0.0007056   -0.0225563    0.0239675
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q2                   NA                -0.0113495   -0.0300861    0.0073870
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q3                   NA                 0.0110699   -0.0259377    0.0480775
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q4                   NA                 0.0197291   -0.0023066    0.0417647
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q1                   NA                -0.0136691   -0.0193712   -0.0079669
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q2                   NA                -0.0038834   -0.0100479    0.0022811
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q3                   NA                -0.0062180   -0.0158723    0.0034362
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q4                   NA                -0.0037130   -0.0111309    0.0037048
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q1                   NA                -0.0161519   -0.0249981   -0.0073057
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q2                   NA                -0.0100257   -0.0171775   -0.0028740
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q3                   NA                 0.0045573   -0.0037758    0.0128905
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q4                   NA                -0.0104740   -0.0208442   -0.0001037
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q1                   NA                -0.0134374   -0.0211399   -0.0057349
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q2                   NA                -0.0230698   -0.0361532   -0.0099864
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q3                   NA                -0.0226792   -0.0338141   -0.0115443
12-24 months   ki1135781-COHORTS           INDIA                          Q4                   NA                -0.0270262   -0.0329955   -0.0210569
12-24 months   ki1135781-COHORTS           INDIA                          Q1                   NA                -0.0390037   -0.0473146   -0.0306929
12-24 months   ki1135781-COHORTS           INDIA                          Q2                   NA                -0.0422206   -0.0504779   -0.0339633
12-24 months   ki1135781-COHORTS           INDIA                          Q3                   NA                -0.0350748   -0.0401450   -0.0300046
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q4                   NA                -0.0410739   -0.0458648   -0.0362829
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q1                   NA                -0.0656305   -0.0711178   -0.0601432
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q2                   NA                -0.0628360   -0.0719803   -0.0536917
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q3                   NA                -0.0639172   -0.0678296   -0.0600048
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q4                   NA                -0.0310033   -0.0394062   -0.0226005
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q1                   NA                -0.0293499   -0.0383526   -0.0203472
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q2                   NA                -0.0263864   -0.0381397   -0.0146331
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q3                   NA                -0.0340527   -0.0438357   -0.0242698
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q4                   NA                -0.0177399   -0.0334079   -0.0020719
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q1                   NA                -0.0227026   -0.0312983   -0.0141069
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q2                   NA                -0.0225457   -0.0339297   -0.0111618
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q3                   NA                -0.0179167   -0.0270910   -0.0087424
12-24 months   ki1148112-LCNI-5            MALAWI                         Q4                   NA                -0.0391056   -0.0674514   -0.0107597
12-24 months   ki1148112-LCNI-5            MALAWI                         Q1                   NA                -0.0118984   -0.0209115   -0.0028852
12-24 months   ki1148112-LCNI-5            MALAWI                         Q2                   NA                -0.0162568   -0.0248094   -0.0077041
12-24 months   ki1148112-LCNI-5            MALAWI                         Q3                   NA                -0.0206717   -0.0354130   -0.0059304
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q4                   NA                -0.0169409   -0.0226729   -0.0112088
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q1                   NA                -0.0193821   -0.0218464   -0.0169178
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q2                   NA                -0.0177783   -0.0220944   -0.0134621
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q3                   NA                -0.0190591   -0.0231061   -0.0150120
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q4                   NA                -0.0267360   -0.0416218   -0.0118502
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q1                   NA                -0.0135960   -0.0165621   -0.0106299
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q2                   NA                -0.0149387   -0.0221900   -0.0076874
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q3                   NA                -0.0142916   -0.0197335   -0.0088497


### Parameter: E(Y)


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0145359   -0.0558285    0.0267568
0-3 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0074102   -0.0562743    0.0414539
0-3 months     ki0047075b-MAL-ED           NEPAL                          NA                   NA                 0.0920870    0.0359791    0.1481950
0-3 months     ki0047075b-MAL-ED           PERU                           NA                   NA                -0.1640316   -0.2004678   -0.1275955
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0710012   -0.1451419    0.0031396
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0340979   -0.0766349    0.0084390
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                 0.0124966   -0.0032603    0.0282535
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT            BELARUS                        NA                   NA                -0.4373735   -0.4964330   -0.3783141
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.1407172   -0.1512982   -0.1301361
0-3 months     ki1135781-COHORTS           INDIA                          NA                   NA                -0.0686752   -0.0843829   -0.0529675
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                 0.0703817    0.0653899    0.0753735
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                 0.0670403    0.0481864    0.0858943
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0037366   -0.0345660    0.0270929
3-6 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0411872   -0.0791877   -0.0031868
3-6 months     ki0047075b-MAL-ED           NEPAL                          NA                   NA                -0.0531267   -0.0985458   -0.0077076
3-6 months     ki0047075b-MAL-ED           PERU                           NA                   NA                 0.0368444    0.0016620    0.0720269
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0321904   -0.0931294    0.0287487
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0718346   -0.1083792   -0.0352901
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                -0.0168853   -0.0357401    0.0019694
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855565   -0.1021743   -0.0689388
3-6 months     ki1113344-GMS-Nepal         NEPAL                          NA                   NA                -0.1660301   -0.1845910   -0.1474692
3-6 months     ki1119695-PROBIT            BELARUS                        NA                   NA                 0.0475202    0.0282208    0.0668197
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.0013688   -0.0108519    0.0081144
3-6 months     ki1135781-COHORTS           INDIA                          NA                   NA                -0.0581890   -0.0708287   -0.0455492
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                -0.0040204   -0.0089971    0.0009563
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                -0.0114011   -0.0281285    0.0053262
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0839210   -0.0980120   -0.0698300
6-12 months    ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0830422   -0.0990315   -0.0670530
6-12 months    ki0047075b-MAL-ED           NEPAL                          NA                   NA                -0.0514939   -0.0695948   -0.0333930
6-12 months    ki0047075b-MAL-ED           PERU                           NA                   NA                -0.0377406   -0.0539224   -0.0215589
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0640548   -0.0912245   -0.0368851
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1286743   -0.1461022   -0.1112465
6-12 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                -0.0754823   -0.0804338   -0.0705309
6-12 months    ki1000304-Vitamin-B12       INDIA                          NA                   NA                -0.0184659   -0.0429764    0.0060446
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                -0.0858013   -0.0900320   -0.0815706
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal         NEPAL                          NA                   NA                -0.0613442   -0.0695826   -0.0531058
6-12 months    ki1119695-PROBIT            BELARUS                        NA                   NA                 0.0414458    0.0250263    0.0578652
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.0497056   -0.0544193   -0.0449919
6-12 months    ki1135781-COHORTS           INDIA                          NA                   NA                -0.0892983   -0.0966919   -0.0819047
6-12 months    ki1135781-COHORTS           PHILIPPINES                    NA                   NA                -0.1004258   -0.1056343   -0.0952173
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                -0.0376011   -0.0446266   -0.0305756
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                -0.0435155   -0.0534192   -0.0336118
6-12 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                -0.0071514   -0.0181345    0.0038317
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                -0.0750265   -0.0779373   -0.0721157
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                -0.0384776   -0.0446899   -0.0322653
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0201350   -0.0267873   -0.0134826
12-24 months   ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0140412   -0.0213272   -0.0067551
12-24 months   ki0047075b-MAL-ED           NEPAL                          NA                   NA                -0.0280287   -0.0370734   -0.0189840
12-24 months   ki0047075b-MAL-ED           PERU                           NA                   NA                -0.0105779   -0.0184396   -0.0027162
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0179909   -0.0295422   -0.0064396
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0390385   -0.0474129   -0.0306641
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                -0.0026893   -0.0170438    0.0116652
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal         NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1135781-COHORTS           INDIA                          NA                   NA                -0.0345516   -0.0377982   -0.0313051
12-24 months   ki1135781-COHORTS           PHILIPPINES                    NA                   NA                -0.0580661   -0.0606531   -0.0554790
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                -0.0305117   -0.0353770   -0.0256463
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                -0.0204974   -0.0257171   -0.0152777
12-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                -0.0158553   -0.0216714   -0.0100392
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                -0.0187685   -0.0206314   -0.0169055
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                -0.0139919   -0.0164850   -0.0114988


### Parameter: ATE


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q1                   Q4                -0.0146807   -0.1154625    0.0861012
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q2                   Q4                -0.1923081   -0.4160451    0.0314289
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q3                   Q4                -0.0793214   -0.1747055    0.0160627
0-3 months     ki0047075b-MAL-ED           INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           INDIA                          Q1                   Q4                -0.1022603   -0.2382204    0.0336998
0-3 months     ki0047075b-MAL-ED           INDIA                          Q2                   Q4                 0.0217296   -0.0948023    0.1382615
0-3 months     ki0047075b-MAL-ED           INDIA                          Q3                   Q4                 0.0489574   -0.0908823    0.1887971
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q1                   Q4                 0.0478471   -0.0840623    0.1797564
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q2                   Q4                 0.0134507   -0.1147062    0.1416075
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q3                   Q4                 0.1200080   -0.2380774    0.4780935
0-3 months     ki0047075b-MAL-ED           PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           PERU                           Q1                   Q4                -0.0256617   -0.1200140    0.0686905
0-3 months     ki0047075b-MAL-ED           PERU                           Q2                   Q4                 0.0021783   -0.0833951    0.0877517
0-3 months     ki0047075b-MAL-ED           PERU                           Q3                   Q4                 0.1534301    0.0145731    0.2922870
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q1                   Q4                 0.1280872   -0.0593354    0.3155098
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q2                   Q4                -0.0968184   -0.2740330    0.0803962
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q3                   Q4                -0.1124698   -0.3411179    0.1161782
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.1043722   -0.1320532    0.3407976
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0446210   -0.1957137    0.2849557
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0745213   -0.1509533    0.2999959
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q1                   Q4                -0.0907514   -0.1339672   -0.0475356
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q2                   Q4                -0.0580577   -0.1028133   -0.0133020
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q3                   Q4                -0.0270467   -0.0611799    0.0070864
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q1                   Q4                -0.1929335   -0.3203303   -0.0655367
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q2                   Q4                -0.1645142   -0.2926938   -0.0363346
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q3                   Q4                -0.1377200   -0.2718111   -0.0036290
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q1                   Q4                -0.0051555   -0.0582849    0.0479738
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q2                   Q4                -0.0072204   -0.0563118    0.0418709
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q3                   Q4                -0.0133484   -0.0632718    0.0365750
0-3 months     ki1119695-PROBIT            BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT            BELARUS                        Q1                   Q4                -0.0382732   -0.2264466    0.1499002
0-3 months     ki1119695-PROBIT            BELARUS                        Q2                   Q4                 0.0021116   -0.0533429    0.0575660
0-3 months     ki1119695-PROBIT            BELARUS                        Q3                   Q4                -0.0214446   -0.0497279    0.0068386
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q1                   Q4                -0.0430652   -0.2066354    0.1205050
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q2                   Q4                -0.0064892   -0.1324269    0.1194484
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q3                   Q4                -0.0205527   -0.0516463    0.0105408
0-3 months     ki1135781-COHORTS           INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS           INDIA                          Q1                   Q4                -0.1312097   -0.1781401   -0.0842793
0-3 months     ki1135781-COHORTS           INDIA                          Q2                   Q4                -0.0269221   -0.0760568    0.0222126
0-3 months     ki1135781-COHORTS           INDIA                          Q3                   Q4                -0.0437245   -0.0820346   -0.0054143
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q1                   Q4                -0.0499051   -0.0642407   -0.0355694
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q2                   Q4                -0.0323221   -0.0492596   -0.0153846
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q3                   Q4                -0.0271657   -0.0432284   -0.0111031
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q1                   Q4                -0.0626573   -0.2462810    0.1209665
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q2                   Q4                -0.0649373   -0.2660871    0.1362126
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q3                   Q4                -0.0652785   -0.2516304    0.1210734
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q1                   Q4                -0.0831900   -0.1532424   -0.0131375
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q2                   Q4                 0.0180537   -0.1489939    0.1851013
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q3                   Q4                -0.0665236   -0.1399205    0.0068733
3-6 months     ki0047075b-MAL-ED           INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           INDIA                          Q1                   Q4                 0.0760978   -0.0248971    0.1770927
3-6 months     ki0047075b-MAL-ED           INDIA                          Q2                   Q4                -0.0196940   -0.1099822    0.0705941
3-6 months     ki0047075b-MAL-ED           INDIA                          Q3                   Q4                -0.0333549   -0.1441015    0.0773917
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q1                   Q4                -0.0582892   -0.1640294    0.0474510
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q2                   Q4                 0.0245652   -0.0926972    0.1418277
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q3                   Q4                -0.1776728   -0.3198886   -0.0354570
3-6 months     ki0047075b-MAL-ED           PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           PERU                           Q1                   Q4                -0.0099816   -0.1012598    0.0812966
3-6 months     ki0047075b-MAL-ED           PERU                           Q2                   Q4                -0.0025540   -0.0797033    0.0745953
3-6 months     ki0047075b-MAL-ED           PERU                           Q3                   Q4                 0.0337646   -0.1701022    0.2376315
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q1                   Q4                -0.0443431   -0.2258093    0.1371230
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q2                   Q4                -0.0623593   -0.2036880    0.0789694
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q3                   Q4                 0.1048542   -0.0768434    0.2865518
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.1455857    0.0032616    0.2879099
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.1121048   -0.0339492    0.2581589
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.1194984   -0.0060975    0.2450943
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q1                   Q4                -0.0321281   -0.0820446    0.0177884
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q2                   Q4                -0.0194186   -0.0454676    0.0066304
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q3                   Q4                 0.0110058   -0.0468554    0.0688671
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q1                   Q4                -0.0718735   -0.1557289    0.0119819
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q2                   Q4                -0.0674889   -0.1518189    0.0168412
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q3                   Q4                -0.0706670   -0.1661007    0.0247668
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q1                   Q4                -0.0056907   -0.0512063    0.0398248
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q2                   Q4                 0.0103387   -0.0353978    0.0560751
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q3                   Q4                 0.0291128   -0.0170370    0.0752627
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0289023   -0.1553226    0.2131273
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0074969   -0.0501452    0.0651389
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0456342   -0.0501105    0.1413788
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q1                   Q4                 0.0033686   -0.0435244    0.0502615
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q2                   Q4                -0.0020161   -0.0626896    0.0586574
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q3                   Q4                -0.0194391   -0.0749404    0.0360621
3-6 months     ki1119695-PROBIT            BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT            BELARUS                        Q1                   Q4                -0.0403130   -0.1165390    0.0359130
3-6 months     ki1119695-PROBIT            BELARUS                        Q2                   Q4                -0.0113290   -0.0497773    0.0271192
3-6 months     ki1119695-PROBIT            BELARUS                        Q3                   Q4                -0.0136515   -0.0277717    0.0004687
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q1                   Q4                 0.0323370   -0.0885141    0.1531881
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q2                   Q4                 0.0504923   -0.0872042    0.1881888
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q3                   Q4                -0.0262011   -0.0541129    0.0017108
3-6 months     ki1135781-COHORTS           INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS           INDIA                          Q1                   Q4                -0.0762272   -0.1148205   -0.0376339
3-6 months     ki1135781-COHORTS           INDIA                          Q2                   Q4                 0.0069503   -0.0350159    0.0489165
3-6 months     ki1135781-COHORTS           INDIA                          Q3                   Q4                -0.0242905   -0.0539527    0.0053716
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q1                   Q4                -0.0118087   -0.0281674    0.0045500
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q2                   Q4                -0.0041557   -0.0225957    0.0142843
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q3                   Q4                -0.0031040   -0.0202075    0.0139994
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q1                   Q4                -0.0402806   -0.1284004    0.0478392
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q2                   Q4                -0.0633975   -0.1614902    0.0346952
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q3                   Q4                -0.0418411   -0.1321302    0.0484480
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q1                   Q4                -0.0171590   -0.0515163    0.0171982
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q2                   Q4                -0.0893390   -0.1958012    0.0171231
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q3                   Q4                -0.0169583   -0.0487458    0.0148291
6-12 months    ki0047075b-MAL-ED           INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           INDIA                          Q1                   Q4                 0.0003464   -0.0520349    0.0527277
6-12 months    ki0047075b-MAL-ED           INDIA                          Q2                   Q4                -0.0186250   -0.0579998    0.0207499
6-12 months    ki0047075b-MAL-ED           INDIA                          Q3                   Q4                -0.0165948   -0.0577876    0.0245980
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q1                   Q4                -0.0075594   -0.0550533    0.0399345
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q2                   Q4                 0.0031020   -0.0432453    0.0494492
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q3                   Q4                -0.0109294   -0.0802883    0.0584294
6-12 months    ki0047075b-MAL-ED           PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           PERU                           Q1                   Q4                -0.0090599   -0.0524949    0.0343752
6-12 months    ki0047075b-MAL-ED           PERU                           Q2                   Q4                -0.0389223   -0.0755809   -0.0022638
6-12 months    ki0047075b-MAL-ED           PERU                           Q3                   Q4                -0.0583897   -0.1487929    0.0320135
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q1                   Q4                -0.0524663   -0.1327104    0.0277778
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q2                   Q4                -0.0070696   -0.0741681    0.0600289
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q3                   Q4                -0.0039924   -0.0763647    0.0683799
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0383661   -0.0781038    0.1548361
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0633418   -0.0550902    0.1817739
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0686881   -0.0425799    0.1799561
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q1                   Q4                -0.0228576   -0.0358719   -0.0098433
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q2                   Q4                -0.0211282   -0.0358451   -0.0064113
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q3                   Q4                -0.0040718   -0.0176621    0.0095186
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q1                   Q4                 0.0111204   -0.0465626    0.0688035
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q2                   Q4                 0.0435562   -0.0356656    0.1227780
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q3                   Q4                 0.0108640   -0.0418304    0.0635583
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q1                   Q4                -0.0125387   -0.0412878    0.0162104
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q2                   Q4                -0.0107742   -0.0296243    0.0080760
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q3                   Q4                 0.0176432    0.0003221    0.0349644
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q1                   Q4                 0.0938483    0.0354729    0.1522237
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q2                   Q4                 0.0687974    0.0073708    0.1302240
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q3                   Q4                 0.1081116    0.0431914    0.1730318
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q1                   Q4                -0.0697486   -0.1145519   -0.0249452
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q2                   Q4                -0.0574162   -0.1026208   -0.0122117
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q3                   Q4                -0.0324184   -0.0795810    0.0147442
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q1                   Q4                -0.0199195   -0.0411769    0.0013378
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q2                   Q4                -0.0199599   -0.0393972   -0.0005227
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q3                   Q4                 0.0050930   -0.0159070    0.0260930
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q1                   Q4                -0.0086914   -0.0297457    0.0123629
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q2                   Q4                -0.0112028   -0.0391510    0.0167453
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q3                   Q4                -0.0246640   -0.0494916    0.0001635
6-12 months    ki1119695-PROBIT            BELARUS                        Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT            BELARUS                        Q1                   Q4                 0.0596428   -0.0658777    0.1851634
6-12 months    ki1119695-PROBIT            BELARUS                        Q2                   Q4                 0.0355646    0.0133709    0.0577584
6-12 months    ki1119695-PROBIT            BELARUS                        Q3                   Q4                 0.0085264   -0.0046919    0.0217446
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q1                   Q4                -0.0526536   -0.0991622   -0.0061450
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q2                   Q4                -0.0362605   -0.0926369    0.0201159
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q3                   Q4                 0.0020412   -0.0114251    0.0155075
6-12 months    ki1135781-COHORTS           INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           INDIA                          Q1                   Q4                -0.0294438   -0.0517588   -0.0071288
6-12 months    ki1135781-COHORTS           INDIA                          Q2                   Q4                -0.0348068   -0.0589178   -0.0106958
6-12 months    ki1135781-COHORTS           INDIA                          Q3                   Q4                -0.0146293   -0.0323041    0.0030455
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q1                   Q4                -0.0160107   -0.0309975   -0.0010239
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q2                   Q4                -0.0370370   -0.0596665   -0.0144075
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q3                   Q4                -0.0143425   -0.0269350   -0.0017500
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q1                   Q4                -0.0234847   -0.0430904   -0.0038789
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q2                   Q4                -0.0096540   -0.0298469    0.0105389
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q3                   Q4                -0.0086041   -0.0277165    0.0105083
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q1                   Q4                -0.0025958   -0.0310741    0.0258824
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q2                   Q4                 0.0080927   -0.0245552    0.0407406
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q3                   Q4                -0.0124674   -0.0411097    0.0161750
6-12 months    ki1148112-LCNI-5            MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5            MALAWI                         Q1                   Q4                -0.0186289   -0.0577741    0.0205162
6-12 months    ki1148112-LCNI-5            MALAWI                         Q2                   Q4                -0.0210033   -0.0609789    0.0189722
6-12 months    ki1148112-LCNI-5            MALAWI                         Q3                   Q4                -0.0385133   -0.0818936    0.0048670
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q1                   Q4                -0.0125768   -0.0215535   -0.0036002
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q2                   Q4                -0.0036900   -0.0145934    0.0072133
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q3                   Q4                -0.0054205   -0.0153268    0.0044859
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q1                   Q4                 0.0153439   -0.0290054    0.0596931
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q2                   Q4                 0.0237746   -0.0228822    0.0704314
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q3                   Q4                 0.0207439   -0.0249943    0.0664821
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q1                   Q4                -0.0017203   -0.0194838    0.0160432
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q2                   Q4                 0.0246419    0.0021372    0.0471465
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q3                   Q4                -0.0037785   -0.0191674    0.0116104
12-24 months   ki0047075b-MAL-ED           INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           INDIA                          Q1                   Q4                 0.0011287   -0.0205155    0.0227729
12-24 months   ki0047075b-MAL-ED           INDIA                          Q2                   Q4                -0.0083113   -0.0269574    0.0103348
12-24 months   ki0047075b-MAL-ED           INDIA                          Q3                   Q4                -0.0030252   -0.0240553    0.0180049
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q1                   Q4                -0.0306788   -0.0538976   -0.0074600
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q2                   Q4                -0.0111003   -0.0326510    0.0104504
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q3                   Q4                -0.0149415   -0.0405107    0.0106277
12-24 months   ki0047075b-MAL-ED           PERU                           Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           PERU                           Q1                   Q4                 0.0127134   -0.0091333    0.0345601
12-24 months   ki0047075b-MAL-ED           PERU                           Q2                   Q4                 0.0147250   -0.0030236    0.0324735
12-24 months   ki0047075b-MAL-ED           PERU                           Q3                   Q4                -0.0145171   -0.0504701    0.0214358
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q1                   Q4                -0.0248324   -0.0560740    0.0064092
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q2                   Q4                -0.0089822   -0.0358068    0.0178424
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q3                   Q4                -0.0195923   -0.0570109    0.0178263
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1                   Q4                 0.0057709   -0.0437204    0.0552622
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2                   Q4                 0.0164784   -0.0343151    0.0672719
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3                   Q4                 0.0216272   -0.0257536    0.0690080
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q2                   Q1                -0.0120551   -0.0419244    0.0178142
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q3                   Q1                 0.0103643   -0.0333470    0.0540756
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q1                   Q4                -0.0333981   -0.0561596   -0.0106367
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q2                   Q4                -0.0236125   -0.0464942   -0.0007308
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q3                   Q4                -0.0259471   -0.0500048   -0.0018894
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q1                   Q4                -0.0124389   -0.0239835   -0.0008942
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q2                   Q4                -0.0063127   -0.0166167    0.0039912
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q3                   Q4                 0.0082703   -0.0028861    0.0194267
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q1                   Q4                -0.0029634   -0.0158813    0.0099544
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q2                   Q4                -0.0125958   -0.0292906    0.0040991
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q3                   Q4                -0.0122053   -0.0274213    0.0030108
12-24 months   ki1135781-COHORTS           INDIA                          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           INDIA                          Q1                   Q4                -0.0119775   -0.0222100   -0.0017451
12-24 months   ki1135781-COHORTS           INDIA                          Q2                   Q4                -0.0151944   -0.0253834   -0.0050054
12-24 months   ki1135781-COHORTS           INDIA                          Q3                   Q4                -0.0080486   -0.0158806   -0.0002166
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q1                   Q4                -0.0245566   -0.0318411   -0.0172721
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q2                   Q4                -0.0217621   -0.0320855   -0.0114388
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q3                   Q4                -0.0228434   -0.0290289   -0.0166579
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q1                   Q4                 0.0016535   -0.0106614    0.0139684
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q2                   Q4                 0.0046170   -0.0098311    0.0190651
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q3                   Q4                -0.0030494   -0.0159456    0.0098468
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q1                   Q4                -0.0049627   -0.0228337    0.0129084
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q2                   Q4                -0.0048058   -0.0241728    0.0145612
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q3                   Q4                -0.0001768   -0.0183331    0.0179796
12-24 months   ki1148112-LCNI-5            MALAWI                         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5            MALAWI                         Q1                   Q4                 0.0272072   -0.0025371    0.0569515
12-24 months   ki1148112-LCNI-5            MALAWI                         Q2                   Q4                 0.0228488   -0.0067592    0.0524568
12-24 months   ki1148112-LCNI-5            MALAWI                         Q3                   Q4                 0.0184339   -0.0135160    0.0503837
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q1                   Q4                -0.0024413   -0.0086032    0.0037206
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q2                   Q4                -0.0008374   -0.0082101    0.0065353
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q3                   Q4                -0.0021182   -0.0090245    0.0047882
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q1                   Q4                 0.0131400   -0.0020531    0.0283330
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q2                   Q4                 0.0117973   -0.0046545    0.0282491
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q3                   Q4                 0.0124444   -0.0033280    0.0282168
