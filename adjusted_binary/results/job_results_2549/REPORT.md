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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

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
![](/tmp/32b2a69a-f36e-4e15-8e9f-430ab37d25c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/32b2a69a-f36e-4e15-8e9f-430ab37d25c4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/32b2a69a-f36e-4e15-8e9f-430ab37d25c4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/32b2a69a-f36e-4e15-8e9f-430ab37d25c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4659572    0.3347478   0.5971665
0-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.4359471    0.2797403   0.5921539
0-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.5557594    0.4252615   0.6862574
0-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4116437    0.2575827   0.5657046
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.3450016    0.2171198   0.4728834
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.1416725   -0.0016322   0.2849772
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2010129    0.0655246   0.3365012
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.1699062    0.0262486   0.3135637
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.5692048    0.5074922   0.6309173
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.6258419    0.5675230   0.6841608
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.6218956    0.5603704   0.6834208
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.5411669    0.4953720   0.5869617
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.6116890    0.4545915   0.7687864
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.7418493    0.6813997   0.8022989
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.7629439    0.6869635   0.8389243
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.7379689    0.6737984   0.8021394
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.3518756    0.3077211   0.3960300
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.4570380    0.4020841   0.5119919
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.4472903    0.3932993   0.5012813
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.3659419    0.3157890   0.4160948
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.4611250    0.3839509   0.5382992
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.6495679    0.5929053   0.7062305
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.5847668    0.4889082   0.6806254
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.5929277    0.5017017   0.6841537
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                0.0751428    0.0609448   0.0893407
0-24 months   ki1119695-PROBIT           BELARUS        Q1                   NA                0.1071903    0.0890631   0.1253175
0-24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                0.1053108    0.0865570   0.1240646
0-24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                0.1025614    0.0865234   0.1185994
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.2830937    0.2751942   0.2909932
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2917206    0.2641156   0.3193256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.3093778    0.2759947   0.3427609
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.3403812    0.3217820   0.3589804
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.1428622    0.1198010   0.1659234
0-24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.2689495    0.2342737   0.3036253
0-24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.2031065    0.1668769   0.2393361
0-24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.1934209    0.1678994   0.2189424
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4684996    0.4405955   0.4964036
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.6772317    0.6472099   0.7072535
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.7248740    0.6867373   0.7630106
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6014720    0.5769692   0.6259748
0-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.4528977    0.3418361   0.5639593
0-24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                0.5756562    0.5281107   0.6232016
0-24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                0.5888818    0.5329593   0.6448043
0-24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                0.5229604    0.4425477   0.6033730
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.4116697    0.3987428   0.4245966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.4477592    0.4389149   0.4566035
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.4415677    0.4307792   0.4523563
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.4452523    0.4345906   0.4559139
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.4032499    0.2594510   0.5470488
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.5350818    0.5104829   0.5596808
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.5118406    0.4640283   0.5596530
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.5131023    0.4715155   0.5546890
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2791462    0.2412000   0.3170923
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.2772857    0.2495090   0.3050624
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.2729335    0.2432940   0.3025731
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.2769845    0.2489267   0.3050424
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.2345866    0.0610568   0.4081164
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.3771439    0.3037978   0.4504901
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.4314903    0.3342216   0.5287590
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.3777924    0.2995089   0.4560759
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1326284    0.1058390   0.1594177
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.1286355    0.0996819   0.1575892
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.1474228    0.1187755   0.1760701
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1355134    0.1083079   0.1627189
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.0833398    0.0403457   0.1263339
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.1566433    0.1148898   0.1983967
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.1041245    0.0474608   0.1607882
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.0447965    0.0066334   0.0829595
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1048574    0.0997175   0.1099973
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.0872840    0.0828563   0.0917116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1050476    0.0999530   0.1101421
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1052387    0.0999801   0.1104973
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.0980139    0.0823936   0.1136341
0-6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.0992868    0.0832272   0.1153463
0-6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.0921530    0.0772281   0.1070779
0-6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.0964201    0.0808293   0.1120110
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0590863    0.0505394   0.0676333
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0599808    0.0513170   0.0686447
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0596760    0.0510579   0.0682942
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0610114    0.0522502   0.0697727
0-6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                0.2196871    0.0566333   0.3827409
0-6 months    ki1148112-LCNI-5           MALAWI         Q1                   NA                0.3801182    0.2971778   0.4630586
0-6 months    ki1148112-LCNI-5           MALAWI         Q2                   NA                0.4049581    0.3040249   0.5058913
0-6 months    ki1148112-LCNI-5           MALAWI         Q3                   NA                0.2288274    0.0880106   0.3696443
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.3141191    0.3058429   0.3223952
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.3196811    0.3123756   0.3269866
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.3241100    0.3162213   0.3319988
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.3228635    0.3152252   0.3305018
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.1905620    0.1649084   0.2162156
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.2919835    0.2705706   0.3133964
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.2612055    0.2305514   0.2918596
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.2697364    0.2417470   0.2977257
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.3125269    0.1706160   0.4544377
6-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3401287    0.1459189   0.5343385
6-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.4530111    0.2930999   0.6129223
6-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.3346805    0.1578901   0.5114709
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2858555    0.2299020   0.3418091
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.4513759    0.3893787   0.5133730
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.3826966    0.3253403   0.4400528
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.2836991    0.2461617   0.3212365
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.5349774    0.2993568   0.7705981
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.5762431    0.4800303   0.6724559
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.5308356    0.4010918   0.6605794
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.5649914    0.4665839   0.6633989
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1693498    0.1310130   0.2076865
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.3409755    0.2831293   0.3988216
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.3086132    0.2526964   0.3645300
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1712344    0.1270953   0.2153736
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3678148    0.2875237   0.4481059
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.5105773    0.4429870   0.5781675
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.4442051    0.3383278   0.5500824
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.4871258    0.3818411   0.5924106
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1262913    0.1189967   0.1335858
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1973156    0.1698416   0.2247895
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1272064    0.1026968   0.1517160
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1875932    0.1675475   0.2076389
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.3774115    0.3447238   0.4100992
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.6055079    0.5657737   0.6452421
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6527306    0.5999782   0.7054831
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.5177845    0.4873738   0.5481951
6-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.3030001    0.2222115   0.3837887
6-24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                0.3065608    0.2559991   0.3571226
6-24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                0.3215771    0.2625376   0.3806167
6-24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                0.2706270    0.1965610   0.3446930
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1397168    0.1267540   0.1526796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.2145286    0.2034400   0.2256172
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.1974872    0.1828399   0.2121345
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.1918571    0.1791872   0.2045269
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.2087708    0.1078913   0.3096504
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.2975027    0.2718145   0.3231908
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.2768045    0.2117381   0.3418709
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.2980849    0.2418454   0.3543244


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


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.9355948   0.6081857   1.4392605
0-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.1927264   0.8420698   1.6894042
0-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                0.8834367   0.5633645   1.3853562
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                0.4106431   0.1394650   1.2091046
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                0.5826435   0.2699248   1.2576591
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                0.4924794   0.1955188   1.2404738
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.0995022   0.9613451   1.2575142
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.0925692   0.9753051   1.2239322
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                0.9507419   0.8285680   1.0909307
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.2127884   0.9290722   1.5831447
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.2472742   0.9492485   1.6388679
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.2064447   0.9235530   1.5759883
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.2988625   1.1159890   1.5117030
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.2711605   1.0934447   1.4777602
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.0399752   0.8882046   1.2176794
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.4086589   1.1663368   1.7013267
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.2681306   1.0036687   1.6022769
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.2858284   1.0251443   1.6128019
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS        Q1                   Q4                1.4264886   1.1311492   1.7989402
0-24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                1.4014763   1.1111868   1.7676017
0-24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                1.3648879   1.1790942   1.5799578
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.0304739   0.9361061   1.1343549
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.0928461   0.9796762   1.2190891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.2023624   1.1348574   1.2738827
0-24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                1.8825801   1.5674728   2.2610330
0-24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                1.4216954   1.1512126   1.7557293
0-24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.3538988   1.1407023   1.6069415
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.4455332   1.3453365   1.5531924
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.5472244   1.4317644   1.6719953
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.2838261   1.1986350   1.3750720
0-24 months   ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.2710513   0.9840105   1.6418233
0-24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.3002536   1.0020648   1.6871758
0-24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q4                1.1546987   0.8666885   1.5384179
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.0876662   1.0533501   1.1231002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.0726263   1.0354040   1.1111868
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.0815766   1.0446259   1.1198343
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                1.3269237   0.9264068   1.9005976
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.2692890   0.8783463   1.8342363
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                1.2724177   0.8830571   1.8334564
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                0.9933352   0.9019566   1.0939715
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                0.9777441   0.8702185   1.0985557
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                0.9922563   0.8992064   1.0949350
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.6076959   0.7499601   3.4464317
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.8393647   0.8505676   3.9776525
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.6104603   0.7491990   3.4618072
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                0.9698948   0.8074654   1.1649983
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.1115482   0.9497661   1.3008881
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.0217529   0.8727512   1.1961931
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.8795743   1.0532509   3.3541859
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.2493974   0.5929883   2.6324196
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                0.5375160   0.1990891   1.4512271
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                0.8324063   0.8211133   0.8438545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.0018137   0.9952372   1.0084337
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.0036366   0.9902753   1.0171782
0-6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                1.0129873   0.9510547   1.0789531
0-6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                0.9402037   0.8988398   0.9834712
0-6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                0.9837400   0.9247562   1.0464860
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.0151389   1.0092276   1.0210849
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.0099803   1.0033098   1.0166951
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.0325812   1.0102564   1.0553994
0-6 months    ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.7302708   0.8020074   3.7329294
0-6 months    ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.8433402   0.8451677   4.0203890
0-6 months    ki1148112-LCNI-5           MALAWI         Q3                   Q4                1.0416060   0.3986202   2.7217466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.0177067   0.9976571   1.0381593
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.0318063   1.0088659   1.0552682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.0278379   1.0056282   1.0505381
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                1.5322230   1.3493361   1.7398980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.3707115   1.1878589   1.5817114
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                1.4154783   1.2248213   1.6358132
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                1.0883183   0.5335973   2.2197199
6-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.4495108   0.8221885   2.5554742
6-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.0708855   0.5395650   2.1254077
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.5790351   1.2143801   2.0531890
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.3387762   1.0785448   1.6617963
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                0.9924562   0.7565869   1.3018589
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.0771353   0.6765586   1.7148852
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                0.9922579   0.6032203   1.6321993
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.0561032   0.6622846   1.6841008
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                2.0134394   1.5310936   2.6477401
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.8223421   1.3778880   2.4101603
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.0111289   0.7249377   1.4103026
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.3881368   1.0751501   1.7922369
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.2076869   0.8747494   1.6673435
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.3243780   0.9750767   1.7988093
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.5623851   1.3448957   1.8150458
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.0072465   0.8242331   1.2308963
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.4854014   1.3167304   1.6756789
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.6043706   1.4415215   1.7856167
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.7294933   1.5382902   1.9444621
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.3719361   1.2381994   1.5201176
6-24 months   ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.0117515   0.7429461   1.3778132
6-24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.0613103   0.7712191   1.4605183
6-24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q4                0.8931580   0.6114922   1.3045649
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.5354533   1.3869440   1.6998644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.4134822   1.2635200   1.5812428
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.3731853   1.2264121   1.5375238
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                1.4250203   0.8714347   2.3302755
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.3258773   0.7738828   2.2715979
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                1.4278094   0.8498083   2.3989404


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0102333   -0.0939241   0.1143907
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0549984   -0.0438363   0.1538331
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0249129   -0.0276927   0.0775185
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1347225   -0.0161049   0.2855499
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0359872    0.0020454   0.0699290
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1179099    0.0510128   0.1848069
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0238520    0.0129250   0.0347790
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0064703    0.0037261   0.0092145
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.0734474    0.0540001   0.0928948
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1058060    0.0832604   0.1283515
0-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.1190581    0.0126102   0.2255059
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0297769    0.0181827   0.0413712
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.1237157   -0.0190530   0.2664844
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0090005   -0.0118029   0.0298040
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1476249   -0.0225487   0.3177986
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0058941   -0.0073601   0.0191482
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0281411   -0.0114470   0.0677291
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                -0.0000523   -0.0002686   0.0001640
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                -0.0023066   -0.0058820   0.0012688
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0013303    0.0005556   0.0021051
0-6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.1361181   -0.0221568   0.2943930
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0060994    0.0007921   0.0114068
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0942677    0.0701145   0.1184209
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0518799   -0.0650419   0.1688017
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0329399   -0.0208596   0.0867394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.0269695   -0.1989279   0.2528669
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0193599   -0.0167010   0.0554208
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0810370    0.0110876   0.1509864
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0080569    0.0048086   0.0113051
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1137664    0.0863835   0.1411492
6-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.0054921   -0.0724773   0.0834615
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0568150    0.0439934   0.0696365
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0875255   -0.0144017   0.1894527


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0214899   -0.2236008   0.2174883
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1374961   -0.1469724   0.3514116
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0419326   -0.0504143   0.1261608
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1804936   -0.0491838   0.3598922
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0927834    0.0020668   0.1752534
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2036317    0.0785781   0.3117134
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.2409419    0.1367420   0.3325643
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0223451    0.0128442   0.0317546
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.3395477    0.2500851   0.4183377
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1842329    0.1439844   0.2225890
0-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.2081596   -0.0018300   0.3741341
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0674531    0.0409553   0.0932187
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.2347700   -0.0901365   0.4628407
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0312359   -0.0445982   0.1015647
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.3862388   -0.2666302   0.7025945
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0425496   -0.0575920   0.1332090
0-6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2524298   -0.1932235   0.5316375
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                -0.0004990   -0.0025654   0.0015631
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                -0.0241006   -0.0624596   0.0128734
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0220192    0.0095042   0.0343760
0-6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.3825636   -0.2655107   0.6987558
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0190477    0.0023637   0.0354527
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.3309616    0.2454477   0.4067843
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1423681   -0.2466154   0.4099764
6-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.1033262   -0.0802213   0.2556859
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.0479929   -0.4523308   0.3759566
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1025910   -0.1039278   0.2704750
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1805428    0.0091602   0.3222819
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0599700    0.0357387   0.0835924
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2316195    0.1741068   0.2851272
6-24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                 0.0178030   -0.2699826   0.2403746
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.2890880    0.2235191   0.3491201
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.2953985   -0.1433636   0.5657870
