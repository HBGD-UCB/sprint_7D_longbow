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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        enwast    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      174     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       27     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       36     241
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     241
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      163     183
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       14     183
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        6     183
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     183
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      146     203
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       24     203
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       27     203
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        6     203
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      136     169
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       12     169
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       19     169
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        2     169
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      248     279
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1       25     279
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        5     279
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        1     279
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      218     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       22     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       16     260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        4     260
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      104     118
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       12     118
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     118
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     118
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       65      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        9      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       14      92
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        4      92
0-6 months    ki1000108-IRC              INDIA                          0                    0      232     388
0-6 months    ki1000108-IRC              INDIA                          0                    1       24     388
0-6 months    ki1000108-IRC              INDIA                          1                    0      126     388
0-6 months    ki1000108-IRC              INDIA                          1                    1        6     388
0-6 months    ki1000109-EE               PAKISTAN                       0                    0        4       7
0-6 months    ki1000109-EE               PAKISTAN                       0                    1        1       7
0-6 months    ki1000109-EE               PAKISTAN                       1                    0        2       7
0-6 months    ki1000109-EE               PAKISTAN                       1                    1        0       7
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0       60      88
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    1       16      88
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0       10      88
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    1        2      88
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0      971    1367
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    1      244    1367
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      116    1367
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1       36    1367
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      206     403
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1      124     403
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       44     403
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       29     403
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0      373     596
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    1       48     596
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0      152     596
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1       23     596
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       19      23
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        1      23
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0        3      23
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        0      23
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       19      20
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1        1      20
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0     2145    2450
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1      204    2450
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0       86    2450
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       15    2450
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      220     292
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1       67     292
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0        0     292
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     292
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       38      53
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1        8      53
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0        5      53
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        2      53
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0        5       8
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    1        0       8
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0        2       8
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    1        1       8
0-6 months    ki1114097-CMIN             BRAZIL                         0                    0      102     111
0-6 months    ki1114097-CMIN             BRAZIL                         0                    1        1     111
0-6 months    ki1114097-CMIN             BRAZIL                         1                    0        8     111
0-6 months    ki1114097-CMIN             BRAZIL                         1                    1        0     111
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0      262     309
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    1       41     309
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0        6     309
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        0     309
0-6 months    ki1114097-CMIN             PERU                           0                    0      101     107
0-6 months    ki1114097-CMIN             PERU                           0                    1        5     107
0-6 months    ki1114097-CMIN             PERU                           1                    0        1     107
0-6 months    ki1114097-CMIN             PERU                           1                    1        0     107
0-6 months    ki1114097-CONTENT          PERU                           0                    0       49      55
0-6 months    ki1114097-CONTENT          PERU                           0                    1        6      55
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0    10910   13882
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1       26   13882
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0     2946   13882
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1        0   13882
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    10272   13119
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      610   13119
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     2147   13119
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       90   13119
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0      605     883
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1       78     883
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0      199     883
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1        1     883
0-6 months    ki1135781-COHORTS          INDIA                          0                    0     5152    6765
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      402    6765
0-6 months    ki1135781-COHORTS          INDIA                          1                    0     1144    6765
0-6 months    ki1135781-COHORTS          INDIA                          1                    1       67    6765
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0     2374    2911
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1       75    2911
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0      451    2911
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       11    2911
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    0      169     270
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    1       97     270
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0        4     270
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        0     270
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0    16089   22138
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     3546   22138
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2053   22138
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      450   22138
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3320    4611
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      881    4611
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      306    4611
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      104    4611
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       98     186
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       55     186
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       21     186
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       12     186
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      150     162
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        6     162
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        5     162
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     162
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       87     155
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       42     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       22     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        4     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      122     160
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       19     160
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       15     160
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        4     160
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      139     214
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       70     214
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        5     214
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     214
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      128     188
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       46     188
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       12     188
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     188
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       32      91
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       57      91
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1      91
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1      91
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       26      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       37      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        0      78
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       15      78
6-24 months   ki1000108-IRC              INDIA                          0                    0      167     324
6-24 months   ki1000108-IRC              INDIA                          0                    1       51     324
6-24 months   ki1000108-IRC              INDIA                          1                    0       77     324
6-24 months   ki1000108-IRC              INDIA                          1                    1       29     324
6-24 months   ki1000109-EE               PAKISTAN                       0                    0        2       4
6-24 months   ki1000109-EE               PAKISTAN                       0                    1        1       4
6-24 months   ki1000109-EE               PAKISTAN                       1                    0        0       4
6-24 months   ki1000109-EE               PAKISTAN                       1                    1        1       4
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0       36      47
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    1        3      47
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0        7      47
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        1      47
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0      569     925
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1      259     925
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0       67     925
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       30     925
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       82     218
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       98     218
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       16     218
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       22     218
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0      158     411
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1      137     411
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       69     411
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       47     411
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       11      21
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        7      21
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0        2      21
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        1      21
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       10      12
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1        2      12
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1738    2369
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1      534    2369
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0       76    2369
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       21    2369
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      150     189
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       38     189
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     189
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     1934    2590
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      322    2590
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      253    2590
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       81    2590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       19      42
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       18      42
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        4      42
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        1      42
6-24 months   ki1114097-CMIN             BRAZIL                         0                    0       78      98
6-24 months   ki1114097-CMIN             BRAZIL                         0                    1       13      98
6-24 months   ki1114097-CMIN             BRAZIL                         1                    0        6      98
6-24 months   ki1114097-CMIN             BRAZIL                         1                    1        1      98
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0      349     428
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    1       68     428
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0        9     428
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1        2     428
6-24 months   ki1114097-CMIN             PERU                           0                    0       82      95
6-24 months   ki1114097-CMIN             PERU                           0                    1       12      95
6-24 months   ki1114097-CMIN             PERU                           1                    0        1      95
6-24 months   ki1114097-CMIN             PERU                           1                    1        0      95
6-24 months   ki1114097-CONTENT          PERU                           0                    0       46      48
6-24 months   ki1114097-CONTENT          PERU                           0                    1        2      48
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0    10317   13659
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1      439   13659
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0     2757   13659
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1      146   13659
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     6535    8822
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      970    8822
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1109    8822
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      208    8822
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      182     518
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      224     518
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       42     518
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       70     518
6-24 months   ki1135781-COHORTS          INDIA                          0                    0     4459    5400
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      941    5400
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      926    2170
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      907    2170
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      184    2170
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1      153    2170
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      396     580
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1      176     580
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0        6     580
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        2     580
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     8740   12012
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2005   12012
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1060   12012
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      207   12012
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2490    3822
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1020    3822
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      220    3822
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       92    3822
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      104     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       97     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       24     241
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       16     241
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      155     183
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       22     183
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        5     183
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     183
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       86     203
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       84     203
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       22     203
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       11     203
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      117     169
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       31     169
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       16     169
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        5     169
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      153     279
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1      120     279
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        5     279
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     279
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      149     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       91     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     260
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     260
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       38     118
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       78     118
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     118
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     118
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       52      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        0      93
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       19      93
0-24 months   ki1000108-IRC              INDIA                          0                    0      147     388
0-24 months   ki1000108-IRC              INDIA                          0                    1      109     388
0-24 months   ki1000108-IRC              INDIA                          1                    0       67     388
0-24 months   ki1000108-IRC              INDIA                          1                    1       65     388
0-24 months   ki1000109-EE               PAKISTAN                       0                    0        1       7
0-24 months   ki1000109-EE               PAKISTAN                       0                    1        4       7
0-24 months   ki1000109-EE               PAKISTAN                       1                    0        1       7
0-24 months   ki1000109-EE               PAKISTAN                       1                    1        1       7
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0       38      88
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    1       38      88
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0        4      88
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        8      88
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0      557    1367
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1      658    1367
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0       62    1367
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       90    1367
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       87     404
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1      244     404
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       18     404
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       55     404
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0      195     596
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1      226     596
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       88     596
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       87     596
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       10      23
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       10      23
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0        2      23
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        1      23
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       13      20
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1        7      20
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1748    2900
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1     1001    2900
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0       79    2900
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       72    2900
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      167     310
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1      137     310
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     310
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     310
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     1861    3162
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      767    3162
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      225    3162
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1      309    3162
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       17      53
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       29      53
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        3      53
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        4      53
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0        5       8
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    1        0       8
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0        2       8
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    1        1       8
0-24 months   ki1114097-CMIN             BRAZIL                         0                    0       75     111
0-24 months   ki1114097-CMIN             BRAZIL                         0                    1       28     111
0-24 months   ki1114097-CMIN             BRAZIL                         1                    0        6     111
0-24 months   ki1114097-CMIN             BRAZIL                         1                    1        2     111
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0      329     479
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    1      136     479
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0        8     479
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1        6     479
0-24 months   ki1114097-CMIN             PERU                           0                    0       86     111
0-24 months   ki1114097-CMIN             PERU                           0                    1       24     111
0-24 months   ki1114097-CMIN             PERU                           1                    0        1     111
0-24 months   ki1114097-CMIN             PERU                           1                    1        0     111
0-24 months   ki1114097-CONTENT          PERU                           0                    0       42      55
0-24 months   ki1114097-CONTENT          PERU                           0                    1       13      55
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0     9866   13882
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     1070   13882
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0     2636   13882
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1      310   13882
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     8246   13120
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     2637   13120
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1570   13120
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      667   13120
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      247    1127
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      672    1127
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       64    1127
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1      144    1127
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     4602    6871
0-24 months   ki1135781-COHORTS          INDIA                          0                    1     1045    6871
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      989    6871
0-24 months   ki1135781-COHORTS          INDIA                          1                    1      235    6871
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0     1069    2911
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     1380    2911
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      220    2911
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1      242    2911
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      349     827
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1      464     827
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0        5     827
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        9     827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    13201   22176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     6471   22176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1708   22176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      796   22176
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2166    4618
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     2039    4618
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      190    4618
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      223    4618


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       ever_stunted
## enwast  0  1
##      0 13  7
##      1  0  0
##       ever_stunted
## enwast  0  1
##      0 42 13
##      1  0  0
##       ever_stunted
## enwast  0  1
##      0 49  6
##      1  0  0
##       ever_stunted
## enwast    0
##      0 4459
##      1  941
```




# Results Detail

## Results Plots
![](/tmp/2053505c-2a75-4984-b011-89a663bf563e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2053505c-2a75-4984-b011-89a663bf563e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2053505c-2a75-4984-b011-89a663bf563e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2053505c-2a75-4984-b011-89a663bf563e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.4825871   0.4133626   0.5518115
0-24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.4000000   0.2478659   0.5521341
0-24 months   ki0047075b-MAL-ED          INDIA           0                    NA                0.4941176   0.4187759   0.5694594
0-24 months   ki0047075b-MAL-ED          INDIA           1                    NA                0.3333333   0.1720991   0.4945675
0-24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                0.2094595   0.1437061   0.2752128
0-24 months   ki0047075b-MAL-ED          NEPAL           1                    NA                0.2380952   0.0553892   0.4208013
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                0.3791667   0.3176657   0.4406676
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    1                    NA                0.3000000   0.0987761   0.5012239
0-24 months   ki1000108-IRC              INDIA           0                    NA                0.4257813   0.3651327   0.4864298
0-24 months   ki1000108-IRC              INDIA           1                    NA                0.4924242   0.4070274   0.5778211
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.5415638   0.4931545   0.5899731
0-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.5921053   0.4690090   0.7152015
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.7371601   0.6896814   0.7846388
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.7534247   0.6544282   0.8524211
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.5368171   0.4891453   0.5844889
0-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.4971429   0.4230022   0.5712835
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.3641324   0.3461417   0.3821231
0-24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.4768212   0.3971434   0.5564990
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                0.2918569   0.2311381   0.3525757
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    NA                0.5786517   0.5107642   0.6465392
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.2924731   0.2510836   0.3338626
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.4285714   0.1690755   0.6880673
0-24 months   ki1119695-PROBIT           BELARUS         0                    NA                0.0978420   0.0814975   0.1141865
0-24 months   ki1119695-PROBIT           BELARUS         1                    NA                0.1052274   0.0808582   0.1295966
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.2423045   0.2342541   0.2503549
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.2981672   0.2792098   0.3171246
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.7312296   0.7025548   0.7599044
0-24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.6923077   0.6295572   0.7550582
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                0.1850540   0.1749246   0.1951834
0-24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1919935   0.1699266   0.2140603
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.5634953   0.5438496   0.5831410
0-24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.5238095   0.4782605   0.5693585
0-24 months   ki1148112-LCNI-5           MALAWI          0                    NA                0.5707257   0.5366812   0.6047702
0-24 months   ki1148112-LCNI-5           MALAWI          1                    NA                0.6428571   0.3917119   0.8940024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.3289447   0.3210594   0.3368300
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.3178914   0.2971089   0.3386738
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.4848989   0.4668414   0.5029564
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.5399516   0.4816565   0.5982467
0-6 months    ki0047075b-MAL-ED          INDIA           0                    NA                0.1411765   0.0887043   0.1936486
0-6 months    ki0047075b-MAL-ED          INDIA           1                    NA                0.1818182   0.0498993   0.3137371
0-6 months    ki1000108-IRC              INDIA           0                    NA                0.0937500   0.0579982   0.1295018
0-6 months    ki1000108-IRC              INDIA           1                    NA                0.0454545   0.0098743   0.0810348
0-6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.2008230   0.1826290   0.2190171
0-6 months    ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.2368421   0.1371870   0.3364972
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.3757576   0.3234384   0.4280768
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.3972603   0.2848700   0.5096505
0-6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.1140143   0.0836289   0.1443996
0-6 months    ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1314286   0.0813282   0.1815290
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.0868455   0.0754550   0.0982359
0-6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.1485149   0.0791484   0.2178813
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0560559   0.0517338   0.0603780
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0402325   0.0320891   0.0483758
0-6 months    ki1135781-COHORTS          INDIA           0                    NA                0.0723803   0.0655652   0.0791954
0-6 months    ki1135781-COHORTS          INDIA           1                    NA                0.0553262   0.0424492   0.0682032
0-6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0306247   0.0237996   0.0374499
0-6 months    ki1135781-COHORTS          PHILIPPINES     1                    NA                0.0238095   0.0099054   0.0377137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1805959   0.1747931   0.1863987
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.1797843   0.1631356   0.1964329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.2097120   0.1958120   0.2236119
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.2536585   0.2000777   0.3072393
6-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.3594771   0.2832383   0.4357159
6-24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.3636364   0.1990674   0.5282054
6-24 months   ki1000108-IRC              INDIA           0                    NA                0.2339450   0.1776619   0.2902280
6-24 months   ki1000108-IRC              INDIA           1                    NA                0.2735849   0.1885877   0.3585822
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.3128019   0.2825459   0.3430580
6-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.3092784   0.2163286   0.4022281
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.5444444   0.4715226   0.6173663
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.5789474   0.4216062   0.7362885
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.4644068   0.4074254   0.5213881
6-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.4051724   0.3157259   0.4946190
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.2350352   0.2175962   0.2524743
6-24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.2164948   0.1345166   0.2984731
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                0.1427305   0.1142010   0.1712600
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    NA                0.2425150   0.1848550   0.3001749
6-24 months   ki1119695-PROBIT           BELARUS         0                    NA                0.0408144   0.0312136   0.0504153
6-24 months   ki1119695-PROBIT           BELARUS         1                    NA                0.0502928   0.0326729   0.0679127
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.1292472   0.1216569   0.1368374
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.1579347   0.1382381   0.1776313
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.5517241   0.5033026   0.6001457
6-24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.6250000   0.5352542   0.7147458
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.4948172   0.4719237   0.5177108
6-24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.4540059   0.4008370   0.5071749
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1865984   0.1781632   0.1950336
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.1633781   0.1414965   0.1852596
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.2905983   0.2729274   0.3082692
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.2948718   0.2352120   0.3545316


### Parameter: E(Y)


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.4688797   0.4057447   0.5320146
0-24 months   ki0047075b-MAL-ED          INDIA           NA                   NA                0.4679803   0.3991705   0.5367901
0-24 months   ki0047075b-MAL-ED          NEPAL           NA                   NA                0.2130178   0.1511045   0.2749310
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    NA                   NA                0.3730769   0.3141784   0.4319755
0-24 months   ki1000108-IRC              INDIA           NA                   NA                0.4484536   0.3989038   0.4980035
0-24 months   ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.5471836   0.5012688   0.5930984
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.7400990   0.6972792   0.7829188
0-24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.5251678   0.4850434   0.5652922
0-24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.3700000   0.3524250   0.3875750
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.3402910   0.2902222   0.3903597
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.2964509   0.2555100   0.3373919
0-24 months   ki1119695-PROBIT           BELARUS         NA                   NA                0.0994093   0.0831494   0.1156692
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.2518293   0.2444016   0.2592569
0-24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.7240461   0.6979377   0.7501545
0-24 months   ki1135781-COHORTS          INDIA           NA                   NA                0.1862902   0.1770836   0.1954968
0-24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.5571968   0.5391496   0.5752441
0-24 months   ki1148112-LCNI-5           MALAWI          NA                   NA                0.5719468   0.5382037   0.6056899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.3276966   0.3200516   0.3353416
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.4898224   0.4725918   0.5070530
0-6 months    ki0047075b-MAL-ED          INDIA           NA                   NA                0.1477833   0.0988437   0.1967228
0-6 months    ki1000108-IRC              INDIA           NA                   NA                0.0773196   0.0507085   0.1039307
0-6 months    ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.2048281   0.1851668   0.2244894
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3796526   0.3322125   0.4270927
0-6 months    ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.1191275   0.0930988   0.1451562
0-6 months    ki1101329-Keneba           GAMBIA          NA                   NA                0.0893878   0.0780882   0.1006873
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0533577   0.0495118   0.0572037
0-6 months    ki1135781-COHORTS          INDIA           NA                   NA                0.0693274   0.0632740   0.0753808
0-6 months    ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0295431   0.0233911   0.0356951
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.1805041   0.1749565   0.1860517
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2136196   0.2001838   0.2270554
6-24 months   ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.3602151   0.2910383   0.4293918
6-24 months   ki1000108-IRC              INDIA           NA                   NA                0.2469136   0.1998872   0.2939400
6-24 months   ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.3124324   0.2808301   0.3440347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.5504587   0.4842728   0.6166446
6-24 months   ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.4476886   0.3995563   0.4958208
6-24 months   ki1101329-Keneba           GAMBIA          NA                   NA                0.2342761   0.2172169   0.2513352
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.1555985   0.1280985   0.1830984
6-24 months   ki1119695-PROBIT           BELARUS         NA                   NA                0.0428289   0.0325550   0.0531028
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.1335298   0.1264315   0.1406281
6-24 months   ki1135781-COHORTS          GUATEMALA       NA                   NA                0.5675676   0.5248634   0.6102718
6-24 months   ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.4884793   0.4674428   0.5095157
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      NA                   NA                0.1841492   0.1759877   0.1923107
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2909471   0.2737460   0.3081483


### Parameter: RR


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                 0.8288660   0.5520132   1.2445695
0-24 months   ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA           1                    0                 0.6746032   0.4062458   1.1202318
0-24 months   ki0047075b-MAL-ED          NEPAL           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL           1                    0                 1.1367127   0.4961127   2.6044807
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    1                    0                 0.7912088   0.3968199   1.5775705
0-24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA           1                    0                 1.1565193   0.9240354   1.4474954
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    0                 1.0933251   0.8784829   1.3607091
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.0220638   0.8829311   1.1831210
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 0.9260936   0.7785271   1.1016306
0-24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA          1                    0                 1.3094720   1.1000667   1.5587390
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    0                 1.9826553   1.5447768   2.5446537
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 1.4653361   0.7868455   2.7288839
0-24 months   ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS         1                    0                 1.0754833   0.8740008   1.3234133
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.2305474   1.1453632   1.3220670
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 0.9467720   0.8577386   1.0450470
0-24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA           1                    0                 1.0374996   0.9134831   1.1783529
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 0.9295721   0.8464393   1.0208698
0-24 months   ki1148112-LCNI-5           MALAWI          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI          1                    0                 1.1263855   0.7586730   1.6723203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 0.9663976   0.9039080   1.0332073
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.1135343   0.9930791   1.2486001
0-6 months    ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA           1                    0                 1.2878788   0.5699441   2.9101656
0-6 months    ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA           1                    0                 0.4848485   0.2029822   1.1581216
0-6 months    ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA           1                    0                 1.1793572   0.7653951   1.8172097
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.0572249   0.7713040   1.4491362
0-6 months    ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.1527381   0.7239877   1.8353974
0-6 months    ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA          1                    0                 1.7101048   1.0527663   2.7778800
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 0.7177207   0.5779486   0.8912956
0-6 months    ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA           1                    0                 0.7643821   0.5946642   0.9825376
0-6 months    ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES     1                    0                 0.7774603   0.4161216   1.4525670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    0                 0.9955059   0.9036122   1.0967448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.2095568   0.9676820   1.5118888
6-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                 1.0115702   0.6136749   1.6674535
6-24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA           1                    0                 1.1694414   0.7894539   1.7323279
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    0                 0.9887354   0.7435409   1.3147867
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.0633727   0.7854191   1.4396918
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 0.8724515   0.6777237   1.1231298
6-24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA          1                    0                 0.9211166   0.6262341   1.3548541
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    0                 1.6991111   1.2673167   2.2780246
6-24 months   ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS         1                    0                 1.2322309   0.9207882   1.6490144
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.2219587   1.0646076   1.4025666
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 1.1328125   0.9573496   1.3404342
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 0.9175225   0.8089672   1.0406448
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 0.8755597   0.7641840   1.0031679
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.0147059   0.8241742   1.2492845


### Parameter: PAR


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                -0.0137074   -0.0417200    0.0143052
0-24 months   ki0047075b-MAL-ED          INDIA           0                    NA                -0.0261374   -0.0562027    0.0039280
0-24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                 0.0035583   -0.0206125    0.0277291
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                -0.0060897   -0.0224780    0.0102985
0-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0226724   -0.0131001    0.0584448
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0056198   -0.0094686    0.0207083
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0029389   -0.0169094    0.0227871
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                -0.0116493   -0.0375713    0.0142727
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0058676    0.0015179    0.0102173
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.0484340    0.0294568    0.0674113
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0039778   -0.0039727    0.0119283
0-24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0015673   -0.0031351    0.0062698
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0095248    0.0059947    0.0130548
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0071835   -0.0199471    0.0055802
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0012362   -0.0030896    0.0055620
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0062985   -0.0141888    0.0015919
0-24 months   ki1148112-LCNI-5           MALAWI          0                    NA                 0.0012211   -0.0031160    0.0055582
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0012481   -0.0036530    0.0011568
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0049235   -0.0005350    0.0103820
0-6 months    ki0047075b-MAL-ED          INDIA           0                    NA                 0.0066068   -0.0165648    0.0297784
0-6 months    ki1000108-IRC              INDIA           0                    NA                -0.0164304   -0.0337410    0.0008802
0-6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0040050   -0.0079996    0.0160097
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0038950   -0.0185759    0.0263659
0-6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0051133   -0.0121033    0.0223298
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0025423   -0.0003960    0.0054806
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                -0.0026981   -0.0042735   -0.0011228
0-6 months    ki1135781-COHORTS          INDIA           0                    NA                -0.0030528   -0.0056655   -0.0004402
0-6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0010816   -0.0035415    0.0013783
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0000918   -0.0020612    0.0018777
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0039076   -0.0011018    0.0089171
6-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0007379   -0.0314415    0.0329174
6-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0129686   -0.0204446    0.0463819
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                -0.0003695   -0.0096131    0.0088741
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0060143   -0.0242647    0.0362932
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                -0.0167182   -0.0467619    0.0133255
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                -0.0007591   -0.0041941    0.0026758
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.0128680    0.0051796    0.0205563
6-24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0020145   -0.0011982    0.0052271
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0042826    0.0011242    0.0074411
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0158434   -0.0063581    0.0380449
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0063380   -0.0153495    0.0026735
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0024492   -0.0048237   -0.0000748
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0003489   -0.0046383    0.0053360


### Parameter: PAF


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                -0.0292344   -0.0908584    0.0289084
0-24 months   ki0047075b-MAL-ED          INDIA           0                    NA                -0.0558514   -0.1225677    0.0068999
0-24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                 0.0167042   -0.1035161    0.1238274
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                -0.0163230   -0.0612299    0.0266835
0-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0505568   -0.0327740    0.1271639
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0102705   -0.0177108    0.0374824
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0039709   -0.0232165    0.0304360
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                -0.0221821   -0.0727912    0.0260396
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0158583    0.0040280    0.0275481
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.1423312    0.0721043    0.2072431
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0134181   -0.0137576    0.0398654
0-24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0157663   -0.0324233    0.0617066
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0378223    0.0237180    0.0517228
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0099213   -0.0277202    0.0075694
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0066359   -0.0168572    0.0295861
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0113038   -0.0255717    0.0027655
0-24 months   ki1148112-LCNI-5           MALAWI          0                    NA                 0.0021350   -0.0054787    0.0096910
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0038087   -0.0111799    0.0035089
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0100516   -0.0011597    0.0211374
0-6 months    ki0047075b-MAL-ED          INDIA           0                    NA                 0.0447059   -0.1251384    0.1889115
0-6 months    ki1000108-IRC              INDIA           0                    NA                -0.2125000   -0.4467306   -0.0161921
0-6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0195532   -0.0400263    0.0757196
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0102595   -0.0507373    0.0677153
0-6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0429226   -0.1128195    0.1768682
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0284411   -0.0048276    0.0606084
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                -0.0505671   -0.0803051   -0.0216478
0-6 months    ki1135781-COHORTS          INDIA           0                    NA                -0.0440352   -0.0822377   -0.0071812
0-6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0366120   -0.1229568    0.0430937
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0005084   -0.0114798    0.0103440
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0182925   -0.0053604    0.0413889
6-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0020486   -0.0914061    0.0875010
6-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0525229   -0.0927799    0.1785054
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                -0.0011827   -0.0312458    0.0280040
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0109259   -0.0456628    0.0644522
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                -0.0373434   -0.1067575    0.0277171
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                -0.0032404   -0.0180092    0.0113142
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.0826998    0.0297471    0.1327625
6-24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0470354   -0.0274724    0.1161402
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0320726    0.0081722    0.0553970
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0279146   -0.0120910    0.0663389
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0129749   -0.0316001    0.0053140
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0133003   -0.0263073   -0.0004581
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0011990   -0.0160864    0.0181904
