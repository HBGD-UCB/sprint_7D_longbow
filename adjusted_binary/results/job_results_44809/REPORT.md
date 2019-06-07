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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                         pers_wast   pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                              0           0      235     496
0-24 months   ki0047075b-MAL-ED          BANGLADESH                              0           0      235     496
0-24 months   ki0047075b-MAL-ED          BANGLADESH                              1           1       13     496
0-24 months   ki0047075b-MAL-ED          BANGLADESH                              1           1       13     496
0-24 months   ki0047075b-MAL-ED          BRAZIL                                  0           0      215     434
0-24 months   ki0047075b-MAL-ED          BRAZIL                                  0           0      215     434
0-24 months   ki0047075b-MAL-ED          BRAZIL                                  1           1        2     434
0-24 months   ki0047075b-MAL-ED          BRAZIL                                  1           1        2     434
0-24 months   ki0047075b-MAL-ED          INDIA                                   0           0      220     482
0-24 months   ki0047075b-MAL-ED          INDIA                                   0           0      220     482
0-24 months   ki0047075b-MAL-ED          INDIA                                   1           1       21     482
0-24 months   ki0047075b-MAL-ED          INDIA                                   1           1       21     482
0-24 months   ki0047075b-MAL-ED          NEPAL                                   0           0      234     476
0-24 months   ki0047075b-MAL-ED          NEPAL                                   0           0      234     476
0-24 months   ki0047075b-MAL-ED          NEPAL                                   1           1        4     476
0-24 months   ki0047075b-MAL-ED          NEPAL                                   1           1        4     476
0-24 months   ki0047075b-MAL-ED          PERU                                    0           0      283     568
0-24 months   ki0047075b-MAL-ED          PERU                                    0           0      283     568
0-24 months   ki0047075b-MAL-ED          PERU                                    1           1        1     568
0-24 months   ki0047075b-MAL-ED          PERU                                    1           1        1     568
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            0           0      271     546
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            0           0      271     546
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            1           1        2     546
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            1           1        2     546
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            0           0      253     506
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            0           0      253     506
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            1           1        0     506
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            1           1        0     506
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   0           0      350     746
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   0           0      350     746
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   1           1       23     746
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   1           1       23     746
0-24 months   ki1000108-IRC              INDIA                                   0           0      362     820
0-24 months   ki1000108-IRC              INDIA                                   0           0      362     820
0-24 months   ki1000108-IRC              INDIA                                   1           1       48     820
0-24 months   ki1000108-IRC              INDIA                                   1           1       48     820
0-24 months   ki1000109-EE               PAKISTAN                                0           0      349     754
0-24 months   ki1000109-EE               PAKISTAN                                0           0      349     754
0-24 months   ki1000109-EE               PAKISTAN                                1           1       28     754
0-24 months   ki1000109-EE               PAKISTAN                                1           1       28     754
0-24 months   ki1000109-ResPak           PAKISTAN                                0           0      217     502
0-24 months   ki1000109-ResPak           PAKISTAN                                0           0      217     502
0-24 months   ki1000109-ResPak           PAKISTAN                                1           1       34     502
0-24 months   ki1000109-ResPak           PAKISTAN                                1           1       34     502
0-24 months   ki1000304b-SAS-CompFeed    INDIA                                   0           0      396     856
0-24 months   ki1000304b-SAS-CompFeed    INDIA                                   0           0      396     856
0-24 months   ki1000304b-SAS-CompFeed    INDIA                                   1           1       32     856
0-24 months   ki1000304b-SAS-CompFeed    INDIA                                   1           1       32     856
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   0           0       76     188
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   0           0       76     188
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   1           1       18     188
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   1           1       18     188
0-24 months   ki1017093-NIH-Birth        BANGLADESH                              0           0      487    1068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                              0           0      487    1068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                              1           1       47    1068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                              1           1       47    1068
0-24 months   ki1017093b-PROVIDE         BANGLADESH                              0           0      625    1280
0-24 months   ki1017093b-PROVIDE         BANGLADESH                              0           0      625    1280
0-24 months   ki1017093b-PROVIDE         BANGLADESH                              1           1       15    1280
0-24 months   ki1017093b-PROVIDE         BANGLADESH                              1           1       15    1280
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              0           0      704    1460
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              0           0      704    1460
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              1           1       26    1460
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              1           1       26    1460
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     2108    4332
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     2108    4332
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       58    4332
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       58    4332
0-24 months   ki1101329-Keneba           GAMBIA                                  0           0     2309    4882
0-24 months   ki1101329-Keneba           GAMBIA                                  0           0     2309    4882
0-24 months   ki1101329-Keneba           GAMBIA                                  1           1      132    4882
0-24 months   ki1101329-Keneba           GAMBIA                                  1           1      132    4882
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                               0           0      252     512
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                               0           0      252     512
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                               1           1        4     512
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                               1           1        4     512
0-24 months   ki1113344-GMS-Nepal        NEPAL                                   0           0      507    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                                   0           0      507    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                                   1           1       85    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                                   1           1       85    1184
0-24 months   ki1114097-CMIN             BANGLADESH                              0           0      237     514
0-24 months   ki1114097-CMIN             BANGLADESH                              0           0      237     514
0-24 months   ki1114097-CMIN             BANGLADESH                              1           1       20     514
0-24 months   ki1114097-CMIN             BANGLADESH                              1           1       20     514
0-24 months   ki1114097-CMIN             BRAZIL                                  0           0      119     238
0-24 months   ki1114097-CMIN             BRAZIL                                  0           0      119     238
0-24 months   ki1114097-CMIN             BRAZIL                                  1           1        0     238
0-24 months   ki1114097-CMIN             BRAZIL                                  1           1        0     238
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                           0           0     1117    2306
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                           0           0     1117    2306
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                           1           1       36    2306
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                           1           1       36    2306
0-24 months   ki1114097-CMIN             PERU                                    0           0      825    1660
0-24 months   ki1114097-CMIN             PERU                                    0           0      825    1660
0-24 months   ki1114097-CMIN             PERU                                    1           1        5    1660
0-24 months   ki1114097-CMIN             PERU                                    1           1        5    1660
0-24 months   ki1114097-CONTENT          PERU                                    0           0      215     430
0-24 months   ki1114097-CONTENT          PERU                                    0           0      215     430
0-24 months   ki1114097-CONTENT          PERU                                    1           1        0     430
0-24 months   ki1114097-CONTENT          PERU                                    1           1        0     430
0-24 months   ki1119695-PROBIT           BELARUS                                 0           0     7877   15944
0-24 months   ki1119695-PROBIT           BELARUS                                 0           0     7877   15944
0-24 months   ki1119695-PROBIT           BELARUS                                 1           1       95   15944
0-24 months   ki1119695-PROBIT           BELARUS                                 1           1       95   15944
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                0           0     9166   18666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                0           0     9166   18666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                1           1      167   18666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                1           1      167   18666
0-24 months   ki1135781-COHORTS          GUATEMALA                               0           0      489    1030
0-24 months   ki1135781-COHORTS          GUATEMALA                               0           0      489    1030
0-24 months   ki1135781-COHORTS          GUATEMALA                               1           1       26    1030
0-24 months   ki1135781-COHORTS          GUATEMALA                               1           1       26    1030
0-24 months   ki1135781-COHORTS          INDIA                                   0           0     5155   11410
0-24 months   ki1135781-COHORTS          INDIA                                   0           0     5155   11410
0-24 months   ki1135781-COHORTS          INDIA                                   1           1      550   11410
0-24 months   ki1135781-COHORTS          INDIA                                   1           1      550   11410
0-24 months   ki1135781-COHORTS          PHILIPPINES                             0           0     2667    5622
0-24 months   ki1135781-COHORTS          PHILIPPINES                             0           0     2667    5622
0-24 months   ki1135781-COHORTS          PHILIPPINES                             1           1      144    5622
0-24 months   ki1135781-COHORTS          PHILIPPINES                             1           1      144    5622
0-24 months   ki1148112-LCNI-5           MALAWI                                  0           0      713    1438
0-24 months   ki1148112-LCNI-5           MALAWI                                  0           0      713    1438
0-24 months   ki1148112-LCNI-5           MALAWI                                  1           1        6    1438
0-24 months   ki1148112-LCNI-5           MALAWI                                  1           1        6    1438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                              0           0     7309   15520
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                              0           0     7309   15520
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                              1           1      451   15520
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                              1           1      451   15520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                              0           0     1266    2756
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                              0           0     1266    2756
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                              1           1      112    2756
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                              1           1      112    2756
0-6 months    ki0047075b-MAL-ED          BANGLADESH                              0           0      241     496
0-6 months    ki0047075b-MAL-ED          BANGLADESH                              0           0      241     496
0-6 months    ki0047075b-MAL-ED          BANGLADESH                              1           1        7     496
0-6 months    ki0047075b-MAL-ED          BANGLADESH                              1           1        7     496
0-6 months    ki0047075b-MAL-ED          BRAZIL                                  0           0      216     434
0-6 months    ki0047075b-MAL-ED          BRAZIL                                  0           0      216     434
0-6 months    ki0047075b-MAL-ED          BRAZIL                                  1           1        1     434
0-6 months    ki0047075b-MAL-ED          BRAZIL                                  1           1        1     434
0-6 months    ki0047075b-MAL-ED          INDIA                                   0           0      221     480
0-6 months    ki0047075b-MAL-ED          INDIA                                   0           0      221     480
0-6 months    ki0047075b-MAL-ED          INDIA                                   1           1       19     480
0-6 months    ki0047075b-MAL-ED          INDIA                                   1           1       19     480
0-6 months    ki0047075b-MAL-ED          NEPAL                                   0           0      232     474
0-6 months    ki0047075b-MAL-ED          NEPAL                                   0           0      232     474
0-6 months    ki0047075b-MAL-ED          NEPAL                                   1           1        5     474
0-6 months    ki0047075b-MAL-ED          NEPAL                                   1           1        5     474
0-6 months    ki0047075b-MAL-ED          PERU                                    0           0      284     568
0-6 months    ki0047075b-MAL-ED          PERU                                    0           0      284     568
0-6 months    ki0047075b-MAL-ED          PERU                                    1           1        0     568
0-6 months    ki0047075b-MAL-ED          PERU                                    1           1        0     568
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                            0           0      269     542
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                            0           0      269     542
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                            1           1        2     542
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                            1           1        2     542
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            0           0      253     506
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            0           0      253     506
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            1           1        0     506
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            1           1        0     506
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                                   0           0      308     716
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                                   0           0      308     716
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                                   1           1       50     716
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                                   1           1       50     716
0-6 months    ki1000108-IRC              INDIA                                   0           0      338     804
0-6 months    ki1000108-IRC              INDIA                                   0           0      338     804
0-6 months    ki1000108-IRC              INDIA                                   1           1       64     804
0-6 months    ki1000108-IRC              INDIA                                   1           1       64     804
0-6 months    ki1000109-EE               PAKISTAN                                0           0      339     732
0-6 months    ki1000109-EE               PAKISTAN                                0           0      339     732
0-6 months    ki1000109-EE               PAKISTAN                                1           1       27     732
0-6 months    ki1000109-EE               PAKISTAN                                1           1       27     732
0-6 months    ki1000109-ResPak           PAKISTAN                                0           0      215     480
0-6 months    ki1000109-ResPak           PAKISTAN                                0           0      215     480
0-6 months    ki1000109-ResPak           PAKISTAN                                1           1       25     480
0-6 months    ki1000109-ResPak           PAKISTAN                                1           1       25     480
0-6 months    ki1017093-NIH-Birth        BANGLADESH                              0           0      158     338
0-6 months    ki1017093-NIH-Birth        BANGLADESH                              0           0      158     338
0-6 months    ki1017093-NIH-Birth        BANGLADESH                              1           1       11     338
0-6 months    ki1017093-NIH-Birth        BANGLADESH                              1           1       11     338
0-6 months    ki1017093b-PROVIDE         BANGLADESH                              0           0      623    1274
0-6 months    ki1017093b-PROVIDE         BANGLADESH                              0           0      623    1274
0-6 months    ki1017093b-PROVIDE         BANGLADESH                              1           1       14    1274
0-6 months    ki1017093b-PROVIDE         BANGLADESH                              1           1       14    1274
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                              0           0      245     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                              0           0      245     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                              1           1        5     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                              1           1        5     500
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     2009    4122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     2009    4122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       52    4122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       52    4122
0-6 months    ki1101329-Keneba           GAMBIA                                  0           0     1986    4074
0-6 months    ki1101329-Keneba           GAMBIA                                  0           0     1986    4074
0-6 months    ki1101329-Keneba           GAMBIA                                  1           1       51    4074
0-6 months    ki1101329-Keneba           GAMBIA                                  1           1       51    4074
0-6 months    ki1113344-GMS-Nepal        NEPAL                                   0           0      477    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                                   0           0      477    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                                   1           1       65    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                                   1           1       65    1084
0-6 months    ki1114097-CMIN             BANGLADESH                              0           0      225     468
0-6 months    ki1114097-CMIN             BANGLADESH                              0           0      225     468
0-6 months    ki1114097-CMIN             BANGLADESH                              1           1        9     468
0-6 months    ki1114097-CMIN             BANGLADESH                              1           1        9     468
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                           0           0       11      22
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                           0           0       11      22
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                           1           1        0      22
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                           1           1        0      22
0-6 months    ki1114097-CMIN             PERU                                    0           0      546    1116
0-6 months    ki1114097-CMIN             PERU                                    0           0      546    1116
0-6 months    ki1114097-CMIN             PERU                                    1           1       12    1116
0-6 months    ki1114097-CMIN             PERU                                    1           1       12    1116
0-6 months    ki1114097-CONTENT          PERU                                    0           0      215     430
0-6 months    ki1114097-CONTENT          PERU                                    0           0      215     430
0-6 months    ki1114097-CONTENT          PERU                                    1           1        0     430
0-6 months    ki1114097-CONTENT          PERU                                    1           1        0     430
0-6 months    ki1119695-PROBIT           BELARUS                                 0           0     6030   13314
0-6 months    ki1119695-PROBIT           BELARUS                                 0           0     6030   13314
0-6 months    ki1119695-PROBIT           BELARUS                                 1           1      627   13314
0-6 months    ki1119695-PROBIT           BELARUS                                 1           1      627   13314
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                                0           0      596    1220
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                                0           0      596    1220
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                                1           1       14    1220
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                                1           1       14    1220
0-6 months    ki1135781-COHORTS          PHILIPPINES                             0           0      801    1706
0-6 months    ki1135781-COHORTS          PHILIPPINES                             0           0      801    1706
0-6 months    ki1135781-COHORTS          PHILIPPINES                             1           1       52    1706
0-6 months    ki1135781-COHORTS          PHILIPPINES                             1           1       52    1706
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                              0           0       23      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                              0           0       23      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                              1           1        2      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                              1           1        2      50
6-24 months   ki0047075b-MAL-ED          BANGLADESH                              0           0      235     496
6-24 months   ki0047075b-MAL-ED          BANGLADESH                              0           0      235     496
6-24 months   ki0047075b-MAL-ED          BANGLADESH                              1           1       13     496
6-24 months   ki0047075b-MAL-ED          BANGLADESH                              1           1       13     496
6-24 months   ki0047075b-MAL-ED          BRAZIL                                  0           0      215     434
6-24 months   ki0047075b-MAL-ED          BRAZIL                                  0           0      215     434
6-24 months   ki0047075b-MAL-ED          BRAZIL                                  1           1        2     434
6-24 months   ki0047075b-MAL-ED          BRAZIL                                  1           1        2     434
6-24 months   ki0047075b-MAL-ED          INDIA                                   0           0      220     482
6-24 months   ki0047075b-MAL-ED          INDIA                                   0           0      220     482
6-24 months   ki0047075b-MAL-ED          INDIA                                   1           1       21     482
6-24 months   ki0047075b-MAL-ED          INDIA                                   1           1       21     482
6-24 months   ki0047075b-MAL-ED          NEPAL                                   0           0      234     476
6-24 months   ki0047075b-MAL-ED          NEPAL                                   0           0      234     476
6-24 months   ki0047075b-MAL-ED          NEPAL                                   1           1        4     476
6-24 months   ki0047075b-MAL-ED          NEPAL                                   1           1        4     476
6-24 months   ki0047075b-MAL-ED          PERU                                    0           0      283     568
6-24 months   ki0047075b-MAL-ED          PERU                                    0           0      283     568
6-24 months   ki0047075b-MAL-ED          PERU                                    1           1        1     568
6-24 months   ki0047075b-MAL-ED          PERU                                    1           1        1     568
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            0           0      271     546
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            0           0      271     546
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            1           1        2     546
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            1           1        2     546
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            0           0      253     506
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            0           0      253     506
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            1           1        0     506
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            1           1        0     506
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   0           0      350     746
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   0           0      350     746
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   1           1       23     746
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   1           1       23     746
6-24 months   ki1000108-IRC              INDIA                                   0           0      362     820
6-24 months   ki1000108-IRC              INDIA                                   0           0      362     820
6-24 months   ki1000108-IRC              INDIA                                   1           1       48     820
6-24 months   ki1000108-IRC              INDIA                                   1           1       48     820
6-24 months   ki1000109-EE               PAKISTAN                                0           0      349     754
6-24 months   ki1000109-EE               PAKISTAN                                0           0      349     754
6-24 months   ki1000109-EE               PAKISTAN                                1           1       28     754
6-24 months   ki1000109-EE               PAKISTAN                                1           1       28     754
6-24 months   ki1000109-ResPak           PAKISTAN                                0           0      217     502
6-24 months   ki1000109-ResPak           PAKISTAN                                0           0      217     502
6-24 months   ki1000109-ResPak           PAKISTAN                                1           1       34     502
6-24 months   ki1000109-ResPak           PAKISTAN                                1           1       34     502
6-24 months   ki1000304b-SAS-CompFeed    INDIA                                   0           0      396     856
6-24 months   ki1000304b-SAS-CompFeed    INDIA                                   0           0      396     856
6-24 months   ki1000304b-SAS-CompFeed    INDIA                                   1           1       32     856
6-24 months   ki1000304b-SAS-CompFeed    INDIA                                   1           1       32     856
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   0           0       76     188
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   0           0       76     188
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   1           1       18     188
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   1           1       18     188
6-24 months   ki1017093-NIH-Birth        BANGLADESH                              0           0      487    1068
6-24 months   ki1017093-NIH-Birth        BANGLADESH                              0           0      487    1068
6-24 months   ki1017093-NIH-Birth        BANGLADESH                              1           1       47    1068
6-24 months   ki1017093-NIH-Birth        BANGLADESH                              1           1       47    1068
6-24 months   ki1017093b-PROVIDE         BANGLADESH                              0           0      625    1280
6-24 months   ki1017093b-PROVIDE         BANGLADESH                              0           0      625    1280
6-24 months   ki1017093b-PROVIDE         BANGLADESH                              1           1       15    1280
6-24 months   ki1017093b-PROVIDE         BANGLADESH                              1           1       15    1280
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              0           0      704    1460
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              0           0      704    1460
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              1           1       26    1460
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              1           1       26    1460
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     2108    4332
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     2108    4332
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       58    4332
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       58    4332
6-24 months   ki1101329-Keneba           GAMBIA                                  0           0     2309    4882
6-24 months   ki1101329-Keneba           GAMBIA                                  0           0     2309    4882
6-24 months   ki1101329-Keneba           GAMBIA                                  1           1      132    4882
6-24 months   ki1101329-Keneba           GAMBIA                                  1           1      132    4882
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                               0           0      252     512
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                               0           0      252     512
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                               1           1        4     512
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                               1           1        4     512
6-24 months   ki1113344-GMS-Nepal        NEPAL                                   0           0      507    1184
6-24 months   ki1113344-GMS-Nepal        NEPAL                                   0           0      507    1184
6-24 months   ki1113344-GMS-Nepal        NEPAL                                   1           1       85    1184
6-24 months   ki1113344-GMS-Nepal        NEPAL                                   1           1       85    1184
6-24 months   ki1114097-CMIN             BANGLADESH                              0           0      237     514
6-24 months   ki1114097-CMIN             BANGLADESH                              0           0      237     514
6-24 months   ki1114097-CMIN             BANGLADESH                              1           1       20     514
6-24 months   ki1114097-CMIN             BANGLADESH                              1           1       20     514
6-24 months   ki1114097-CMIN             BRAZIL                                  0           0      119     238
6-24 months   ki1114097-CMIN             BRAZIL                                  0           0      119     238
6-24 months   ki1114097-CMIN             BRAZIL                                  1           1        0     238
6-24 months   ki1114097-CMIN             BRAZIL                                  1           1        0     238
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                           0           0     1117    2306
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                           0           0     1117    2306
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                           1           1       36    2306
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                           1           1       36    2306
6-24 months   ki1114097-CMIN             PERU                                    0           0      825    1660
6-24 months   ki1114097-CMIN             PERU                                    0           0      825    1660
6-24 months   ki1114097-CMIN             PERU                                    1           1        5    1660
6-24 months   ki1114097-CMIN             PERU                                    1           1        5    1660
6-24 months   ki1114097-CONTENT          PERU                                    0           0      215     430
6-24 months   ki1114097-CONTENT          PERU                                    0           0      215     430
6-24 months   ki1114097-CONTENT          PERU                                    1           1        0     430
6-24 months   ki1114097-CONTENT          PERU                                    1           1        0     430
6-24 months   ki1119695-PROBIT           BELARUS                                 0           0     7877   15944
6-24 months   ki1119695-PROBIT           BELARUS                                 0           0     7877   15944
6-24 months   ki1119695-PROBIT           BELARUS                                 1           1       95   15944
6-24 months   ki1119695-PROBIT           BELARUS                                 1           1       95   15944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                0           0     9166   18666
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                0           0     9166   18666
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                1           1      167   18666
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                1           1      167   18666
6-24 months   ki1135781-COHORTS          GUATEMALA                               0           0      489    1030
6-24 months   ki1135781-COHORTS          GUATEMALA                               0           0      489    1030
6-24 months   ki1135781-COHORTS          GUATEMALA                               1           1       26    1030
6-24 months   ki1135781-COHORTS          GUATEMALA                               1           1       26    1030
6-24 months   ki1135781-COHORTS          INDIA                                   0           0     5155   11410
6-24 months   ki1135781-COHORTS          INDIA                                   0           0     5155   11410
6-24 months   ki1135781-COHORTS          INDIA                                   1           1      550   11410
6-24 months   ki1135781-COHORTS          INDIA                                   1           1      550   11410
6-24 months   ki1135781-COHORTS          PHILIPPINES                             0           0     2667    5622
6-24 months   ki1135781-COHORTS          PHILIPPINES                             0           0     2667    5622
6-24 months   ki1135781-COHORTS          PHILIPPINES                             1           1      144    5622
6-24 months   ki1135781-COHORTS          PHILIPPINES                             1           1      144    5622
6-24 months   ki1148112-LCNI-5           MALAWI                                  0           0      713    1438
6-24 months   ki1148112-LCNI-5           MALAWI                                  0           0      713    1438
6-24 months   ki1148112-LCNI-5           MALAWI                                  1           1        6    1438
6-24 months   ki1148112-LCNI-5           MALAWI                                  1           1        6    1438
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                              0           0     7309   15520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                              0           0     7309   15520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                              1           1      451   15520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                              1           1      451   15520
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                              0           0     1266    2756
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                              0           0     1266    2756
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                              1           1      112    2756
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                              1           1      112    2756


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
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/9fe90125-ceb9-4a96-b3b1-0a725a1d6001/169ce17c-be42-4f9b-b83a-72ad30137bd9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9fe90125-ceb9-4a96-b3b1-0a725a1d6001/169ce17c-be42-4f9b-b83a-72ad30137bd9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9fe90125-ceb9-4a96-b3b1-0a725a1d6001/169ce17c-be42-4f9b-b83a-72ad30137bd9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9fe90125-ceb9-4a96-b3b1-0a725a1d6001/169ce17c-be42-4f9b-b83a-72ad30137bd9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ---------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                       0          0          0
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                       1          1          1
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                       0          0          0
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                       1          1          1
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                       0          0          0
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                       1          1          1
0-24 months   ki1000108-IRC              INDIA                          0                    NA                       0          0          0
0-24 months   ki1000108-IRC              INDIA                          1                    NA                       1          1          1
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                       0          0          0
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                       1          1          1
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                       0          0          0
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                       1          1          1
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                       0          0          0
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                       1          1          1
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                       0          0          0
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                       1          1          1
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                       0          0          0
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                       1          1          1
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                       0          0          0
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                       1          1          1
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                       0          0          0
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                       1          1          1
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                       0          0          0
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                       1          1          1
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                       0          0          0
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                       1          1          1
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                       0          0          0
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                       1          1          1
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                       0          0          0
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                       1          1          1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                       0          0          0
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                       1          1          1
0-24 months   ki1114097-CMIN             PERU                           0                    NA                       0          0          0
0-24 months   ki1114097-CMIN             PERU                           1                    NA                       1          1          1
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                       0          0          0
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                       1          1          1
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                       0          0          0
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                       1          1          1
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                       0          0          0
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                       1          1          1
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                       0          0          0
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                       1          1          1
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                       0          0          0
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                       1          1          1
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                       0          0          0
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                       1          1          1
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                       0          0          0
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                       1          1          1
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                       0          0          0
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                       1          1          1
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                       0          0          0
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                       1          1          1
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                       0          0          0
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                       1          1          1
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                       0          0          0
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                       1          1          1
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                       0          0          0
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                       1          1          1
0-6 months    ki1000108-IRC              INDIA                          0                    NA                       0          0          0
0-6 months    ki1000108-IRC              INDIA                          1                    NA                       1          1          1
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                       0          0          0
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                       1          1          1
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                       0          0          0
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                       1          1          1
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                       0          0          0
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                       1          1          1
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                       0          0          0
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                       1          1          1
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                       0          0          0
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                       1          1          1
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                       0          0          0
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                       1          1          1
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                       0          0          0
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                       1          1          1
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                       0          0          0
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                       1          1          1
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                       0          0          0
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                       1          1          1
0-6 months    ki1114097-CMIN             PERU                           0                    NA                       0          0          0
0-6 months    ki1114097-CMIN             PERU                           1                    NA                       1          1          1
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                       0          0          0
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                       1          1          1
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                       0          0          0
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                       1          1          1
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                       0          0          0
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                       1          1          1
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                       0          0          0
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                       1          1          1
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                       0          0          0
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                       1          1          1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                       0          0          0
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                       1          1          1
6-24 months   ki1000108-IRC              INDIA                          0                    NA                       0          0          0
6-24 months   ki1000108-IRC              INDIA                          1                    NA                       1          1          1
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                       0          0          0
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                       1          1          1
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                       0          0          0
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                       1          1          1
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                       0          0          0
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                       1          1          1
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                       0          0          0
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                       1          1          1
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                       0          0          0
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                       1          1          1
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                       0          0          0
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                       1          1          1
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                       0          0          0
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                       1          1          1
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                       0          0          0
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                       1          1          1
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                       0          0          0
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                       1          1          1
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                       0          0          0
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                       1          1          1
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                       0          0          0
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                       1          1          1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                       0          0          0
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                       1          1          1
6-24 months   ki1114097-CMIN             PERU                           0                    NA                       0          0          0
6-24 months   ki1114097-CMIN             PERU                           1                    NA                       1          1          1
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                       0          0          0
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                       1          1          1
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                       0          0          0
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                       0          0          0
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                       0          0          0
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                       0          0          0
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                       1          1          1
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                       0          0          0
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                       1          1          1
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                       0          0          0
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                       1          1          1
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                       0          0          0
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                       1          1          1


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0524194   0.0246252   0.0802135
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0747664   0.0516226   0.0979101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1914894   0.1115203   0.2714584
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267775   0.0199775   0.0335775
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0060241   0.0007566   0.0112916
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0504854   0.0315576   0.0694132
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0083449   0.0016910   0.0149988
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0581186   0.0523097   0.0639274
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0812772   0.0652971   0.0972574
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0282258   0.0075717   0.0488799
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0210970   0.0027624   0.0394317
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0650888   0.0277868   0.1023907
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0200000   0.0026109   0.0373891
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252305   0.0184583   0.0320026
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0384615   0.0137689   0.0631541
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0215054   0.0094585   0.0335522
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0941866   0.0454872   0.1428859
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0229508   0.0110577   0.0348440
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0524194   0.0246252   0.0802135
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0871369   0.0514552   0.1228187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1354582   0.0930379   0.1778785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0747664   0.0516226   0.0979101
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1914894   0.1115203   0.2714584
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267775   0.0199775   0.0335775
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0540762   0.0451022   0.0630502
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0778210   0.0450051   0.1106369
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0312229   0.0211797   0.0412661
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0060241   0.0007566   0.0112916
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178935   0.0152039   0.0205831
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0504854   0.0315576   0.0694132
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0964067   0.0887472   0.1040661
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0083449   0.0016910   0.0149988
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0581186   0.0523097   0.0639274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0812772   0.0652971   0.0972574


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate       ci_lower       ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -------------  -------------  -------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                            1              1              1
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 344744197878   334779122369   355005895021
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                            1              1              1
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 344744197878   331528880710   358486300549
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                            1              1              1
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 344744197878   335879598926   353842753031
0-24 months   ki1000108-IRC              INDIA                          0                    0                            1              1              1
0-24 months   ki1000108-IRC              INDIA                          1                    0                 344744197878   332790311428   357127470030
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                            1              1              1
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 344744197878   335014141520   354756851253
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                            1              1              1
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 344744197878   328236994949   362081556313
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                            1              1              1
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 344744197878   336227740109   353476372687
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                            1              1              1
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 344744197878   312277940721   380585838680
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                            1              1              1
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 344744197878   335770911279   353957290457
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                            1              1              1
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 344744197878   340621459131   348916836519
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                            1              1              1
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 344744197878   339968290656   349587197504
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                            1              1              1
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 344744197878   342343826439   347161399716
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                            1              1              1
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 344744197878   341489080162   348030343794
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                            1              1              1
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 344744197878   333549606339   356314502287
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                            1              1              1
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 344744197878   332692129317   357232863352
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                            1              1              1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 344744197878   341188750181   348336696060
0-24 months   ki1114097-CMIN             PERU                           0                    0                            1              1              1
0-24 months   ki1114097-CMIN             PERU                           1                    0                 344744197878   342886716641   346611741437
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                            1              1              1
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 344744197878   342168990038   347338787064
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                            1              1              1
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 344744197878   343794509562   345696509588
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                            1              1              1
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 344744197878   337940041661   351685350414
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                            1              1              1
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                 344744197878   341834265327   347678901812
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                            1              1              1
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 344744197878   341795044440   347718797871
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                            1              1              1
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 344744197878   342399490590   347104961418
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                            1              1              1
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 344744197878   342624604670   346876903616
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                            1              1              1
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 344744197878   338799604897   350793094953
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                            1              1              1
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 344744197878   337494331344   352149802035
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                            1              1              1
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 344744197878   332164224568   357800609398
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                            1              1              1
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 344744197878   338321934943   351288372688
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                            1              1              1
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 344744197878   330632588461   359458099771
0-6 months    ki1000108-IRC              INDIA                          0                    0                            1              1              1
0-6 months    ki1000108-IRC              INDIA                          1                    0                 344744197878   330369820860   359744003436
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                            1              1              1
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 344744197878   334906150615   354871243041
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                            1              1              1
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 344744197878   330157966196   359974842770
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                            1              1              1
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 344744197878   331260063287   358777212053
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                            1              1              1
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 344744197878   340738803559   348796675722
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                            1              1              1
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 344744197878   338650207709   350947849035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                            1              1              1
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 344744197878   342357401330   347147634340
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                            1              1              1
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 344744197878   342352859633   347152239645
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                            1              1              1
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 344744197878   334185586714   355636408917
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                            1              1              1
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 344744197878   336003771508   353711987926
0-6 months    ki1114097-CMIN             PERU                           0                    0                            1              1              1
0-6 months    ki1114097-CMIN             PERU                           1                    0                 344744197878   340510836559   349030189969
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                            1              1              1
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 344744197878   326699098993   363786010849
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                            1              1              1
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 344744197878   340564518039   348975174087
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                            1              1              1
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 344744197878   338896285040   350693020894
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                            1              1              1
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 344744197878   334779122369   355005895021
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                            1              1              1
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 344744197878   331528880710   358486300549
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                            1              1              1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 344744197878   335879598926   353842753031
6-24 months   ki1000108-IRC              INDIA                          0                    0                            1              1              1
6-24 months   ki1000108-IRC              INDIA                          1                    0                 344744197878   332790311428   357127470030
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                            1              1              1
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 344744197878   335014141520   354756851253
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                            1              1              1
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 344744197878   328236994949   362081556313
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                            1              1              1
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 344744197878   336227740109   353476372687
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                            1              1              1
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 344744197878   312277940721   380585838680
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                            1              1              1
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 344744197878   335770911279   353957290457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                            1              1              1
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 344744197878   340621459131   348916836519
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                            1              1              1
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 344744197878   339968290656   349587197504
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                            1              1              1
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 344744197878   342343826439   347161399716
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                            1              1              1
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 344744197878   341489080162   348030343794
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                            1              1              1
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 344744197878   333549606339   356314502287
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                            1              1              1
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 344744197878   332692129317   357232863352
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                            1              1              1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 344744197878   341188750181   348336696060
6-24 months   ki1114097-CMIN             PERU                           0                    0                            1              1              1
6-24 months   ki1114097-CMIN             PERU                           1                    0                 344744197878   342886716641   346611741437
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                            1              1              1
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 344744197878   342168990038   347338787064
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                            1              1              1
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 344744197878   343794509562   345696509588
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                            1              1              1
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 344744197878   337940041661   351685350414
6-24 months   ki1135781-COHORTS          INDIA                          0                    0                            1              1              1
6-24 months   ki1135781-COHORTS          INDIA                          1                    0                 344744197878   341834265327   347678901812
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                            1              1              1
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 344744197878   341795044440   347718797871
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                            1              1              1
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 344744197878   342399490590   347104961418
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                            1              1              1
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 344744197878   342624604670   346876903616
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                            1              1              1
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 344744197878   338799604897   350793094953


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0524194   0.0246252   0.0802135
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0747664   0.0516226   0.0979101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1914894   0.1115203   0.2714584
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267775   0.0199775   0.0335775
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0060241   0.0007566   0.0112916
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0119167   0.0046062   0.0192272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0504854   0.0315576   0.0694132
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0512273   0.0430760   0.0593786
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0083449   0.0016910   0.0149988
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0581186   0.0523097   0.0639274
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0812772   0.0652971   0.0972574
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0282258   0.0075717   0.0488799
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0791667   0.0449364   0.1133970
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0210970   0.0027624   0.0394317
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0650888   0.0277868   0.1023907
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0200000   0.0026109   0.0373891
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0252305   0.0184583   0.0320026
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.0384615   0.0137689   0.0631541
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.0215054   0.0094585   0.0335522
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0941866   0.0454872   0.1428859
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0229508   0.0110577   0.0348440
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0609613   0.0448957   0.0770269
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0524194   0.0246252   0.0802135
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0871369   0.0514552   0.1228187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1354582   0.0930379   0.1778785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0747664   0.0516226   0.0979101
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1914894   0.1115203   0.2714584
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267775   0.0199775   0.0335775
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0540762   0.0451022   0.0630502
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0778210   0.0450051   0.1106369
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0312229   0.0211797   0.0412661
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0060241   0.0007566   0.0112916
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0119167   0.0046062   0.0192272
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0178935   0.0152039   0.0205831
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0504854   0.0315576   0.0694132
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0964067   0.0887472   0.1040661
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0512273   0.0430760   0.0593786
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0083449   0.0016910   0.0149988
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0581186   0.0523097   0.0639274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0812772   0.0652971   0.0972574


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ---------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                       1          1          1
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                       1          1          1
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                       1          1          1
0-24 months   ki1000108-IRC              INDIA                          0                    NA                       1          1          1
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                       1          1          1
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                       1          1          1
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                       1          1          1
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                       1          1          1
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                       1          1          1
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                       1          1          1
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                       1          1          1
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                       1          1          1
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                       1          1          1
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                       1          1          1
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                       1          1          1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                       1          1          1
0-24 months   ki1114097-CMIN             PERU                           0                    NA                       1          1          1
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                       1          1          1
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                       1          1          1
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                       1          1          1
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                       1          1          1
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                       1          1          1
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                       1          1          1
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                       1          1          1
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                       1          1          1
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                       1          1          1
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                       1          1          1
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                       1          1          1
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                       1          1          1
0-6 months    ki1000108-IRC              INDIA                          0                    NA                       1          1          1
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                       1          1          1
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                       1          1          1
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                       1          1          1
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                       1          1          1
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                       1          1          1
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                       1          1          1
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                       1          1          1
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                       1          1          1
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                       1          1          1
0-6 months    ki1114097-CMIN             PERU                           0                    NA                       1          1          1
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                       1          1          1
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                       1          1          1
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                       1          1          1
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                       1          1          1
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                       1          1          1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                       1          1          1
6-24 months   ki1000108-IRC              INDIA                          0                    NA                       1          1          1
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                       1          1          1
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                       1          1          1
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                       1          1          1
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                       1          1          1
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                       1          1          1
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                       1          1          1
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                       1          1          1
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                       1          1          1
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                       1          1          1
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                       1          1          1
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                       1          1          1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                       1          1          1
6-24 months   ki1114097-CMIN             PERU                           0                    NA                       1          1          1
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                       1          1          1
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          INDIA                          0                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                       1          1          1
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                       1          1          1
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                       1          1          1
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                       1          1          1
