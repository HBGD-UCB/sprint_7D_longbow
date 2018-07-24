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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enwast    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      174     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       27     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       36     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        4     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      152     221
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       30     221
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       33     221
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        6     221
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0       90     195
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       70     195
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       22     195
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       13     195
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      163     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1       14     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        6     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     183
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      156     166
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        4     166
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        6     166
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     166
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      122     133
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        6     133
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        5     133
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     133
Birth       ki0047075b-MAL-ED          INDIA                          0               0      146     203
Birth       ki0047075b-MAL-ED          INDIA                          0               1       24     203
Birth       ki0047075b-MAL-ED          INDIA                          1               0       27     203
Birth       ki0047075b-MAL-ED          INDIA                          1               1        6     203
6 months    ki0047075b-MAL-ED          INDIA                          0               0      129     189
6 months    ki0047075b-MAL-ED          INDIA                          0               1       30     189
6 months    ki0047075b-MAL-ED          INDIA                          1               0       25     189
6 months    ki0047075b-MAL-ED          INDIA                          1               1        5     189
24 months   ki0047075b-MAL-ED          INDIA                          0               0       88     180
24 months   ki0047075b-MAL-ED          INDIA                          0               1       62     180
24 months   ki0047075b-MAL-ED          INDIA                          1               0       22     180
24 months   ki0047075b-MAL-ED          INDIA                          1               1        8     180
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      136     169
Birth       ki0047075b-MAL-ED          NEPAL                          0               1       12     169
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       19     169
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        2     169
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      141     167
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        5     167
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       20     167
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        1     167
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      114     162
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       28     162
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       15     162
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        5     162
Birth       ki0047075b-MAL-ED          PERU                           0               0      248     279
Birth       ki0047075b-MAL-ED          PERU                           0               1       25     279
Birth       ki0047075b-MAL-ED          PERU                           1               0        5     279
Birth       ki0047075b-MAL-ED          PERU                           1               1        1     279
6 months    ki0047075b-MAL-ED          PERU                           0               0      196     253
6 months    ki0047075b-MAL-ED          PERU                           0               1       52     253
6 months    ki0047075b-MAL-ED          PERU                           1               0        5     253
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     253
24 months   ki0047075b-MAL-ED          PERU                           0               0      116     186
24 months   ki0047075b-MAL-ED          PERU                           0               1       66     186
24 months   ki0047075b-MAL-ED          PERU                           1               0        3     186
24 months   ki0047075b-MAL-ED          PERU                           1               1        1     186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      218     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       22     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       16     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        4     260
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      159     213
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       39     213
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     213
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     213
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      116     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       70     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       12     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     200
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      104     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       12     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       93     113
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       18     113
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2     113
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     113
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       37      97
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       58      97
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2      97
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0      97
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       65      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        9      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        9      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2      85
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0       53      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       20      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       14      91
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        4      91
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0       21      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1       53      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        4      93
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       15      93
Birth       ki1000108-IRC              INDIA                          0               0      232     369
Birth       ki1000108-IRC              INDIA                          0               1       24     369
Birth       ki1000108-IRC              INDIA                          1               0      111     369
Birth       ki1000108-IRC              INDIA                          1               1        2     369
6 months    ki1000108-IRC              INDIA                          0               0      203     387
6 months    ki1000108-IRC              INDIA                          0               1       53     387
6 months    ki1000108-IRC              INDIA                          1               0       96     387
6 months    ki1000108-IRC              INDIA                          1               1       35     387
24 months   ki1000108-IRC              INDIA                          0               0      162     388
24 months   ki1000108-IRC              INDIA                          0               1       94     388
24 months   ki1000108-IRC              INDIA                          1               0       69     388
24 months   ki1000108-IRC              INDIA                          1               1       63     388
6 months    ki1000109-EE               PAKISTAN                       0               0        3       6
6 months    ki1000109-EE               PAKISTAN                       0               1        2       6
6 months    ki1000109-EE               PAKISTAN                       1               0        1       6
6 months    ki1000109-EE               PAKISTAN                       1               1        0       6
Birth       ki1000109-EE               PAKISTAN                       0               0        0       2
Birth       ki1000109-EE               PAKISTAN                       0               1        1       2
Birth       ki1000109-EE               PAKISTAN                       1               0        1       2
Birth       ki1000109-EE               PAKISTAN                       1               1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       0               0        5       6
Birth       ki1000109-ResPak           PAKISTAN                       0               1        1       6
6 months    ki1000109-ResPak           PAKISTAN                       0               0       36      75
6 months    ki1000109-ResPak           PAKISTAN                       0               1       27      75
6 months    ki1000109-ResPak           PAKISTAN                       1               0        6      75
6 months    ki1000109-ResPak           PAKISTAN                       1               1        6      75
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      830    1209
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1      241    1209
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0       89    1209
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       49    1209
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0      132     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1       23     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        2     166
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0      176     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1      127     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       34     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       30     367
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               0      281     510
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               1       86     510
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0      104     510
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1       39     510
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               0      134     406
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               1      159     406
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       56     406
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1       57     406
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0       20      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       19      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0      23
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0       16      23
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        4      23
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0        3      23
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0      23
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0       12      16
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        2      16
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0        1      16
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1      16
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0       12      15
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        3      15
Birth       ki1101329-Keneba           GAMBIA                         0               0     1430    1537
Birth       ki1101329-Keneba           GAMBIA                         0               1       74    1537
Birth       ki1101329-Keneba           GAMBIA                         1               0       29    1537
Birth       ki1101329-Keneba           GAMBIA                         1               1        4    1537
6 months    ki1101329-Keneba           GAMBIA                         0               0     1740    2077
6 months    ki1101329-Keneba           GAMBIA                         0               1      259    2077
6 months    ki1101329-Keneba           GAMBIA                         1               0       49    2077
6 months    ki1101329-Keneba           GAMBIA                         1               1       29    2077
24 months   ki1101329-Keneba           GAMBIA                         0               0     1094    1715
24 months   ki1101329-Keneba           GAMBIA                         0               1      541    1715
24 months   ki1101329-Keneba           GAMBIA                         1               0       49    1715
24 months   ki1101329-Keneba           GAMBIA                         1               1       31    1715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      204     294
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1       84     294
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0        1     294
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        5     294
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0       34      52
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       11      52
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        5      52
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        2      52
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0       22      44
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       19      44
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        2      44
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        1      44
Birth       ki1114097-CMIN             BANGLADESH                     0               0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     0               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1               0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1        1       8
Birth       ki1114097-CMIN             BRAZIL                         0               0      102     111
Birth       ki1114097-CMIN             BRAZIL                         0               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         1               0        8     111
Birth       ki1114097-CMIN             BRAZIL                         1               1        0     111
6 months    ki1114097-CMIN             BRAZIL                         0               0       85     101
6 months    ki1114097-CMIN             BRAZIL                         0               1        9     101
6 months    ki1114097-CMIN             BRAZIL                         1               0        7     101
6 months    ki1114097-CMIN             BRAZIL                         1               1        0     101
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               0      126     174
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0               1       43     174
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               0        2     174
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               1        3     174
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               0      291     317
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0               1       19     317
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               0        7     317
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               1        0     317
6 months    ki1114097-CMIN             PERU                           0               0       88      96
6 months    ki1114097-CMIN             PERU                           0               1        7      96
6 months    ki1114097-CMIN             PERU                           1               0        1      96
6 months    ki1114097-CMIN             PERU                           1               1        0      96
24 months   ki1114097-CMIN             PERU                           0               0       32      41
24 months   ki1114097-CMIN             PERU                           0               1        8      41
24 months   ki1114097-CMIN             PERU                           1               0        1      41
24 months   ki1114097-CMIN             PERU                           1               1        0      41
Birth       ki1114097-CMIN             PERU                           0               0       10      10
6 months    ki1114097-CONTENT          PERU                           0               0       48      55
6 months    ki1114097-CONTENT          PERU                           0               1        7      55
24 months   ki1114097-CONTENT          PERU                           0               0       39      46
24 months   ki1114097-CONTENT          PERU                           0               1        7      46
Birth       ki1114097-CONTENT          PERU                           0               0        2       2
Birth       ki1119695-PROBIT           BELARUS                        0               0    10910   13877
Birth       ki1119695-PROBIT           BELARUS                        0               1       26   13877
Birth       ki1119695-PROBIT           BELARUS                        1               0     2941   13877
Birth       ki1119695-PROBIT           BELARUS                        1               1        0   13877
6 months    ki1119695-PROBIT           BELARUS                        0               0     9733   13170
6 months    ki1119695-PROBIT           BELARUS                        0               1      631   13170
6 months    ki1119695-PROBIT           BELARUS                        1               0     2638   13170
6 months    ki1119695-PROBIT           BELARUS                        1               1      168   13170
24 months   ki1119695-PROBIT           BELARUS                        0               0     2869    4031
24 months   ki1119695-PROBIT           BELARUS                        0               1      251    4031
24 months   ki1119695-PROBIT           BELARUS                        1               0      820    4031
24 months   ki1119695-PROBIT           BELARUS                        1               1       91    4031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    10252   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      604   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2146   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       90   13092
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     5662    7749
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      867    7749
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      933    7749
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      287    7749
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      133     389
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      205     389
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       17     389
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       34     389
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      151     910
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      608     910
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       35     910
24 months   ki1135781-COHORTS          GUATEMALA                      1               1      116     910
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      351     776
6 months    ki1135781-COHORTS          GUATEMALA                      0               1      251     776
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      115     776
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       59     776
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      540     762
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       24     762
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      198     762
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        0     762
Birth       ki1135781-COHORTS          INDIA                          0               0     4772    6231
Birth       ki1135781-COHORTS          INDIA                          0               1      325    6231
Birth       ki1135781-COHORTS          INDIA                          1               0     1074    6231
Birth       ki1135781-COHORTS          INDIA                          1               1       60    6231
6 months    ki1135781-COHORTS          INDIA                          0               0     4414    6379
6 months    ki1135781-COHORTS          INDIA                          0               1      834    6379
6 months    ki1135781-COHORTS          INDIA                          1               0      932    6379
6 months    ki1135781-COHORTS          INDIA                          1               1      199    6379
24 months   ki1135781-COHORTS          INDIA                          0               0     2296    4970
24 months   ki1135781-COHORTS          INDIA                          0               1     1865    4970
24 months   ki1135781-COHORTS          INDIA                          1               0      444    4970
24 months   ki1135781-COHORTS          INDIA                          1               1      365    4970
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2373    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1       75    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      451    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       11    2910
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     1754    2587
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      431    2587
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      332    2587
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       70    2587
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      770    2345
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1217    2345
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      149    2345
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      209    2345
6 months    ki1148112-LCNI-5           MALAWI                         0               0      515     826
6 months    ki1148112-LCNI-5           MALAWI                         0               1      297     826
6 months    ki1148112-LCNI-5           MALAWI                         1               0        8     826
6 months    ki1148112-LCNI-5           MALAWI                         1               1        6     826
24 months   ki1148112-LCNI-5           MALAWI                         0               0      313     570
24 months   ki1148112-LCNI-5           MALAWI                         0               1      247     570
24 months   ki1148112-LCNI-5           MALAWI                         1               0        4     570
24 months   ki1148112-LCNI-5           MALAWI                         1               1        6     570
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    11956   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1     2247   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     1319   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      223   15745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0    10250   13962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1     2220   13962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     1209   13962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      283   13962
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0     3524    7067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1     2744    7067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      465    7067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      334    7067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     2376    4058
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1     1335    4058
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0      205    4058
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      142    4058
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     2998    4170
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      795    4170
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0      277    4170
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      100    4170
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0      547     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      100     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0       28     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        8     683


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       stunted
## enwast  0  1
##      0 39  7
##      1  0  0
##       stunted
## enwast  0  1
##      0 48  7
##      1  0  0
##       stunted
## enwast  0
##      0 10
##      1  0
```




# Results Detail

## Results Plots
![](/tmp/090dee23-7be9-44b9-8d27-bb821a018c5c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/090dee23-7be9-44b9-8d27-bb821a018c5c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/090dee23-7be9-44b9-8d27-bb821a018c5c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/090dee23-7be9-44b9-8d27-bb821a018c5c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA         0                    NA                0.1411765   0.0887043   0.1936486
Birth       ki0047075b-MAL-ED          INDIA         1                    NA                0.1818182   0.0498993   0.3137371
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0556374   0.0513254   0.0599495
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0402505   0.0321035   0.0483974
Birth       ki1135781-COHORTS          INDIA         0                    NA                0.0637630   0.0570548   0.0704711
Birth       ki1135781-COHORTS          INDIA         1                    NA                0.0529101   0.0398802   0.0659400
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0306373   0.0238094   0.0374651
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0238095   0.0099054   0.0377137
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.1582060   0.1515864   0.1648256
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1446174   0.1256148   0.1636201
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1545595   0.1236384   0.1854806
Birth       kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2222222   0.0728779   0.3715666
6 months    ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.1648352   0.1108085   0.2188618
6 months    ki0047075b-MAL-ED          BANGLADESH    1                    NA                0.1538462   0.0403533   0.2673390
6 months    ki0047075b-MAL-ED          INDIA         0                    NA                0.1886792   0.1277031   0.2496554
6 months    ki0047075b-MAL-ED          INDIA         1                    NA                0.1666667   0.0329538   0.3003795
6 months    ki1000108-IRC              INDIA         0                    NA                0.2070313   0.1573336   0.2567289
6 months    ki1000108-IRC              INDIA         1                    NA                0.2671756   0.1913051   0.3430460
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                0.4285714   0.3055488   0.5515941
6 months    ki1000109-ResPak           PAKISTAN      1                    NA                0.5000000   0.2151985   0.7848015
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.2250233   0.2012769   0.2487698
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.3550725   0.2274837   0.4826613
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.4191419   0.3635086   0.4747752
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.4687500   0.3463248   0.5911752
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2343324   0.1909536   0.2777112
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2727273   0.1996606   0.3457939
6 months    ki1101329-Keneba           GAMBIA        0                    NA                0.1295648   0.1148397   0.1442899
6 months    ki1101329-Keneba           GAMBIA        1                    NA                0.3717949   0.2645176   0.4790722
6 months    ki1119695-PROBIT           BELARUS       0                    NA                0.0608838   0.0471041   0.0746636
6 months    ki1119695-PROBIT           BELARUS       1                    NA                0.0598717   0.0396818   0.0800616
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1327922   0.1245602   0.1410241
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2352459   0.2114436   0.2590482
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                0.4169435   0.3775319   0.4563551
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                0.3390805   0.2686956   0.4094653
6 months    ki1135781-COHORTS          INDIA         0                    NA                0.1589177   0.1490255   0.1688098
6 months    ki1135781-COHORTS          INDIA         1                    NA                0.1759505   0.1537571   0.1981438
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1972540   0.1805659   0.2139422
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1741294   0.1370518   0.2112069
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                0.3657635   0.3326154   0.3989117
6 months    ki1148112-LCNI-5           MALAWI        1                    NA                0.4285714   0.1691895   0.6879534
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.1780273   0.1702223   0.1858322
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1896783   0.1671573   0.2121992
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.2095966   0.1948830   0.2243103
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2652520   0.2155111   0.3149929
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.4375000   0.3604354   0.5145646
24 months   ki0047075b-MAL-ED          BANGLADESH    1                    NA                0.3714286   0.2109395   0.5319176
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                0.4133333   0.3343095   0.4923572
24 months   ki0047075b-MAL-ED          INDIA         1                    NA                0.2666667   0.1079830   0.4253504
24 months   ki0047075b-MAL-ED          NEPAL         0                    NA                0.1971831   0.1315396   0.2628266
24 months   ki0047075b-MAL-ED          NEPAL         1                    NA                0.2500000   0.0596389   0.4403611
24 months   ki1000108-IRC              INDIA         0                    NA                0.3671875   0.3080627   0.4263123
24 months   ki1000108-IRC              INDIA         1                    NA                0.4772727   0.3919544   0.5625911
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.5426621   0.4855494   0.5997749
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.5044248   0.4121257   0.5967239
24 months   ki1101329-Keneba           GAMBIA        0                    NA                0.3308869   0.3080726   0.3537011
24 months   ki1101329-Keneba           GAMBIA        1                    NA                0.3875000   0.2807129   0.4942871
24 months   ki1119695-PROBIT           BELARUS       0                    NA                0.0804487   0.0484863   0.1124111
24 months   ki1119695-PROBIT           BELARUS       1                    NA                0.0998902   0.0553838   0.1443967
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.6065089   0.5543612   0.6586565
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.6666667   0.5371231   0.7962102
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                0.8010540   0.7726379   0.8294701
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                0.7682119   0.7008702   0.8355537
24 months   ki1135781-COHORTS          INDIA         0                    NA                0.4482096   0.4330976   0.4633215
24 months   ki1135781-COHORTS          INDIA         1                    NA                0.4511743   0.4168812   0.4854674
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                0.6124811   0.5910554   0.6339068
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                0.5837989   0.5327269   0.6348708
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.4377792   0.4229880   0.4525704
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.4180225   0.3789606   0.4570844
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.3597413   0.3404300   0.3790526
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.4092219   0.3507141   0.4677297


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA         NA                   NA                0.1477833   0.0988437   0.1967228
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0530095   0.0491714   0.0568475
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0617878   0.0558091   0.0677665
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0295533   0.0233992   0.0357074
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1568752   0.1505743   0.1631761
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1581259   0.1278797   0.1883722
6 months    ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1628959   0.1141002   0.2116916
6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.1851852   0.1296585   0.2407119
6 months    ki1000108-IRC              INDIA         NA                   NA                0.2273902   0.1855763   0.2692041
6 months    ki1000109-ResPak           PAKISTAN      NA                   NA                0.4400000   0.3269026   0.5530974
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2398677   0.2129210   0.2668143
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.4277929   0.3771054   0.4784804
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2450980   0.2077296   0.2824664
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.1386615   0.1237954   0.1535277
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0606682   0.0476558   0.0736805
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1489224   0.1409953   0.1568496
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.3994845   0.3650012   0.4339679
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.1619376   0.1528966   0.1709786
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1936606   0.1784301   0.2088911
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.3668281   0.3339419   0.3997143
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1792723   0.1716642   0.1868804
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.2146283   0.2007318   0.2285248
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.4256410   0.3560648   0.4952172
24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.3888889   0.3174731   0.4603047
24 months   ki0047075b-MAL-ED          NEPAL         NA                   NA                0.2037037   0.1414920   0.2659154
24 months   ki1000108-IRC              INDIA         NA                   NA                0.4046392   0.3557383   0.4535401
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.5320197   0.4834240   0.5806154
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.3335277   0.3112074   0.3558480
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0848425   0.0564317   0.1132533
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.6143959   0.5659645   0.6628273
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.7956044   0.7693894   0.8218194
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.4486922   0.4348633   0.4625210
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.6081023   0.5883398   0.6278649
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.4355455   0.4213794   0.4497116
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.3639724   0.3455784   0.3823664


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA         1                    0                 1.2878788   0.5699441   2.9101656
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 0.7234419   0.5824737   0.8985268
Birth       ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         1                    0                 0.8297924   0.6348444   1.0846051
Birth       ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   1                    0                 0.7771429   0.4159519   1.4519732
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    0                 0.9141082   0.7971048   1.0482859
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.4377778   0.7114932   2.9054456
6 months    ki0047075b-MAL-ED          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH    1                    0                 0.9333333   0.4163489   2.0922623
6 months    ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA         1                    0                 0.8833333   0.3719579   2.0977581
6 months    ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         1                    0                 1.2905084   0.8897613   1.8717515
6 months    ki1000109-ResPak           PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN      1                    0                 1.1666667   0.6165013   2.2077992
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    0                 1.5779361   1.0958203   2.2721631
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.1183563   0.8343466   1.4990423
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.1638478   0.8403699   1.6118398
6 months    ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA        1                    0                 2.8695674   2.1044341   3.9128890
6 months    ki1119695-PROBIT           BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       1                    0                 0.9833761   0.7063104   1.3691270
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.7715346   1.5733162   1.9947261
6 months    ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     1                    0                 0.8132527   0.6473954   1.0216013
6 months    ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         1                    0                 1.1071801   0.9619036   1.2743976
6 months    ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   1                    0                 0.8827671   0.7020038   1.1100764
6 months    ki1148112-LCNI-5           MALAWI        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        1                    0                 1.1717172   0.6353992   2.1607222
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    0                 1.0654451   0.9428546   1.2039750
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.2655356   1.0323057   1.5514593
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH    1                    0                 0.8489796   0.5324152   1.3537674
24 months   ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA         1                    0                 0.6451613   0.3453221   1.2053473
24 months   ki0047075b-MAL-ED          NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL         1                    0                 1.2678571   0.5522746   2.9106206
24 months   ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         1                    0                 1.2998066   1.0218608   1.6533535
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    0                 0.9295375   0.7526496   1.1479977
24 months   ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA        1                    0                 1.1710952   0.8814962   1.5558364
24 months   ki1119695-PROBIT           BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       1                    0                 1.2416634   0.7230985   2.1321135
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.0991870   0.8887700   1.3594204
24 months   ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     1                    0                 0.9590014   0.8724686   1.0541167
24 months   ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         1                    0                 1.0066146   0.9262990   1.0938940
24 months   ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   1                    0                 0.9531704   0.8674663   1.0473419
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    0                 0.9548707   0.8667972   1.0518932
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.1375449   0.9768172   1.3247191


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA         0                    NA                 0.0066068   -0.0165648    0.0297784
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                -0.0026280   -0.0042054   -0.0010505
Birth       ki1135781-COHORTS          INDIA         0                    NA                -0.0019752   -0.0046444    0.0006940
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0010840   -0.0035449    0.0013769
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0013308   -0.0032900    0.0006283
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0035664   -0.0045137    0.0116465
6 months    ki0047075b-MAL-ED          BANGLADESH    0                    NA                -0.0019392   -0.0241278    0.0202493
6 months    ki0047075b-MAL-ED          INDIA         0                    NA                -0.0034941   -0.0268494    0.0198612
6 months    ki1000108-IRC              INDIA         0                    NA                 0.0203589   -0.0104736    0.0511914
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.0114286   -0.0385665    0.0614236
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0148443   -0.0019288    0.0316174
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0086510   -0.0148785    0.0321805
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0107656   -0.0131073    0.0346385
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.0090967    0.0045734    0.0136201
6 months    ki1119695-PROBIT           BELARUS       0                    NA                -0.0002156   -0.0044452    0.0040140
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0161303    0.0120790    0.0201816
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0174590   -0.0356908    0.0007728
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0030199   -0.0012911    0.0073310
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0035934   -0.0099199    0.0027331
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0010645   -0.0034019    0.0055310
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0012450   -0.0012194    0.0037095
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0050317    0.0003155    0.0097478
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                -0.0118590   -0.0440122    0.0202942
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                -0.0244444   -0.0550556    0.0061667
24 months   ki0047075b-MAL-ED          NEPAL         0                    NA                 0.0065206   -0.0184833    0.0315245
24 months   ki1000108-IRC              INDIA         0                    NA                 0.0374517    0.0017572    0.0731462
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                -0.0106424   -0.0408980    0.0196131
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0026408   -0.0024841    0.0077658
24 months   ki1119695-PROBIT           BELARUS       0                    NA                 0.0043938   -0.0069033    0.0156908
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0078870   -0.0105324    0.0263064
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0054496   -0.0176040    0.0067047
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0004826   -0.0056176    0.0065827
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0043788   -0.0128443    0.0040868
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0022337   -0.0068156    0.0023482
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0042311   -0.0009662    0.0094284


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA         0                    NA                 0.0447059   -0.1251384    0.1889115
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                -0.0495754   -0.0795614   -0.0204222
Birth       ki1135781-COHORTS          INDIA         0                    NA                -0.0319669   -0.0759832    0.0102489
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0366792   -0.1230298    0.0430318
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0084832   -0.0210503    0.0039291
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0225542   -0.0298726    0.0723122
6 months    ki0047075b-MAL-ED          BANGLADESH    0                    NA                -0.0119048   -0.1576790    0.1155137
6 months    ki0047075b-MAL-ED          INDIA         0                    NA                -0.0188679   -0.1530474    0.0996971
6 months    ki1000108-IRC              INDIA         0                    NA                 0.0895330   -0.0561379    0.2151119
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.0259740   -0.0946609    0.1333146
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0618854   -0.0073401    0.1263537
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0202224   -0.0363784    0.0737321
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0439237   -0.0585153    0.1364491
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.0656040    0.0329598    0.0971462
6 months    ki1119695-PROBIT           BELARUS       0                    NA                -0.0035545   -0.0757346    0.0637825
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.1083133    0.0811265    0.1346958
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0437038   -0.0904179    0.0010091
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0186487   -0.0083242    0.0449001
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0185551   -0.0517354    0.0135784
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0029020   -0.0093489    0.0150043
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0069450   -0.0068767    0.0205769
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0234437    0.0011540    0.0452359
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                -0.0278614   -0.1063245    0.0450368
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                -0.0628571   -0.1448805    0.0132897
24 months   ki0047075b-MAL-ED          NEPAL         0                    NA                 0.0320102   -0.0986350    0.1471197
24 months   ki1000108-IRC              INDIA         0                    NA                 0.0925557   -0.0002698    0.1767670
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                -0.0200038   -0.0785292    0.0353458
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0079179   -0.0075677    0.0231655
24 months   ki1119695-PROBIT           BELARUS       0                    NA                 0.0517872   -0.0951227    0.1789892
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0128370   -0.0176404    0.0424016
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0068497   -0.0222546    0.0083231
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0010755   -0.0126128    0.0145789
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0072007   -0.0212229    0.0066289
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0051285   -0.0157088    0.0053416
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0116248   -0.0027941    0.0258363
