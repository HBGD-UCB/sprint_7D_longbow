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
0-24 months   ki1000109-EE               PAKISTAN                                0           0      698    1508
0-24 months   ki1000109-EE               PAKISTAN                                0           0      698    1508
0-24 months   ki1000109-EE               PAKISTAN                                1           1       56    1508
0-24 months   ki1000109-EE               PAKISTAN                                1           1       56    1508
0-24 months   ki1000109-ResPak           PAKISTAN                                0           0      217     502
0-24 months   ki1000109-ResPak           PAKISTAN                                0           0      217     502
0-24 months   ki1000109-ResPak           PAKISTAN                                1           1       34     502
0-24 months   ki1000109-ResPak           PAKISTAN                                1           1       34     502
0-24 months   ki1000304b-SAS-CompFeed    INDIA                                   0           0     1252    2732
0-24 months   ki1000304b-SAS-CompFeed    INDIA                                   0           0     1252    2732
0-24 months   ki1000304b-SAS-CompFeed    INDIA                                   1           1      114    2732
0-24 months   ki1000304b-SAS-CompFeed    INDIA                                   1           1      114    2732
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   0           0      310     750
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   0           0      310     750
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   1           1       65     750
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   1           1       65     750
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                            0           0     1469    3338
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                            0           0     1469    3338
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                            1           1      200    3338
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                            1           1      200    3338
0-24 months   ki1113344-GMS-Nepal        NEPAL                                   0           0     1014    2368
0-24 months   ki1113344-GMS-Nepal        NEPAL                                   0           0     1014    2368
0-24 months   ki1113344-GMS-Nepal        NEPAL                                   1           1      170    2368
0-24 months   ki1113344-GMS-Nepal        NEPAL                                   1           1      170    2368
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
0-24 months   ki1119695-PROBIT           BELARUS                                 0           0    16422   33162
0-24 months   ki1119695-PROBIT           BELARUS                                 0           0    16422   33162
0-24 months   ki1119695-PROBIT           BELARUS                                 1           1      159   33162
0-24 months   ki1119695-PROBIT           BELARUS                                 1           1      159   33162
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                0           0     9166   18666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                0           0     9166   18666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                1           1      167   18666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                1           1      167   18666
0-24 months   ki1135781-COHORTS          GUATEMALA                               0           0     1020    2112
0-24 months   ki1135781-COHORTS          GUATEMALA                               0           0     1020    2112
0-24 months   ki1135781-COHORTS          GUATEMALA                               1           1       36    2112
0-24 months   ki1135781-COHORTS          GUATEMALA                               1           1       36    2112
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                              0           0    29562   62716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                              0           0    29562   62716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                              1           1     1796   62716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                              1           1     1796   62716
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                              0           0     9477   20614
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                              0           0     9477   20614
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                              1           1      830   20614
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                              1           1      830   20614
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
0-6 months    ki1000109-EE               PAKISTAN                                0           0      678    1464
0-6 months    ki1000109-EE               PAKISTAN                                0           0      678    1464
0-6 months    ki1000109-EE               PAKISTAN                                1           1       54    1464
0-6 months    ki1000109-EE               PAKISTAN                                1           1       54    1464
0-6 months    ki1000109-ResPak           PAKISTAN                                0           0      215     480
0-6 months    ki1000109-ResPak           PAKISTAN                                0           0      215     480
0-6 months    ki1000109-ResPak           PAKISTAN                                1           1       25     480
0-6 months    ki1000109-ResPak           PAKISTAN                                1           1       25     480
0-6 months    ki1017093b-PROVIDE         BANGLADESH                              0           0      623    1274
0-6 months    ki1017093b-PROVIDE         BANGLADESH                              0           0      623    1274
0-6 months    ki1017093b-PROVIDE         BANGLADESH                              1           1       14    1274
0-6 months    ki1017093b-PROVIDE         BANGLADESH                              1           1       14    1274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     2009    4122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     2009    4122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       52    4122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       52    4122
0-6 months    ki1101329-Keneba           GAMBIA                                  0           0     1986    4074
0-6 months    ki1101329-Keneba           GAMBIA                                  0           0     1986    4074
0-6 months    ki1101329-Keneba           GAMBIA                                  1           1       51    4074
0-6 months    ki1101329-Keneba           GAMBIA                                  1           1       51    4074
0-6 months    ki1113344-GMS-Nepal        NEPAL                                   0           0      954    2168
0-6 months    ki1113344-GMS-Nepal        NEPAL                                   0           0      954    2168
0-6 months    ki1113344-GMS-Nepal        NEPAL                                   1           1      130    2168
0-6 months    ki1113344-GMS-Nepal        NEPAL                                   1           1      130    2168
0-6 months    ki1114097-CMIN             BANGLADESH                              0           0      225     468
0-6 months    ki1114097-CMIN             BANGLADESH                              0           0      225     468
0-6 months    ki1114097-CMIN             BANGLADESH                              1           1        9     468
0-6 months    ki1114097-CMIN             BANGLADESH                              1           1        9     468
0-6 months    ki1114097-CMIN             PERU                                    0           0      546    1116
0-6 months    ki1114097-CMIN             PERU                                    0           0      546    1116
0-6 months    ki1114097-CMIN             PERU                                    1           1       12    1116
0-6 months    ki1114097-CMIN             PERU                                    1           1       12    1116
0-6 months    ki1114097-CONTENT          PERU                                    0           0      215     430
0-6 months    ki1114097-CONTENT          PERU                                    0           0      215     430
0-6 months    ki1114097-CONTENT          PERU                                    1           1        0     430
0-6 months    ki1114097-CONTENT          PERU                                    1           1        0     430
6-24 months   ki0047075b-MAL-ED          BANGLADESH                              0           0      217     468
6-24 months   ki0047075b-MAL-ED          BANGLADESH                              0           0      217     468
6-24 months   ki0047075b-MAL-ED          BANGLADESH                              1           1       17     468
6-24 months   ki0047075b-MAL-ED          BANGLADESH                              1           1       17     468
6-24 months   ki0047075b-MAL-ED          BRAZIL                                  0           0      195     394
6-24 months   ki0047075b-MAL-ED          BRAZIL                                  0           0      195     394
6-24 months   ki0047075b-MAL-ED          BRAZIL                                  1           1        2     394
6-24 months   ki0047075b-MAL-ED          BRAZIL                                  1           1        2     394
6-24 months   ki0047075b-MAL-ED          INDIA                                   0           0      204     462
6-24 months   ki0047075b-MAL-ED          INDIA                                   0           0      204     462
6-24 months   ki0047075b-MAL-ED          INDIA                                   1           1       27     462
6-24 months   ki0047075b-MAL-ED          INDIA                                   1           1       27     462
6-24 months   ki0047075b-MAL-ED          NEPAL                                   0           0      229     462
6-24 months   ki0047075b-MAL-ED          NEPAL                                   0           0      229     462
6-24 months   ki0047075b-MAL-ED          NEPAL                                   1           1        2     462
6-24 months   ki0047075b-MAL-ED          NEPAL                                   1           1        2     462
6-24 months   ki0047075b-MAL-ED          PERU                                    0           0      249     502
6-24 months   ki0047075b-MAL-ED          PERU                                    0           0      249     502
6-24 months   ki0047075b-MAL-ED          PERU                                    1           1        2     502
6-24 months   ki0047075b-MAL-ED          PERU                                    1           1        2     502
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            0           0      253     510
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            0           0      253     510
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            1           1        2     510
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                            1           1        2     510
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            0           0      238     476
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            0           0      238     476
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            1           1        0     476
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF            1           1        0     476
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   0           0      345     746
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   0           0      345     746
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   1           1       28     746
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                   1           1       28     746
6-24 months   ki1000108-IRC              INDIA                                   0           0      362     820
6-24 months   ki1000108-IRC              INDIA                                   0           0      362     820
6-24 months   ki1000108-IRC              INDIA                                   1           1       48     820
6-24 months   ki1000108-IRC              INDIA                                   1           1       48     820
6-24 months   ki1000109-EE               PAKISTAN                                0           0      650    1472
6-24 months   ki1000109-EE               PAKISTAN                                0           0      650    1472
6-24 months   ki1000109-EE               PAKISTAN                                1           1       86    1472
6-24 months   ki1000109-EE               PAKISTAN                                1           1       86    1472
6-24 months   ki1000109-ResPak           PAKISTAN                                0           0      164     412
6-24 months   ki1000109-ResPak           PAKISTAN                                0           0      164     412
6-24 months   ki1000109-ResPak           PAKISTAN                                1           1       42     412
6-24 months   ki1000109-ResPak           PAKISTAN                                1           1       42     412
6-24 months   ki1000304b-SAS-CompFeed    INDIA                                   0           0     1016    2408
6-24 months   ki1000304b-SAS-CompFeed    INDIA                                   0           0     1016    2408
6-24 months   ki1000304b-SAS-CompFeed    INDIA                                   1           1      188    2408
6-24 months   ki1000304b-SAS-CompFeed    INDIA                                   1           1      188    2408
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   0           0      289     696
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   0           0      289     696
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   1           1       59     696
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                                   1           1       59     696
6-24 months   ki1017093-NIH-Birth        BANGLADESH                              0           0      437     984
6-24 months   ki1017093-NIH-Birth        BANGLADESH                              0           0      437     984
6-24 months   ki1017093-NIH-Birth        BANGLADESH                              1           1       55     984
6-24 months   ki1017093-NIH-Birth        BANGLADESH                              1           1       55     984
6-24 months   ki1017093b-PROVIDE         BANGLADESH                              0           0      563    1202
6-24 months   ki1017093b-PROVIDE         BANGLADESH                              0           0      563    1202
6-24 months   ki1017093b-PROVIDE         BANGLADESH                              1           1       38    1202
6-24 months   ki1017093b-PROVIDE         BANGLADESH                              1           1       38    1202
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              0           0      655    1394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              0           0      655    1394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              1           1       42    1394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                              1           1       42    1394
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     1622    3412
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            0           0     1622    3412
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       84    3412
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF            1           1       84    3412
6-24 months   ki1101329-Keneba           GAMBIA                                  0           0     2033    4464
6-24 months   ki1101329-Keneba           GAMBIA                                  0           0     2033    4464
6-24 months   ki1101329-Keneba           GAMBIA                                  1           1      199    4464
6-24 months   ki1101329-Keneba           GAMBIA                                  1           1      199    4464
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                               0           0      215     436
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                               0           0      215     436
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                               1           1        3     436
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                               1           1        3     436
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                            0           0     1469    3338
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                            0           0     1469    3338
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                            1           1      200    3338
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                            1           1      200    3338
6-24 months   ki1113344-GMS-Nepal        NEPAL                                   0           0      940    2308
6-24 months   ki1113344-GMS-Nepal        NEPAL                                   0           0      940    2308
6-24 months   ki1113344-GMS-Nepal        NEPAL                                   1           1      214    2308
6-24 months   ki1113344-GMS-Nepal        NEPAL                                   1           1      214    2308
6-24 months   ki1114097-CMIN             BANGLADESH                              0           0      226     502
6-24 months   ki1114097-CMIN             BANGLADESH                              0           0      226     502
6-24 months   ki1114097-CMIN             BANGLADESH                              1           1       25     502
6-24 months   ki1114097-CMIN             BANGLADESH                              1           1       25     502
6-24 months   ki1114097-CMIN             BRAZIL                                  0           0      117     234
6-24 months   ki1114097-CMIN             BRAZIL                                  0           0      117     234
6-24 months   ki1114097-CMIN             BRAZIL                                  1           1        0     234
6-24 months   ki1114097-CMIN             BRAZIL                                  1           1        0     234
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                           0           0      951    1974
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                           0           0      951    1974
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                           1           1       36    1974
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                           1           1       36    1974
6-24 months   ki1114097-CMIN             PERU                                    0           0      730    1468
6-24 months   ki1114097-CMIN             PERU                                    0           0      730    1468
6-24 months   ki1114097-CMIN             PERU                                    1           1        4    1468
6-24 months   ki1114097-CMIN             PERU                                    1           1        4    1468
6-24 months   ki1114097-CONTENT          PERU                                    0           0      215     430
6-24 months   ki1114097-CONTENT          PERU                                    0           0      215     430
6-24 months   ki1114097-CONTENT          PERU                                    1           1        0     430
6-24 months   ki1114097-CONTENT          PERU                                    1           1        0     430
6-24 months   ki1119695-PROBIT           BELARUS                                 0           0     7095   14194
6-24 months   ki1119695-PROBIT           BELARUS                                 0           0     7095   14194
6-24 months   ki1119695-PROBIT           BELARUS                                 1           1        2   14194
6-24 months   ki1119695-PROBIT           BELARUS                                 1           1        2   14194
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                0           0     2131    4452
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                0           0     2131    4452
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                1           1       95    4452
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                1           1       95    4452
6-24 months   ki1135781-COHORTS          GUATEMALA                               0           0      894    1870
6-24 months   ki1135781-COHORTS          GUATEMALA                               0           0      894    1870
6-24 months   ki1135781-COHORTS          GUATEMALA                               1           1       41    1870
6-24 months   ki1135781-COHORTS          GUATEMALA                               1           1       41    1870
6-24 months   ki1135781-COHORTS          PHILIPPINES                             0           0     2446    5278
6-24 months   ki1135781-COHORTS          PHILIPPINES                             0           0     2446    5278
6-24 months   ki1135781-COHORTS          PHILIPPINES                             1           1      193    5278
6-24 months   ki1135781-COHORTS          PHILIPPINES                             1           1      193    5278
6-24 months   ki1148112-LCNI-5           MALAWI                                  0           0      689    1390
6-24 months   ki1148112-LCNI-5           MALAWI                                  0           0      689    1390
6-24 months   ki1148112-LCNI-5           MALAWI                                  1           1        6    1390
6-24 months   ki1148112-LCNI-5           MALAWI                                  1           1        6    1390
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                              0           0     8805   19718
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                              0           0     8805   19718
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                              1           1     1054   19718
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                              1           1     1054   19718


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6a99d835-f2e3-48d3-8bb5-99d31e3f24fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a99d835-f2e3-48d3-8bb5-99d31e3f24fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a99d835-f2e3-48d3-8bb5-99d31e3f24fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a99d835-f2e3-48d3-8bb5-99d31e3f24fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                       0          0          0
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                       1          1          1
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                       0          0          0
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                       1          1          1
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                       0          0          0
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                       1          1          1
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                       0          0          0
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                       1          1          1
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                       0          0          0
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                       1          1          1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                       0          0          0
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                       1          1          1
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                       0          0          0
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                       0          0          0
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                       0          0          0
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                       1          1          1
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                       0          0          0
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                       1          1          1
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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267775   0.0199775   0.0335775
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0060241   0.0007566   0.0112916
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0340909   0.0231410   0.0450408
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0083449   0.0016910   0.0149988
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572741   0.0531873   0.0613609
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0805278   0.0718757   0.0891799
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0282258   0.0075717   0.0488799
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0210970   0.0027624   0.0394317
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252305   0.0184583   0.0320026
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0384615   0.0137689   0.0631541
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0215054   0.0094585   0.0335522
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0726496   0.0393216   0.1059775
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1168831   0.0753620   0.1584042
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1168478   0.0839821   0.1497135
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2038835   0.1487329   0.2590341
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0492380   0.0389679   0.0595080
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0891577   0.0773328   0.1009827
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1854419   0.1537023   0.2171816
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0996016   0.0624798   0.1367234
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0364742   0.0247729   0.0481755
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0426774   0.0342788   0.0510761
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0438503   0.0307185   0.0569821
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0731338   0.0631985   0.0830690
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0086331   0.0017502   0.0155160
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1069074   0.0961821   0.1176327


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 344744197878   336106686032   353603682729
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                            1              1              1
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 344744197878   329111036949   361119952319
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                            1              1              1
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 344744197878   335770911279   353957290457
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                            1              1              1
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 344744197878   340628015976   348910120121
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                            1              1              1
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 344744197878   339968290656   349587197504
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                            1              1              1
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 344744197878   342343826439   347161399716
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                            1              1              1
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 344744197878   341489080162   348030343794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                            1              1              1
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 344744197878   334915845214   354860970805
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                            1              1              1
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 344744197878   333549606339   356314502287
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                            1              1              1
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 344744197878   332692129317   357232863352
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                            1              1              1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 344744197878   341188750181   348336696060
0-24 months   ki1114097-CMIN             PERU                           0                    0                            1              1              1
0-24 months   ki1114097-CMIN             PERU                           1                    0                 344744197878   342922083767   346575993780
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                            1              1              1
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 344744197878   343249676113   346245226846
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                            1              1              1
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 344744197878   343801372082   345689609238
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                            1              1              1
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 344744197878   340858127506   348674572733
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                            1              1              1
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                 344744197878   341834265327   347678901812
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                            1              1              1
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 344744197878   341795044440   347718797871
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                            1              1              1
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 344744197878   342438738519   347065178679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                            1              1              1
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 344744197879   343252939259   346241935256
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                            1              1              1
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 344744197878   341515413830   348003507771
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                            1              1              1
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 344744197878   337494331344   352149802035
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                            1              1              1
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 344744197878   332164224568   357800609398
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                            1              1              1
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 344744197878   338347301896   351262035502
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                            1              1              1
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 344744197878   330632588461   359458099771
0-6 months    ki1000108-IRC              INDIA                          0                    0                            1              1              1
0-6 months    ki1000108-IRC              INDIA                          1                    0                 344744197878   330369820860   359744003436
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                            1              1              1
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 344744197878   334906150615   354871243041
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                            1              1              1
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 344744197878   330157966196   359974842770
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                            1              1              1
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 344744197878   340751107823   348784080938
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                            1              1              1
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 344744197878   342357401330   347147634340
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                            1              1              1
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 344744197878   342352859633   347152239645
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                            1              1              1
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 344744197878   334185586714   355636408917
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                            1              1              1
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 344744197878   336003771508   353711987926
0-6 months    ki1114097-CMIN             PERU                           0                    0                            1              1              1
0-6 months    ki1114097-CMIN             PERU                           1                    0                 344744197878   340525862826   349014788434
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                            1              1              1
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 344744197878   332574465439   357359251299
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                            1              1              1
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 344744197878   328910643478   361339969768
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                            1              1              1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 344744197878   334906990116   354870353495
6-24 months   ki1000108-IRC              INDIA                          0                    0                            1              1              1
6-24 months   ki1000108-IRC              INDIA                          1                    0                 344744197878   332790311428   357127470030
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                            1              1              1
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 344744197878   332150632787   357815250790
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                            1              1              1
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 344744197878   321670622249   369472851266
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                            1              1              1
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 344744197878   338636062900   350962508107
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                            1              1              1
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 344744197878   328738482479   361529204231
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                            1              1              1
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 344744197878   334094218848   355733668126
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                            1              1              1
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 344744197878   337651673738   351985703655
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                            1              1              1
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 344744197878   338319307164   351291101199
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                            1              1              1
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 344744197878   341040346158   348488275096
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                            1              1              1
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 344744197878   340297505661   349248995346
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                            1              1              1
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 344744197878   334915845214   354860970805
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                            1              1              1
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 344744197878   331569428947   358442460598
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                            1              1              1
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 344744197878   330820037549   359254423799
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                            1              1              1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 344744197878   340582858176   348956382030
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                            1              1              1
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 344744197878   341732950293   347781979668
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                            1              1              1
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 344744197878   340041837654   349511585958
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                            1              1              1
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 344744197878   341068561591   348459445855
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                            1              1              1
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 344744197878   342358998986   347146014337
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                            1              1              1
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 344744197878   340628860758   348909254801


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0524194   0.0246252   0.0802135
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267775   0.0199775   0.0335775
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.0060241   0.0007566   0.0112916
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0340909   0.0231410   0.0450408
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0512273   0.0430760   0.0593786
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0083449   0.0016910   0.0149988
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0572741   0.0531873   0.0613609
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0805278   0.0718757   0.0891799
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0282258   0.0075717   0.0488799
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0791667   0.0449364   0.1133970
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0210970   0.0027624   0.0394317
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0252305   0.0184583   0.0320026
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.0384615   0.0137689   0.0631541
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.0215054   0.0094585   0.0335522
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0726496   0.0393216   0.1059775
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1168831   0.0753620   0.1584042
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0750670   0.0482904   0.1018437
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1168478   0.0839821   0.1497135
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.2038835   0.1487329   0.2590341
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0492380   0.0389679   0.0595080
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0891577   0.0773328   0.1009827
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1198322   0.0943748   0.1452897
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1854419   0.1537023   0.2171816
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0996016   0.0624798   0.1367234
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0364742   0.0247729   0.0481755
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0426774   0.0342788   0.0510761
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0438503   0.0307185   0.0569821
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0731338   0.0631985   0.0830690
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0086331   0.0017502   0.0155160
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1069074   0.0961821   0.1176327


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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                       1          1          1
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                       1          1          1
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                       1          1          1
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                       1          1          1
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                       1          1          1
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                       1          1          1
0-6 months    ki1114097-CMIN             PERU                           0                    NA                       1          1          1
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                       1          1          1
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                       1          1          1
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                       1          1          1
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                       1          1          1
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                       1          1          1
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                       1          1          1
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                       1          1          1
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                       1          1          1
