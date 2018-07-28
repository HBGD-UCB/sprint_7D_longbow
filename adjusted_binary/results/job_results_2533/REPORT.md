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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##       ever_stunted
## enwast  0  1
##      0 13  7
##      1  0  0
##       ever_stunted
## enwast  0  1
##      0 42 13
##      1  0  0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##       ever_stunted
## enwast  0  1
##      0 49  6
##      1  0  0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##       ever_stunted
## enwast    0
##      0 4459
##      1  941
```




# Results Detail

## Results Plots
![](/tmp/624fbf34-0db3-4645-bd85-81c28a0310f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/624fbf34-0db3-4645-bd85-81c28a0310f1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/624fbf34-0db3-4645-bd85-81c28a0310f1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/624fbf34-0db3-4645-bd85-81c28a0310f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.4837523   0.4161571   0.5513475
0-24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.3989907   0.2669953   0.5309862
0-24 months   ki0047075b-MAL-ED          INDIA           0                    NA                0.5107556   0.4369343   0.5845768
0-24 months   ki0047075b-MAL-ED          INDIA           1                    NA                0.7103296   0.6030795   0.8175797
0-24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                0.2111612   0.1455016   0.2768208
0-24 months   ki0047075b-MAL-ED          NEPAL           1                    NA                0.2255450   0.0459561   0.4051338
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                0.3777203   0.3172326   0.4382080
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    1                    NA                0.4710500   0.3792205   0.5628796
0-24 months   ki1000108-IRC              INDIA           0                    NA                0.4267733   0.3667777   0.4867689
0-24 months   ki1000108-IRC              INDIA           1                    NA                0.5023765   0.4200300   0.5847229
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.5407618   0.4924780   0.5890457
0-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.5809749   0.4652364   0.6967134
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.7384441   0.6923941   0.7844941
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.7921801   0.7093992   0.8749611
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.5311124   0.4850230   0.5772017
0-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.4388592   0.3744358   0.5032825
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.3642544   0.3463238   0.3821850
0-24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.4857687   0.4312519   0.5402855
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                0.2977632   0.2383080   0.3572185
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    NA                0.5655826   0.5078858   0.6232794
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.2928272   0.2514077   0.3342468
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.4494290   0.1987113   0.7001467
0-24 months   ki1119695-PROBIT           BELARUS         0                    NA                0.0978749   0.0816367   0.1141132
0-24 months   ki1119695-PROBIT           BELARUS         1                    NA                0.1050405   0.0819737   0.1281072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.2419701   0.2339846   0.2499556
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.3073657   0.2898050   0.3249264
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.7300682   0.7021499   0.7579865
0-24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.6705577   0.6260185   0.7150969
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                0.1847691   0.1746942   0.1948441
0-24 months   ki1135781-COHORTS          INDIA           1                    NA                0.1913879   0.1703177   0.2124580
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.5612376   0.5417486   0.5807266
0-24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.5440586   0.5020379   0.5860794
0-24 months   ki1148112-LCNI-5           MALAWI          0                    NA                0.5720258   0.5380279   0.6060237
0-24 months   ki1148112-LCNI-5           MALAWI          1                    NA                0.9878734   0.9344703   1.0412765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.3294990   0.3216287   0.3373693
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.3203667   0.3008354   0.3398980
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.4850077   0.4669694   0.5030460
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.5367016   0.4798892   0.5935140
0-6 months    ki0047075b-MAL-ED          INDIA           0                    NA                0.1535199   0.1026097   0.2044301
0-6 months    ki0047075b-MAL-ED          INDIA           1                    NA                0.5789369   0.4997089   0.6581649
0-6 months    ki1000108-IRC              INDIA           0                    NA                0.0911267   0.0560700   0.1261834
0-6 months    ki1000108-IRC              INDIA           1                    NA                0.0384659   0.0061189   0.0708129
0-6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.2004342   0.1818629   0.2190055
0-6 months    ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1992979   0.1059306   0.2926651
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.3753649   0.3234223   0.4273076
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.3990034   0.2891401   0.5088667
0-6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.1168770   0.0868834   0.1468705
0-6 months    ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1380217   0.0921512   0.1838923
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                0.0871772   0.0758023   0.0985521
0-6 months    ki1101329-Keneba           GAMBIA          1                    NA                0.1422126   0.0785775   0.2058478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0559670   0.0516751   0.0602589
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0420113   0.0343003   0.0497223
0-6 months    ki1135781-COHORTS          INDIA           0                    NA                0.0725009   0.0657164   0.0792854
0-6 months    ki1135781-COHORTS          INDIA           1                    NA                0.0551627   0.0429094   0.0674159
0-6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0307303   0.0239344   0.0375263
0-6 months    ki1135781-COHORTS          PHILIPPINES     1                    NA                0.0153285   0.0037444   0.0269126
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1813857   0.1755823   0.1871891
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.1778146   0.1623780   0.1932512
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.2097304   0.1958412   0.2236196
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.2491940   0.1963548   0.3020332
6-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.3520360   0.2778196   0.4262525
6-24 months   ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.1652410   0.0357875   0.2946946
6-24 months   ki1000108-IRC              INDIA           0                    NA                0.2357742   0.1796219   0.2919265
6-24 months   ki1000108-IRC              INDIA           1                    NA                0.2859884   0.2018978   0.3700790
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.3130202   0.2838052   0.3422353
6-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.3734079   0.2897291   0.4570866
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.5486029   0.4777704   0.6194354
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.5580852   0.4213754   0.6947950
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.4568900   0.4023252   0.5114549
6-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.3220379   0.2512060   0.3928697
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                0.2336529   0.2162819   0.2510239
6-24 months   ki1101329-Keneba           GAMBIA          1                    NA                0.1300444   0.0859306   0.1741581
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                0.1439656   0.1156220   0.1723091
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    NA                0.2665642   0.2137576   0.3193709
6-24 months   ki1119695-PROBIT           BELARUS         0                    NA                0.0407830   0.0311975   0.0503685
6-24 months   ki1119695-PROBIT           BELARUS         1                    NA                0.0504392   0.0327467   0.0681318
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.1289976   0.1214656   0.1365296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.1687317   0.1510225   0.1864409
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                0.5449197   0.4984297   0.5914097
6-24 months   ki1135781-COHORTS          GUATEMALA       1                    NA                0.5511569   0.4915130   0.6108007
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                0.4926393   0.4699068   0.5153718
6-24 months   ki1135781-COHORTS          PHILIPPINES     1                    NA                0.4698192   0.4219243   0.5177140
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                0.1863340   0.1778939   0.1947742
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    NA                0.1733540   0.1522737   0.1944342
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.2905707   0.2729159   0.3082255
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.2973069   0.2394293   0.3551845


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                 0.8247830   0.5830006   1.1668376
0-24 months   ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA           1                    0                 1.3907428   1.1329785   1.7071511
0-24 months   ki0047075b-MAL-ED          NEPAL           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL           1                    0                 1.0681173   0.4557292   2.5034044
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    1                    0                 1.2470869   0.9794934   1.5877858
0-24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA           1                    0                 1.1771507   0.9488666   1.4603568
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    0                 1.0743637   0.8708776   1.3253957
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.0727692   0.9565917   1.2030565
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 0.8263019   0.7000058   0.9753844
0-24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA          1                    0                 1.3335972   1.1816420   1.5050934
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    0                 1.8994372   1.5168116   2.3785827
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   1                    0                 1.5347924   0.8629957   2.7295475
0-24 months   ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS         1                    0                 1.0732110   0.8911987   1.2923963
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.2702632   1.1897480   1.3562271
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 0.9184863   0.8522002   0.9899284
0-24 months   ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA           1                    0                 1.0358217   0.9167637   1.1703414
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 0.9693909   0.8916758   1.0538793
0-24 months   ki1148112-LCNI-5           MALAWI          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI          1                    0                 1.7269734   1.5952022   1.8696296
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 0.9722844   0.9133349   1.0350387
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.1065837   0.9888391   1.2383486
0-6 months    ki0047075b-MAL-ED          INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA           1                    0                 3.7710869   2.6534941   5.3593849
0-6 months    ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA           1                    0                 0.4221145   0.1675665   1.0633434
0-6 months    ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA           1                    0                 0.9943305   0.6144221   1.6091432
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.0629745   0.7836596   1.4418441
0-6 months    ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH      1                    0                 1.1809149   0.7769276   1.7949676
0-6 months    ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA          1                    0                 1.6313053   1.0249259   2.5964385
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 0.7506441   0.6154554   0.9155279
0-6 months    ki1135781-COHORTS          INDIA           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA           1                    0                 0.7608547   0.5984015   0.9674106
0-6 months    ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES     1                    0                 0.4988072   0.2277872   1.0922851
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      1                    0                 0.9803120   0.8945541   1.0742913
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.1881635   0.9502180   1.4856935
6-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH      1                    0                 0.4693867   0.2112311   1.0430467
6-24 months   ki1000108-IRC              INDIA           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA           1                    0                 1.2129757   0.8309675   1.7705988
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA           1                    0                 1.1929193   0.9705167   1.4662873
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.0172844   0.7839364   1.3200913
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH      1                    0                 0.7048476   0.5522481   0.8996140
6-24 months   ki1101329-Keneba           GAMBIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA          1                    0                 0.5565707   0.3941108   0.7859996
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    1                    0                 1.8515830   1.4146007   2.4235528
6-24 months   ki1119695-PROBIT           BELARUS         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS         1                    0                 1.2367710   0.9239193   1.6555587
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 1.3080219   1.1604928   1.4743060
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA       1                    0                 1.0114461   0.8824422   1.1593090
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES     1                    0                 0.9536779   0.8537892   1.0652531
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      1                    0                 0.9303397   0.8215705   1.0535092
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      1                    0                 1.0231827   0.8374163   1.2501581


### Parameter: PAR


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                -0.0148727   -0.0397438    0.0099985
0-24 months   ki0047075b-MAL-ED          INDIA           0                    NA                -0.0427753   -0.0730359   -0.0125146
0-24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                 0.0018565   -0.0218498    0.0255628
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                -0.0046434   -0.0207287    0.0114419
0-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0216803   -0.0138750    0.0572357
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0064218   -0.0088461    0.0216896
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0016549   -0.0149309    0.0182407
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                -0.0059446   -0.0298199    0.0179307
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0057456    0.0017555    0.0097356
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.0425277    0.0248644    0.0601910
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0036237   -0.0043379    0.0115853
0-24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0015344   -0.0027075    0.0057762
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0098592    0.0064100    0.0133083
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0060221   -0.0179243    0.0058801
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0015211   -0.0027107    0.0057529
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0040408   -0.0115408    0.0034593
0-24 months   ki1148112-LCNI-5           MALAWI          0                    NA                -0.0000790   -0.0038019    0.0036439
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0018024   -0.0041400    0.0005353
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0048147   -0.0006086    0.0102381
0-6 months    ki0047075b-MAL-ED          INDIA           0                    NA                -0.0057367   -0.0273181    0.0158448
0-6 months    ki1000108-IRC              INDIA           0                    NA                -0.0138071   -0.0306387    0.0030244
0-6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0043939   -0.0078099    0.0165976
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0042877   -0.0175176    0.0260929
0-6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0022505   -0.0146946    0.0191957
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0022105   -0.0006673    0.0050884
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                -0.0026093   -0.0041683   -0.0010502
0-6 months    ki1135781-COHORTS          INDIA           0                    NA                -0.0031735   -0.0057441   -0.0006029
0-6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0011872   -0.0035515    0.0011771
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0008816   -0.0028019    0.0010387
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0038892   -0.0011190    0.0088974
6-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0081790   -0.0210633    0.0374213
6-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0111394   -0.0222530    0.0445318
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                -0.0005878   -0.0090866    0.0079111
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0018558   -0.0234285    0.0271401
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                -0.0092015   -0.0363845    0.0179816
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0006232   -0.0025427    0.0037890
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.0116329    0.0039006    0.0193652
6-24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0020459   -0.0011698    0.0052616
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0045322    0.0014081    0.0076563
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0226479    0.0012130    0.0440828
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0041600   -0.0127312    0.0044112
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0021848   -0.0045267    0.0001570
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0003765   -0.0045514    0.0053043


### Parameter: PAF


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                -0.0317196   -0.0863819    0.0201924
0-24 months   ki0047075b-MAL-ED          INDIA           0                    NA                -0.0914040   -0.1601588   -0.0267238
0-24 months   ki0047075b-MAL-ED          NEPAL           0                    NA                 0.0087153   -0.1090112    0.1139447
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA    0                    NA                -0.0124461   -0.0566138    0.0298753
0-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0483447   -0.0343340    0.1244145
0-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0117360   -0.0165748    0.0392585
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0022361   -0.0204292    0.0243979
0-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                -0.0113194   -0.0578539    0.0331680
0-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0155286    0.0046774    0.0262615
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.1249746    0.0610618    0.1845368
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0                    NA                 0.0122236   -0.0149918    0.0387094
0-24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0154347   -0.0278935    0.0569366
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0391502    0.0253816    0.0527242
0-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                -0.0083173   -0.0249147    0.0080114
0-24 months   ki1135781-COHORTS          INDIA           0                    NA                 0.0081651   -0.0148108    0.0306208
0-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0072520   -0.0208066    0.0061226
0-24 months   ki1148112-LCNI-5           MALAWI          0                    NA                -0.0001382   -0.0066685    0.0063498
0-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0055001   -0.0126674    0.0016165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0098296   -0.0013084    0.0208437
0-6 months    ki0047075b-MAL-ED          INDIA           0                    NA                -0.0388181   -0.1981347    0.0993141
0-6 months    ki1000108-IRC              INDIA           0                    NA                -0.1785720   -0.4083600    0.0137238
0-6 months    ki1000304b-SAS-CompFeed    INDIA           0                    NA                 0.0214514   -0.0391435    0.0785129
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0112936   -0.0478403    0.0670904
0-6 months    ki1017093-NIH-Birth        BANGLADESH      0                    NA                 0.0188919   -0.1338973    0.1510933
0-6 months    ki1101329-Keneba           GAMBIA          0                    NA                 0.0247299   -0.0078327    0.0562403
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                -0.0489017   -0.0783878   -0.0202218
0-6 months    ki1135781-COHORTS          INDIA           0                    NA                -0.0457753   -0.0833729   -0.0094825
0-6 months    ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0401862   -0.1229931    0.0365148
0-6 months    kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0048841   -0.0155858    0.0057049
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0182062   -0.0054382    0.0412947
6-24 months   ki0047075b-MAL-ED          BANGLADESH      0                    NA                 0.0227060   -0.0619132    0.1005822
6-24 months   ki1000108-IRC              INDIA           0                    NA                 0.0451145   -0.0999379    0.1710383
6-24 months   ki1000304b-SAS-CompFeed    INDIA           0                    NA                -0.0018813   -0.0295359    0.0250304
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                 0.0033714   -0.0436383    0.0482635
6-24 months   ki1017093-NIH-Birth        BANGLADESH      0                    NA                -0.0205533   -0.0832273    0.0384945
6-24 months   ki1101329-Keneba           GAMBIA          0                    NA                 0.0026600   -0.0109481    0.0160848
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0                    NA                 0.0747621    0.0222897    0.1244184
6-24 months   ki1119695-PROBIT           BELARUS         0                    NA                 0.0477690   -0.0267173    0.1168514
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                 0.0339416    0.0103307    0.0569893
6-24 months   ki1135781-COHORTS          GUATEMALA       0                    NA                 0.0399034    0.0014683    0.0768591
6-24 months   ki1135781-COHORTS          PHILIPPINES     0                    NA                -0.0085162   -0.0262196    0.0088817
6-24 months   kiGH5241-JiVitA-3          BANGLADESH      0                    NA                -0.0118646   -0.0246847    0.0007952
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0                    NA                 0.0012939   -0.0157840    0.0180846
