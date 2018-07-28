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

**Intervention Variable:** enwast

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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

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
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
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
![](/tmp/7389f457-70b1-4dbb-8597-4f6b3987020a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7389f457-70b1-4dbb-8597-4f6b3987020a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7389f457-70b1-4dbb-8597-4f6b3987020a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7389f457-70b1-4dbb-8597-4f6b3987020a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          INDIA         0                    NA                0.1545657    0.1036966   0.2054347
Birth       ki0047075b-MAL-ED          INDIA         1                    NA                0.6157475    0.5381970   0.6932981
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0555150    0.0512372   0.0597928
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0412944    0.0336652   0.0489236
Birth       ki1135781-COHORTS          INDIA         0                    NA                0.0638423    0.0571716   0.0705130
Birth       ki1135781-COHORTS          INDIA         1                    NA                0.0523602    0.0402909   0.0644296
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0305954    0.0237884   0.0374025
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0158555    0.0031404   0.0285707
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.1586225    0.1520027   0.1652422
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1412523    0.1236800   0.1588246
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1545595    0.1236384   0.1854806
Birth       kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2222222    0.0728779   0.3715666
6 months    ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.1495910    0.0967632   0.2024188
6 months    ki0047075b-MAL-ED          BANGLADESH    1                    NA                0.0316364   -0.0517552   0.1150279
6 months    ki0047075b-MAL-ED          INDIA         0                    NA                0.1954958    0.1357569   0.2552347
6 months    ki0047075b-MAL-ED          INDIA         1                    NA                0.4592398    0.3524469   0.5660326
6 months    ki1000108-IRC              INDIA         0                    NA                0.2093976    0.1600671   0.2587280
6 months    ki1000108-IRC              INDIA         1                    NA                0.2767836    0.2026133   0.3509540
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                0.4285714    0.3055488   0.5515941
6 months    ki1000109-ResPak           PAKISTAN      1                    NA                0.5000000    0.2151985   0.7848015
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.2247891    0.2012701   0.2483082
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.3292797    0.2075881   0.4509714
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.4227531    0.3675167   0.4779896
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.4519837    0.3338510   0.5701163
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2399865    0.1978999   0.2820730
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3127420    0.2489972   0.3764867
6 months    ki1101329-Keneba           GAMBIA        0                    NA                0.1298186    0.1151034   0.1445339
6 months    ki1101329-Keneba           GAMBIA        1                    NA                0.3363101    0.2468285   0.4257917
6 months    ki1119695-PROBIT           BELARUS       0                    NA                0.0610222    0.0473053   0.0747391
6 months    ki1119695-PROBIT           BELARUS       1                    NA                0.0592801    0.0406377   0.0779224
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1328809    0.1246957   0.1410661
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2416683    0.2199285   0.2634081
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                0.4210959    0.3828045   0.4593873
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                0.3757897    0.3190897   0.4324896
6 months    ki1135781-COHORTS          INDIA         0                    NA                0.1587031    0.1488786   0.1685277
6 months    ki1135781-COHORTS          INDIA         1                    NA                0.1728439    0.1522333   0.1934545
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1968033    0.1802214   0.2133852
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1876121    0.1524502   0.2227740
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                0.3662845    0.3331573   0.3994117
6 months    ki1148112-LCNI-5           MALAWI        1                    NA                0.3973439    0.1599150   0.6347728
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.1781560    0.1703598   0.1859522
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1928001    0.1714745   0.2141256
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.2095453    0.1948807   0.2242100
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2561151    0.2083123   0.3039180
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.4369004    0.3608651   0.5129356
24 months   ki0047075b-MAL-ED          BANGLADESH    1                    NA                0.3745584    0.2144953   0.5346216
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                0.4076982    0.3302758   0.4851207
24 months   ki0047075b-MAL-ED          INDIA         1                    NA                0.1954401    0.0839148   0.3069653
24 months   ki0047075b-MAL-ED          NEPAL         0                    NA                0.2125611    0.1477685   0.2773538
24 months   ki0047075b-MAL-ED          NEPAL         1                    NA                0.8442388    0.7475437   0.9409339
24 months   ki1000108-IRC              INDIA         0                    NA                0.3607501    0.3023663   0.4191339
24 months   ki1000108-IRC              INDIA         1                    NA                0.4605730    0.3779058   0.5432402
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.5430000    0.4870543   0.5989457
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.4634059    0.3791431   0.5476687
24 months   ki1101329-Keneba           GAMBIA        0                    NA                0.3309587    0.3081812   0.3537363
24 months   ki1101329-Keneba           GAMBIA        1                    NA                0.3074633    0.2239210   0.3910057
24 months   ki1119695-PROBIT           BELARUS       0                    NA                0.0809853    0.0496979   0.1122727
24 months   ki1119695-PROBIT           BELARUS       1                    NA                0.0979916    0.0594991   0.1364841
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.6037316    0.5526847   0.6547785
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.6863229    0.6076294   0.7650164
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                0.7987982    0.7710221   0.8265742
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                0.7175161    0.6693760   0.7656562
24 months   ki1135781-COHORTS          INDIA         0                    NA                0.4461128    0.4311665   0.4610590
24 months   ki1135781-COHORTS          INDIA         1                    NA                0.4496961    0.4187496   0.4806426
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                0.6082890    0.5870697   0.6295083
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                0.6074830    0.5616166   0.6533494
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                0.4371090    0.4224292   0.4517887
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.4097668    0.3743078   0.4452258
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.3597129    0.3404294   0.3789963
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.4040391    0.3490424   0.4590358


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
Birth       ki0047075b-MAL-ED          INDIA         1                    0                 3.9837277   2.8188286   5.6300288
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 0.7438426   0.6091183   0.9083651
Birth       ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         1                    0                 0.8201499   0.6374733   1.0551749
Birth       ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   1                    0                 0.5182320   0.2260410   1.1881229
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    0                 0.8904937   0.7818169   1.0142771
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.4377778   0.7114932   2.9054456
6 months    ki0047075b-MAL-ED          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH    1                    0                 0.2114858   0.0148016   3.0217182
6 months    ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA         1                    0                 2.3491027   1.6297162   3.3860396
6 months    ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         1                    0                 1.3218093   0.9253485   1.8881317
6 months    ki1000109-ResPak           PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN      1                    0                 1.1666667   0.6165013   2.2077992
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    0                 1.4648384   1.0096481   2.1252470
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.0691432   0.8013186   1.4264828
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.3031651   1.0054846   1.6889760
6 months    ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA        1                    0                 2.5906153   1.9426961   3.4546257
6 months    ki1119695-PROBIT           BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       1                    0                 0.9714506   0.7226032   1.3059951
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.8186839   1.6320411   2.0266715
6 months    ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     1                    0                 0.8924088   0.7521923   1.0587631
6 months    ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         1                    0                 1.0891022   0.9530201   1.2446154
6 months    ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   1                    0                 0.9532975   0.7775423   1.1687805
6 months    ki1148112-LCNI-5           MALAWI        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        1                    0                 1.0847957   0.5936786   1.9821867
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    0                 1.0821979   0.9658132   1.2126074
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.2222421   0.9981871   1.4965889
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH    1                    0                 0.8573086   0.5430350   1.3534634
24 months   ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA         1                    0                 0.4793743   0.2658006   0.8645570
24 months   ki0047075b-MAL-ED          NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL         1                    0                 3.9717456   2.8754242   5.4860645
24 months   ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         1                    0                 1.2767092   1.0022014   1.6264059
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    1                    0                 0.8534179   0.6956772   1.0469253
24 months   ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA        1                    0                 0.9290081   0.7028715   1.2279001
24 months   ki1119695-PROBIT           BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       1                    0                 1.2099921   0.7693449   1.9030227
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.1368013   0.9896281   1.3058615
24 months   ki1135781-COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     1                    0                 0.8982446   0.8353574   0.9658660
24 months   ki1135781-COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         1                    0                 1.0080323   0.9351146   1.0866360
24 months   ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   1                    0                 0.9986750   0.9205860   1.0833879
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    0                 0.9374477   0.8573433   1.0250364
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    1                    0                 1.1232266   0.9714695   1.2986903


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA         0                    NA                -0.0067824   -0.0283959    0.0148310
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                -0.0025055   -0.0040638   -0.0009472
Birth       ki1135781-COHORTS          INDIA         0                    NA                -0.0020544   -0.0046785    0.0005696
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0010422   -0.0034453    0.0013610
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0017473   -0.0036955    0.0002009
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0035664   -0.0045137    0.0116465
6 months    ki0047075b-MAL-ED          BANGLADESH    0                    NA                 0.0133049   -0.0082455    0.0348554
6 months    ki0047075b-MAL-ED          INDIA         0                    NA                -0.0103106   -0.0317585    0.0111372
6 months    ki1000108-IRC              INDIA         0                    NA                 0.0179926   -0.0127113    0.0486966
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.0114286   -0.0385665    0.0614236
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0150785   -0.0018437    0.0320007
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0050398   -0.0174579    0.0275375
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0051116   -0.0167494    0.0269726
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.0088429    0.0044948    0.0131910
6 months    ki1119695-PROBIT           BELARUS       0                    NA                -0.0003540   -0.0041254    0.0034173
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0160416    0.0120689    0.0200142
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0216113   -0.0383826   -0.0048401
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0032345   -0.0009838    0.0074527
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0031427   -0.0092967    0.0030113
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0005435   -0.0035279    0.0046150
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0011163   -0.0012530    0.0034856
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0050830    0.0003629    0.0098030
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                -0.0112593   -0.0429116    0.0203929
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                -0.0188094   -0.0455447    0.0079260
24 months   ki0047075b-MAL-ED          NEPAL         0                    NA                -0.0088574   -0.0315999    0.0138850
24 months   ki1000108-IRC              INDIA         0                    NA                 0.0438891    0.0083682    0.0794099
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                -0.0109803   -0.0393679    0.0174073
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0025690   -0.0022188    0.0073567
24 months   ki1119695-PROBIT           BELARUS       0                    NA                 0.0038571   -0.0059804    0.0136946
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0106643   -0.0069563    0.0282849
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0031938   -0.0139874    0.0075998
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0025794   -0.0031269    0.0082857
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0001866   -0.0079656    0.0075923
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0015635   -0.0059665    0.0028395
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0042595   -0.0009463    0.0094653


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          INDIA         0                    NA                -0.0458943   -0.2060158    0.0929680
Birth       ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                -0.0472651   -0.0769466   -0.0184016
Birth       ki1135781-COHORTS          INDIA         0                    NA                -0.0332499   -0.0765304    0.0082905
Birth       ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0352640   -0.1194948    0.0426293
Birth       kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0111379   -0.0236355    0.0012071
Birth       kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0225542   -0.0298726    0.0723122
6 months    ki0047075b-MAL-ED          BANGLADESH    0                    NA                 0.0816776   -0.0624908    0.2062838
6 months    ki0047075b-MAL-ED          INDIA         0                    NA                -0.0556775   -0.1792265    0.0549272
6 months    ki1000108-IRC              INDIA         0                    NA                 0.0791266   -0.0655182    0.2041358
6 months    ki1000109-ResPak           PAKISTAN      0                    NA                 0.0259740   -0.0946609    0.1333146
6 months    ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0628619   -0.0068797    0.1277729
6 months    ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0117809   -0.0422376    0.0629996
6 months    ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0208552   -0.0723686    0.1059748
6 months    ki1101329-Keneba           GAMBIA        0                    NA                 0.0637733    0.0323959    0.0941332
6 months    ki1119695-PROBIT           BELARUS       0                    NA                -0.0058356   -0.0699109    0.0544024
6 months    ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.1077176    0.0810981    0.1335660
6 months    ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0540980   -0.0972142   -0.0126761
6 months    ki1135781-COHORTS          INDIA         0                    NA                 0.0199735   -0.0064035    0.0456593
6 months    ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0162278   -0.0484975    0.0150487
6 months    ki1148112-LCNI-5           MALAWI        0                    NA                 0.0014818   -0.0096797    0.0125198
6 months    kiGH5241-JiVitA-3          BANGLADESH    0                    NA                 0.0062268   -0.0070600    0.0193383
6 months    kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0236826    0.0013907    0.0454768
24 months   ki0047075b-MAL-ED          BANGLADESH    0                    NA                -0.0264527   -0.1037761    0.0454540
24 months   ki0047075b-MAL-ED          INDIA         0                    NA                -0.0483669   -0.1195866    0.0183223
24 months   ki0047075b-MAL-ED          NEPAL         0                    NA                -0.0434820   -0.1631740    0.0638936
24 months   ki1000108-IRC              INDIA         0                    NA                 0.1084647    0.0161511    0.1921166
24 months   ki1017093-NIH-Birth        BANGLADESH    0                    NA                -0.0206388   -0.0754784    0.0314045
24 months   ki1101329-Keneba           GAMBIA        0                    NA                 0.0077024   -0.0067607    0.0219576
24 months   ki1119695-PROBIT           BELARUS       0                    NA                 0.0454622   -0.0812194    0.1573011
24 months   ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0173574   -0.0117369    0.0456149
24 months   ki1135781-COHORTS          GUATEMALA     0                    NA                -0.0040143   -0.0176812    0.0094691
24 months   ki1135781-COHORTS          INDIA         0                    NA                 0.0057487   -0.0070514    0.0183860
24 months   ki1135781-COHORTS          PHILIPPINES   0                    NA                -0.0003069   -0.0131813    0.0124039
24 months   kiGH5241-JiVitA-3          BANGLADESH    0                    NA                -0.0035897   -0.0137549    0.0064736
24 months   kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0117029   -0.0027363    0.0259341
