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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        feducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                     0       46     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                     1        8     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                     0       25     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                     1        6     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                     0        6     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                     1        3     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                     0       45     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                     1       10     149
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                     0       36     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                     1        8     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                     0       24     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                     1        1     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                     0       39     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                     1        6     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                     0       28     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                     1        5     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q4                     0       37      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q4                     1        5      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q1                     0       21      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q1                     1        3      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q2                     0       19      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q2                     1        6      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q3                     0        6      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q3                     1        1      98
0-6 months    ki0047075b-MAL-ED          PERU                           Q4                     0      109     250
0-6 months    ki0047075b-MAL-ED          PERU                           Q4                     1       11     250
0-6 months    ki0047075b-MAL-ED          PERU                           Q1                     0       40     250
0-6 months    ki0047075b-MAL-ED          PERU                           Q1                     1       11     250
0-6 months    ki0047075b-MAL-ED          PERU                           Q2                     0       59     250
0-6 months    ki0047075b-MAL-ED          PERU                           Q2                     1        7     250
0-6 months    ki0047075b-MAL-ED          PERU                           Q3                     0       13     250
0-6 months    ki0047075b-MAL-ED          PERU                           Q3                     1        0     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     0       37     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     1        6     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     0       19     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     1        0     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     0       27     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     1        1     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     0       17     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     1        3     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     0        9     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     1        0     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     0       35     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     1       10     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     0       28     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     1        9     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     0      104     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     1       17     212
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                     0      296    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                     1       93    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                     0      245    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                     1      120    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                     0      270    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                     1      116    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                     0      276    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                     1      111    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     0       16     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     1        5     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     0      101     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     1       62     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     0       54     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     1       40     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     0       86     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     1       52     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                     0       15     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                     1        3     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                     0      286     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                     1       31     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                     0      252     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                     1       25     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                     0       81     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                     1        7     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     0      184     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     1       22     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     0      150     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     1       24     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     0      169     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     1       27     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     0      150     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     1       32     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     0      208    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     1       13    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     0       12    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     1        0    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     0     1912    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     1      144    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     0       91    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     1        3    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q4                     0      136     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q4                     1       11     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q1                     0      217     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q1                     1       40     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q2                     0       82     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q2                     1       11     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q3                     0       99     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q3                     1        5     601
0-6 months    ki1119695-PROBIT           BELARUS                        Q4                     0     2684   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Q4                     1       23   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Q1                     0       27   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Q1                     1        0   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Q2                     0      362   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Q2                     1        5   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Q3                     0    13098   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Q3                     1      111   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     0    10489   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     1     1206   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     0       76   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     1        8   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     0       85   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     1       13   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     0     1590   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     1      206   13673
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q4                     0        5    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q4                     1        1    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q1                     0      716    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q1                     1      110    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q2                     0      163    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q2                     1       21    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q3                     0        4    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q3                     1        0    1020
0-6 months    ki1135781-COHORTS          INDIA                          Q4                     0      367    1421
0-6 months    ki1135781-COHORTS          INDIA                          Q4                     1       34    1421
0-6 months    ki1135781-COHORTS          INDIA                          Q1                     0      229    1421
0-6 months    ki1135781-COHORTS          INDIA                          Q1                     1       24    1421
0-6 months    ki1135781-COHORTS          INDIA                          Q2                     0      180    1421
0-6 months    ki1135781-COHORTS          INDIA                          Q2                     1       25    1421
0-6 months    ki1135781-COHORTS          INDIA                          Q3                     0      509    1421
0-6 months    ki1135781-COHORTS          INDIA                          Q3                     1       53    1421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q4                     0      806    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q4                     1       28    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q1                     0      568    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q1                     1       56    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q2                     0      191    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q2                     1       13    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q3                     0     1141    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q3                     1       77    2880
0-6 months    ki1148112-LCNI-5           MALAWI                         Q4                     0       17     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q4                     1        5     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q1                     0       76     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q1                     1       48     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q2                     0       53     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q2                     1       34     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q3                     0       26     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q3                     1        8     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                     0     2282   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                     1      555   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                     0     8292   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                     1     4409   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                     0     3139   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                     1     1697   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                     0     4083   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                     1     1722   26179
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                     0       22    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                     1        8    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                     0     1519    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                     1      614    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                     0      191    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                     1       78    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                     0      347    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                     1      128    2907
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                     0       33     110
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                     1       10     110
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                     0       14     110
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                     1       12     110
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                     0        3     110
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                     1        1     110
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                     0       24     110
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                     1       13     110
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                     0       26     118
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                     1       12     118
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                     0       12     118
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                     1        6     118
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                     0       20     118
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                     1       16     118
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                     0       17     118
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                     1        9     118
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                     0       31      89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                     1        8      89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                     0       17      89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                     1        5      89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                     0       18      89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                     1        4      89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                     0        5      89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                     1        1      89
6-24 months   ki0047075b-MAL-ED          PERU                           Q4                     0       63     191
6-24 months   ki0047075b-MAL-ED          PERU                           Q4                     1       28     191
6-24 months   ki0047075b-MAL-ED          PERU                           Q1                     0       25     191
6-24 months   ki0047075b-MAL-ED          PERU                           Q1                     1       10     191
6-24 months   ki0047075b-MAL-ED          PERU                           Q2                     0       32     191
6-24 months   ki0047075b-MAL-ED          PERU                           Q2                     1       22     191
6-24 months   ki0047075b-MAL-ED          PERU                           Q3                     0        9     191
6-24 months   ki0047075b-MAL-ED          PERU                           Q3                     1        2     191
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     0       23      85
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     1       10      85
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     0       13      85
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     1        5      85
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     0       15      85
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     1        7      85
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     0       10      85
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     1        2      85
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     0        2     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     1        4     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     0       10     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     1       22     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     0        7     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     1       17     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     0       39     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     1       57     158
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q4                     0      209     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q4                     1       71     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q1                     0      106     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q1                     1       77     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q2                     0      149     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q2                     1       85     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q3                     0      192     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q3                     1       74     963
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     0        7     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     1        7     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     0       36     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     1       51     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     0       22     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     1       23     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     0       34     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     1       46     226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                     0       15     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                     1        1     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                     0      140     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                     1       65     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                     0      157     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                     1       46     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                     0       66     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                     1        7     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     0      155     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     1       19     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     0       99     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     1       37     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     0      114     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     1       41     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     0      135     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     1       20     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     0      151    1839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     1       19    1839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     0        9    1839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     1        0    1839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     0     1366    1839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     1      221    1839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     0       66    1839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     1        7    1839
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                     0       82     479
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                     1       45     479
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                     0      100     479
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                     1       99     479
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                     0       42     479
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                     1       33     479
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                     0       40     479
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                     1       38     479
6-24 months   ki1119695-PROBIT           BELARUS                        Q4                     0     2523   15752
6-24 months   ki1119695-PROBIT           BELARUS                        Q4                     1       81   15752
6-24 months   ki1119695-PROBIT           BELARUS                        Q1                     0       21   15752
6-24 months   ki1119695-PROBIT           BELARUS                        Q1                     1        1   15752
6-24 months   ki1119695-PROBIT           BELARUS                        Q2                     0      335   15752
6-24 months   ki1119695-PROBIT           BELARUS                        Q2                     1       18   15752
6-24 months   ki1119695-PROBIT           BELARUS                        Q3                     0    12274   15752
6-24 months   ki1119695-PROBIT           BELARUS                        Q3                     1      499   15752
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     0     6792    9066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     1      977    9066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     0       41    9066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     1       14    9066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     0       53    9066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     1       12    9066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     0      962    9066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     1      215    9066
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q4                     0        1     588
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q4                     1        4     588
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q1                     0      209     588
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q1                     1      265     588
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q2                     0       44     588
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q2                     1       64     588
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q3                     0        0     588
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q3                     1        1     588
6-24 months   ki1135781-COHORTS          INDIA                          Q4                     0      359    1161
6-24 months   ki1135781-COHORTS          INDIA                          Q1                     0      176    1161
6-24 months   ki1135781-COHORTS          INDIA                          Q2                     0      163    1161
6-24 months   ki1135781-COHORTS          INDIA                          Q3                     0      463    1161
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                     0      423    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                     1      224    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                     0      160    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                     1      260    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                     0       55    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                     1       87    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                     0      429    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                     1      459    2097
6-24 months   ki1148112-LCNI-5           MALAWI                         Q4                     0       34     577
6-24 months   ki1148112-LCNI-5           MALAWI                         Q4                     1       14     577
6-24 months   ki1148112-LCNI-5           MALAWI                         Q1                     0      181     577
6-24 months   ki1148112-LCNI-5           MALAWI                         Q1                     1       83     577
6-24 months   ki1148112-LCNI-5           MALAWI                         Q2                     0      121     577
6-24 months   ki1148112-LCNI-5           MALAWI                         Q2                     1       57     577
6-24 months   ki1148112-LCNI-5           MALAWI                         Q3                     0       63     577
6-24 months   ki1148112-LCNI-5           MALAWI                         Q3                     1       24     577
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                     0     1528   12802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                     1      197   12802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                     0     4345   12802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                     1     1297   12802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                     0     1877   12802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                     1      465   12802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                     0     2536   12802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                     1      557   12802
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                     0       22    2457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                     1        9    2457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                     0     1264    2457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                     1      537    2457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                     0      158    2457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                     1       60    2457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                     0      285    2457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                     1      122    2457
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                     0       37     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                     1       17     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                     0       13     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                     1       18     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                     0        4     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                     1        5     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                     0       27     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                     1       28     149
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                     0       23     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                     1       21     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                     0       15     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                     1       10     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                     0       20     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                     1       25     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                     0       19     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                     1       14     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                     0       33      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                     1        9      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                     0       16      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                     1        8      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                     0       15      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                     1       10      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                     0        5      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                     1        2      98
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                     0       71     250
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                     1       49     250
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                     0       27     250
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                     1       24     250
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                     0       32     250
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                     1       34     250
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                     0       10     250
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                     1        3     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     0       24     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     1       19     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     0       12     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     0       18     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     1       10     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     0       12     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     1        8     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     0        3     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     1        6     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     0       12     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     1       33     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     0       10     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     1       27     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     0       36     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     1       85     212
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q4                     0      187    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q4                     1      202    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q1                     0      120    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q1                     1      246    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q2                     0      139    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q2                     1      247    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q3                     0      175    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q3                     1      214    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     1       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     0       40     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     1      125     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     0       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     1       70     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     0       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     1      104     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                     0       15     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                     1        3     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                     0      175     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                     1      142     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                     0      178     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                     1       99     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                     0       69     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                     1       19     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     0      149     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     1       57     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     0       94     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     1       80     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     0      105     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     1       91     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     0      116     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     1       66     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     0      174    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     1       47    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     0       11    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     1        1    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     0     1582    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     1      474    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     0       77    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     1       17    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                     0       80     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                     1       67     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                     0       92     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                     1      165     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                     0       39     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                     1       54     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                     0       42     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                     1       62     601
0-24 months   ki1119695-PROBIT           BELARUS                        Q4                     0     2512   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Q4                     1      195   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Q1                     0       22   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Q1                     1        5   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Q2                     0      324   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Q2                     1       43   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Q3                     0    11841   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Q3                     1     1372   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     0     8433   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     1     3279   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     0       54   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     1       30   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     0       64   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     1       34   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     0     1177   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     1      622   13693
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q4                     0        2    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q4                     1        6    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q1                     0      282    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q1                     1      734    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q2                     0       61    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q2                     1      161    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q3                     0        1    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q3                     1        3    1250
0-24 months   ki1135781-COHORTS          INDIA                          Q4                     0      354    1447
0-24 months   ki1135781-COHORTS          INDIA                          Q4                     1       55    1447
0-24 months   ki1135781-COHORTS          INDIA                          Q1                     0      171    1447
0-24 months   ki1135781-COHORTS          INDIA                          Q1                     1       87    1447
0-24 months   ki1135781-COHORTS          INDIA                          Q2                     0      157    1447
0-24 months   ki1135781-COHORTS          INDIA                          Q2                     1       57    1447
0-24 months   ki1135781-COHORTS          INDIA                          Q3                     0      452    1447
0-24 months   ki1135781-COHORTS          INDIA                          Q3                     1      114    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                     0      492    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                     1      342    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                     0      184    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                     1      440    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                     0       64    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                     1      140    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                     0      486    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                     1      732    2880
0-24 months   ki1148112-LCNI-5           MALAWI                         Q4                     0       29     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Q4                     1       28     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Q1                     0      152     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Q1                     1      221     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Q2                     0      109     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Q2                     1      148     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Q3                     0       58     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Q3                     1       68     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                     0     2049   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                     1      803   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                     0     6638   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                     1     6086   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                     0     2577   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                     1     2267   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                     0     3393   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                     1     2428   26241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                     0       19    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                     1       15    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                     0     1052    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                     1     1202    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                     0      137    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                     1      144    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                     0      248    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                     1      261    3078


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         ever_stunted
## feducyrs   0
##       Q4 359
##       Q1 176
##       Q2 163
##       Q3 463
```




# Results Detail

## Results Plots
![](/tmp/4a6ab70b-bbeb-4b70-b17e-196bb0af89ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a6ab70b-bbeb-4b70-b17e-196bb0af89ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a6ab70b-bbeb-4b70-b17e-196bb0af89ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a6ab70b-bbeb-4b70-b17e-196bb0af89ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4772727   0.3291830   0.6253624
0-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.4000000   0.2073070   0.5926930
0-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.5555556   0.4098767   0.7012344
0-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4242424   0.2550425   0.5934424
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.4418605   0.2927490   0.5909719
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.3684211   0.1505295   0.5863126
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3571429   0.1788515   0.5354343
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.4000000   0.1843141   0.6156859
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.5192802   0.4310977   0.6074628
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.6721311   0.5982064   0.7460559
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.6398964   0.5700148   0.7097780
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.5501285   0.4931656   0.6070915
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.6190476   0.4110991   0.8269962
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.7575758   0.6921080   0.8230435
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.7446809   0.6564275   0.8329342
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.7536232   0.6816442   0.8256022
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.2766990   0.2155676   0.3378304
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.4597701   0.3856698   0.5338704
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.4642857   0.3944197   0.5341517
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.3626374   0.2927452   0.4325296
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.4557823   0.3752044   0.5363602
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.6420233   0.5833628   0.7006839
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.5806452   0.4802727   0.6810176
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.5961538   0.5017738   0.6905339
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                0.0720355   0.0565520   0.0875189
0-24 months   ki1119695-PROBIT           BELARUS        Q1                   NA                0.1851852   0.1081278   0.2622426
0-24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                0.1171662   0.0826666   0.1516659
0-24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                0.1038371   0.0872993   0.1203750
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.2799693   0.2718376   0.2881009
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.3571429   0.2546715   0.4596142
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.3469388   0.2526947   0.4411829
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.3457476   0.3237690   0.3677263
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.1344743   0.1013996   0.1675491
0-24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.3372093   0.2795026   0.3949160
0-24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.2663551   0.2071084   0.3256019
0-24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.2014134   0.1683616   0.2344652
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4100719   0.3766855   0.4434584
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7051282   0.6693448   0.7409116
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6862745   0.6225902   0.7499588
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6009852   0.5734793   0.6284911
0-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.4912281   0.3613664   0.6210898
0-24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                0.5924933   0.5425968   0.6423898
0-24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                0.5758755   0.5154167   0.6363343
0-24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                0.5396825   0.4526006   0.6267645
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2815568   0.2633580   0.2997556
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.4783087   0.4682811   0.4883363
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.4680017   0.4533896   0.4826137
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.4171105   0.4029757   0.4312452
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.4411765   0.2276428   0.6547102
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.5332742   0.5074252   0.5591231
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.5124555   0.4452675   0.5796436
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.5127701   0.4601293   0.5654110
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2390746   0.1769624   0.3011867
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.3287671   0.2812917   0.3762426
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.3005181   0.2582943   0.3427420
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.2868217   0.2282071   0.3454363
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.2380952   0.0557112   0.4204792
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.3803681   0.3057497   0.4549865
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.4255319   0.3254615   0.5256024
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.3768116   0.2958642   0.4577590
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1067961   0.0645921   0.1490002
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.1379310   0.0866612   0.1892009
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.1377551   0.0894741   0.1860361
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1758242   0.1204830   0.2311653
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.0748299   0.0322603   0.1173995
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.1556420   0.1112842   0.1999998
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.1182796   0.0525912   0.1839679
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.0480769   0.0069276   0.0892262
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1031210   0.0976091   0.1086329
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.0952381   0.0324616   0.1580146
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1326531   0.0654938   0.1998123
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1146993   0.0999614   0.1294373
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.0847880   0.0575135   0.1120625
0-6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.0948617   0.0587420   0.1309813
0-6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.1219512   0.0771411   0.1667614
0-6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.0943060   0.0701351   0.1184770
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0335731   0.0213461   0.0458002
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0897436   0.0673143   0.1121728
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0637255   0.0302007   0.0972503
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0632184   0.0495493   0.0768875
0-6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                0.2272727   0.0518288   0.4027167
0-6 months    ki1148112-LCNI-5           MALAWI         Q1                   NA                0.3870968   0.3012038   0.4729898
0-6 months    ki1148112-LCNI-5           MALAWI         Q2                   NA                0.3908046   0.2880831   0.4935261
0-6 months    ki1148112-LCNI-5           MALAWI         Q3                   NA                0.2352941   0.0924454   0.3781428
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1956292   0.1798437   0.2114147
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.3471380   0.3378207   0.3564553
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.3509098   0.3361253   0.3656944
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.2966408   0.2838740   0.3094076
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.2666667   0.1030355   0.4302978
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.2878575   0.2648421   0.3108729
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.2899628   0.2299769   0.3499487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.2694737   0.2237467   0.3152006
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.3157895   0.1673675   0.4642114
6-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3333333   0.1146309   0.5520358
6-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.4444444   0.2814333   0.6074556
6-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.3461538   0.1625077   0.5298000
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2535714   0.1883489   0.3187939
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.4207650   0.3298445   0.5116855
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.3632479   0.3055729   0.4209229
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.2781955   0.2331403   0.3232507
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.5000000   0.2375074   0.7624926
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.5862069   0.4824855   0.6899283
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.5111111   0.3647359   0.6574863
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.5750000   0.4664338   0.6835662
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1091954   0.0628168   0.1555740
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.2720588   0.1972059   0.3469117
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2645161   0.1950224   0.3340098
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1290323   0.0762141   0.1818504
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3543307   0.2710567   0.4376047
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4974874   0.4279466   0.5670283
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.4400000   0.3275417   0.5524583
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.4871795   0.3761389   0.5982201
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1257562   0.1183828   0.1331297
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2545455   0.1394167   0.3696742
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1846154   0.0902896   0.2789412
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1826678   0.1605921   0.2047435
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.3462133   0.3095451   0.3828815
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.6190476   0.5725935   0.6655018
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6126761   0.5325341   0.6928180
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.5168919   0.4840168   0.5497670
6-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.2916667   0.1629703   0.4203631
6-24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                0.3143939   0.2583412   0.3704467
6-24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                0.3202247   0.2516246   0.3888248
6-24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                0.2758621   0.1818634   0.3698608
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1142029   0.0990794   0.1293264
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.2298830   0.2176614   0.2421046
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.1985482   0.1814991   0.2155974
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.1800841   0.1658883   0.1942798
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.2903226   0.1285279   0.4521173
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.2981677   0.2721033   0.3242321
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.2752294   0.1989325   0.3515262
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.2997543   0.2387995   0.3607091


### Parameter: E(Y)


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4761905   0.3951786   0.5572024
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.4000000   0.3080312   0.4919688
0-24 months   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.5941176   0.5531511   0.6350842
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.5790349   0.5395303   0.6185396
0-24 months   ki1119695-PROBIT           BELARUS        NA                   NA                0.0989947   0.0831753   0.1148141
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.2895640   0.2819669   0.2971611
0-24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.2163096   0.1950882   0.2375310
0-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.5743056   0.5562443   0.5923668
0-24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                0.5719557   0.5379231   0.6059884
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4414466   0.4338889   0.4490043
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.5269656   0.5048164   0.5491148
0-6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.2881467   0.2614090   0.3148844
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.1114809   0.0862979   0.1366638
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1048051   0.0996708   0.1099394
0-6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.0957072   0.0804059   0.1110086
0-6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0604167   0.0517136   0.0691198
0-6 months    ki1148112-LCNI-5           MALAWI         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.3202185   0.3133886   0.3270484
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2848297   0.2655018   0.3041577
6-24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.3644068   0.2772025   0.4516111
6-24 months   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.3187954   0.2885259   0.3490649
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4488518   0.4042636   0.4934400
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1343481   0.1273279   0.1413683
6-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.4911779   0.4697758   0.5125799
6-24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                0.3084922   0.2707734   0.3462110
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1965318   0.1884248   0.2046388
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2962963   0.2730810   0.3195116


### Parameter: RR


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.8380952   0.4725391   1.486446
0-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.1640212   0.7754082   1.747396
0-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                0.8888889   0.5362823   1.473335
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                0.8337950   0.4220242   1.647332
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                0.8082707   0.4424472   1.476564
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                0.9052632   0.4791997   1.710146
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.2943516   1.0678545   1.568890
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.2322757   1.0591371   1.433717
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                1.0594059   0.8408537   1.334764
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.2237762   0.8650973   1.731167
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.2029460   0.8424543   1.717694
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.2173913   0.8585409   1.726233
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.6616253   1.2640571   2.184236
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.6779449   1.2843582   2.192145
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.3105842   0.9775454   1.757086
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.4086184   1.1544273   1.718779
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.2739528   0.9948794   1.631309
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.3079793   1.0316592   1.658309
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS        Q1                   Q4                2.5707502   1.6426942   4.023121
0-24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                1.6265074   1.1931637   2.217237
0-24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                1.4414724   1.2107301   1.716190
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.2756502   0.9560643   1.702065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.2392031   0.9429664   1.628504
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.2349486   1.1515856   1.324346
0-24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                2.5076110   1.8583664   3.383678
0-24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                1.9807137   1.4216774   2.759576
0-24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.4977835   1.1143964   2.013068
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7195232   1.5622236   1.892661
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.6735466   1.4791908   1.893439
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4655605   1.3348771   1.609038
0-24 months   ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.2061471   0.9139131   1.591826
0-24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.1723180   0.8820892   1.558039
0-24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q4                1.0986395   0.8060237   1.497485
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.6988000   1.5857007   1.819966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.6621927   1.5480145   1.784792
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.4814434   1.3796050   1.590799
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                1.2087548   0.7428947   1.966750
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.1615658   0.7029620   1.919357
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                1.1622790   0.7059427   1.913601
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.3751657   1.0359530   1.825450
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.2570060   0.9135606   1.729567
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                1.1997166   0.8882952   1.620317
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.5975460   0.7245061   3.522611
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.7872340   0.8020143   3.982729
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.5826087   0.7142725   3.506575
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.2915360   0.7507408   2.221893
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.2898887   0.7605929   2.187521
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.6463536   0.9933728   2.728563
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                2.0799434   1.1008244   3.929932
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.5806452   0.7137738   3.500323
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                0.6424825   0.2298949   1.795533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                0.9235568   0.4767136   1.789245
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.2863827   0.7731693   2.140256
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1122792   0.9677758   1.278359
0-6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                1.1188096   0.6796422   1.841756
0-6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                1.4383070   0.8825945   2.343916
0-6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.1122566   0.7371897   1.678150
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                2.6730769   1.7186366   4.157563
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.8981092   1.0010172   3.599158
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.8830049   1.2328501   2.876025
0-6 months    ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.7032258   0.7628556   3.802788
0-6 months    ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.7195402   0.7607744   3.886590
0-6 months    ki1148112-LCNI-5           MALAWI         Q3                   Q4                1.0352941   0.3877481   2.764253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.7744695   1.6280594   1.934046
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.7937500   1.6375707   1.964824
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.5163424   1.3869750   1.657776
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                1.0794655   0.5806510   2.006792
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.0873606   0.5754744   2.054571
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                1.0105263   0.5308446   1.923658
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                1.0555556   0.4709452   2.365875
6-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.4074074   0.7753604   2.554677
6-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.0961538   0.5395759   2.226848
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.6593550   1.1410340   2.413126
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.4325268   1.1112899   1.846623
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                1.0971090   0.7754325   1.552228
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.1724138   0.6737236   2.040234
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.0222222   0.5621200   1.858924
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.1500000   0.6582675   2.009062
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                2.4914861   1.5020354   4.132727
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                2.4224109   1.4701231   3.991553
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.1816638   0.6551089   2.131446
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.4040201   1.0681126   1.845566
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.2417778   0.8775066   1.757265
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.3749288   0.9910535   1.907495
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                2.0241184   1.2828163   3.193797
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.4680419   0.8777835   2.455215
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.4525549   1.2699787   1.661379
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7880527   1.5703917   2.035882
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.7696491   1.4955184   2.094028
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4929868   1.3194792   1.689310
6-24 months   ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.0779221   0.6697386   1.734880
6-24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.0979133   0.6722751   1.793036
6-24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q4                0.9458128   0.5416101   1.651671
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                2.0129351   1.7509526   2.314116
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.7385570   1.4962656   2.020083
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.5768782   1.3525641   1.838393
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                1.0270220   0.5834605   1.807790
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                0.9480122   0.5082888   1.768143
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                1.0324870   0.5698785   1.870626


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                -0.0010823   -0.1250378   0.1228733
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0418605   -0.1572267   0.0735057
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0748374    0.0027696   0.1469053
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1273639   -0.0742331   0.3289608
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1111638    0.0572132   0.1651143
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1232526    0.0534154   0.1930899
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0269593    0.0149083   0.0390103
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0095947    0.0063198   0.0128697
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.0818353    0.0514071   0.1122635
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1642336    0.1360327   0.1924345
0-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.0807276   -0.0444026   0.2058579
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1598898    0.1422526   0.1775270
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0857891   -0.1268470   0.2984252
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0490721   -0.0012881   0.0994324
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1441163   -0.0350240   0.3232566
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0317263   -0.0059382   0.0693908
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0366509   -0.0028442   0.0761460
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0016841   -0.0004999   0.0038681
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0109192   -0.0127066   0.0345451
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0268435    0.0150682   0.0386189
0-6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.1285325   -0.0418149   0.2988799
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1245893    0.1090628   0.1401158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0181631   -0.1451484   0.1814745
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0486173   -0.0756624   0.1728970
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0652240    0.0052897   0.1251583
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.0619469   -0.1921565   0.3160503
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0795143    0.0359968   0.1230317
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0945211    0.0220955   0.1669467
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0085919    0.0053559   0.0118279
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1449646    0.1137730   0.1761562
6-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.0168255   -0.1065835   0.1402346
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0823289    0.0678906   0.0967672
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0059737   -0.1558119   0.1677594


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                -0.0022727   -0.2995095   0.2269771
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.1046512   -0.4348364   0.1495517
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.1259640   -0.0060334   0.2406426
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1706349   -0.1495270   0.4016265
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2866059    0.1332982   0.4127955
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2128587    0.0813348   0.3255525
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.2723303    0.1520812   0.3755261
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0331352    0.0217661   0.0443721
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.3783248    0.2245380   0.5016131
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2859690    0.2343252   0.3341296
0-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.1411432   -0.1082912   0.3344393
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.3621951    0.3213696   0.4005646
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.1627983   -0.3556221   0.4829631
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.1703026   -0.0294698   0.3313085
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.3770590   -0.3208170   0.7062004
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2290337   -0.0937192   0.4565434
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.3287643   -0.1268546   0.6001637
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0160689   -0.0049805   0.0366774
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.1140898   -0.1698643   0.3291214
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.4443066    0.2249476   0.6015816
0-6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.3612440   -0.3493887   0.6976340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.3890759    0.3394829   0.4349454
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0637681   -0.7269316   0.4924349
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1334149   -0.2844705   0.4153469
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.2045952   -0.0070302   0.3717479
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1102362   -0.4794425   0.4648798
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.4213577    0.1493311   0.6063957
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2105841    0.0310774   0.3568347
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0639525    0.0397224   0.0875713
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2951366    0.2281720   0.3562913
6-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.0545412   -0.4434305   0.3807167
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.4189088    0.3421117   0.4867411
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0201613   -0.7104931   0.4387093
