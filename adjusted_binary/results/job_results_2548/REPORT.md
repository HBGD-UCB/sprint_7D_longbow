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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
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

agecat        studyid                    country                        meducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                     0       57     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                     1        4     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                     0       29     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                     1       13     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                     0       23     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                     1        5     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                     0       68     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                     1       15     214
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q4                     0       71     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q4                     1        8     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q1                     0       44     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q1                     1        3     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q2                     0       36     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q2                     1        8     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q3                     0       56     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Q3                     1        6     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                     0       53     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Q4                     1       10     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                     0       31     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Q1                     1        4     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                     0       44     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Q2                     1        8     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                     0       57     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Q3                     1       13     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q4                     0       16     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q4                     1        4     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q1                     0       28     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q1                     1        2     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q2                     0       55     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q2                     1       11     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q3                     0      100     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Q3                     1        9     225
0-6 months    ki0047075b-MAL-ED          PERU                           Q4                     0       80     302
0-6 months    ki0047075b-MAL-ED          PERU                           Q4                     1       11     302
0-6 months    ki0047075b-MAL-ED          PERU                           Q1                     0       54     302
0-6 months    ki0047075b-MAL-ED          PERU                           Q1                     1       10     302
0-6 months    ki0047075b-MAL-ED          PERU                           Q2                     0       62     302
0-6 months    ki0047075b-MAL-ED          PERU                           Q2                     1        7     302
0-6 months    ki0047075b-MAL-ED          PERU                           Q3                     0       69     302
0-6 months    ki0047075b-MAL-ED          PERU                           Q3                     1        9     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     0       84     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     1       11     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     0       55     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     1        3     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     0       85     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     1        7     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     0       56     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     1       13     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     0        4     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     1        0     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     0       27     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     1        3     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     0       28     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     1        6     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     0      123     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     1       26     217
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4                     0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4                     1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1                     0       83     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1                     1       21     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2                     0       81     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2                     1       26     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3                     0      109     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3                     1       26     368
0-6 months    ki1000108-IRC              INDIA                          Q4                     0       10     410
0-6 months    ki1000108-IRC              INDIA                          Q4                     1        1     410
0-6 months    ki1000108-IRC              INDIA                          Q1                     0      161     410
0-6 months    ki1000108-IRC              INDIA                          Q1                     1       21     410
0-6 months    ki1000108-IRC              INDIA                          Q2                     0       90     410
0-6 months    ki1000108-IRC              INDIA                          Q2                     1       14     410
0-6 months    ki1000108-IRC              INDIA                          Q3                     0       99     410
0-6 months    ki1000108-IRC              INDIA                          Q3                     1       14     410
0-6 months    ki1000109-EE               PAKISTAN                       Q4                     0        3     376
0-6 months    ki1000109-EE               PAKISTAN                       Q4                     1        1     376
0-6 months    ki1000109-EE               PAKISTAN                       Q1                     0      211     376
0-6 months    ki1000109-EE               PAKISTAN                       Q1                     1      117     376
0-6 months    ki1000109-EE               PAKISTAN                       Q2                     0       25     376
0-6 months    ki1000109-EE               PAKISTAN                       Q2                     1        8     376
0-6 months    ki1000109-EE               PAKISTAN                       Q3                     0        9     376
0-6 months    ki1000109-EE               PAKISTAN                       Q3                     1        2     376
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                     0       30    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                     1        8    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                     0      489    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                     1      246    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                     0      347    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                     1      125    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                     0      223    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                     1       62    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     0       11     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     1        5     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     0      208     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     1      128     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     0       23     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     1       17     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     0       15     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     1        9     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                     0       66     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                     1       11     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                     0      216     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                     1       41     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                     0      162     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                     1       31     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                     0       86     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                     1       16     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                     0       11     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                     1        1     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                     0      252     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                     1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                     0      241     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                     1       28     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                     0      130     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                     1       13     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     0      229     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     1       25     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     0      159     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     1       27     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     0       48     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     1        8     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     0      217     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     1       45     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     0        5    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     1        0    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     0       65    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     1        6    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     0     2059    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     1      152    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     0       97    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     1        2    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                     0       83     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                     1       29     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                     0       38     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                     1        9     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                     0       57     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                     1       19     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                     0       24     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                     1        6     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q4                     0       70     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q4                     1        5     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q1                     0      364     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q1                     1       57     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q2                     0       46     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q2                     1        0     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q3                     0       52     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Q3                     1        5     599
0-6 months    ki1119695-PROBIT           BELARUS                        Q4                     0     2821   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Q4                     1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Q1                     0       33   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Q1                     1        0   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Q2                     0      607   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Q2                     1       14   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Q3                     0    13279   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Q3                     1      120   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     0     7961   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     1      886   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     0      187   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     1       22   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     0      370   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     1       57   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     0     4034   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     1      514   14031
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q4                     0        0    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q4                     1        1    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q1                     0      735    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q1                     1      119    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q2                     0      175    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q2                     1       21    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q3                     0       24    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Q3                     1        3    1078
0-6 months    ki1135781-COHORTS          INDIA                          Q4                     0     1761    5662
0-6 months    ki1135781-COHORTS          INDIA                          Q4                     1      167    5662
0-6 months    ki1135781-COHORTS          INDIA                          Q1                     0     1628    5662
0-6 months    ki1135781-COHORTS          INDIA                          Q1                     1      281    5662
0-6 months    ki1135781-COHORTS          INDIA                          Q2                     0      818    5662
0-6 months    ki1135781-COHORTS          INDIA                          Q2                     1      124    5662
0-6 months    ki1135781-COHORTS          INDIA                          Q3                     0      770    5662
0-6 months    ki1135781-COHORTS          INDIA                          Q3                     1      113    5662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q4                     0      896    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q4                     1       41    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q1                     0      586    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q1                     1       52    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q2                     0      246    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q2                     1       19    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q3                     0     1142    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Q3                     1       76    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         Q1                     0      119     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q1                     1       75     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q2                     0       48     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q2                     1       18     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q3                     0        5     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Q3                     1        2     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                     0     1301   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                     1      272   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                     0     6372   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                     1     3481   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                     0     3973   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                     1     2233   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                     0     6753   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                     1     2751   27136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                     0       10    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                     1        6    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                     0     1456    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                     1      582    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                     0       32    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                     1       20    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                     0       43    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                     1       24    2173
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                     0       32     164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                     1       21     164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                     0       14     164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                     1       14     164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                     0       17     164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                     1        6     164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                     0       38     164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                     1       22     164
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                     0       68     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                     1        2     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                     0       39     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                     1        4     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                     0       35     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                     1        1     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                     0       52     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                     1        1     202
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                     0       35     176
6-24 months   ki0047075b-MAL-ED          INDIA                          Q4                     1       15     176
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                     0       20     176
6-24 months   ki0047075b-MAL-ED          INDIA                          Q1                     1       10     176
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                     0       27     176
6-24 months   ki0047075b-MAL-ED          INDIA                          Q2                     1       15     176
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                     0       32     176
6-24 months   ki0047075b-MAL-ED          INDIA                          Q3                     1       22     176
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                     0       17     211
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                     1        3     211
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                     0       24     211
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                     1        5     211
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                     0       47     211
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                     1       12     211
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                     0       91     211
6-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                     1       12     211
6-24 months   ki0047075b-MAL-ED          PERU                           Q4                     0       49     228
6-24 months   ki0047075b-MAL-ED          PERU                           Q4                     1       18     228
6-24 months   ki0047075b-MAL-ED          PERU                           Q1                     0       31     228
6-24 months   ki0047075b-MAL-ED          PERU                           Q1                     1       21     228
6-24 months   ki0047075b-MAL-ED          PERU                           Q2                     0       34     228
6-24 months   ki0047075b-MAL-ED          PERU                           Q2                     1       17     228
6-24 months   ki0047075b-MAL-ED          PERU                           Q3                     0       39     228
6-24 months   ki0047075b-MAL-ED          PERU                           Q3                     1       19     228
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     0       51     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     1       15     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     0       34     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     1       16     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     0       46     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     1       16     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     0       34     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     1       12     224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     0        1     163
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     1        1     163
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     0        7     163
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     1       15     163
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     0       12     163
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     1       15     163
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     0       43     163
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     1       69     163
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4                     0       11     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4                     1        7     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1                     0       24     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1                     1       52     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2                     0       25     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2                     1       60     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3                     0       37     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3                     1       72     288
6-24 months   ki1000108-IRC              INDIA                          Q4                     0        9     339
6-24 months   ki1000108-IRC              INDIA                          Q4                     1        0     339
6-24 months   ki1000108-IRC              INDIA                          Q1                     0      112     339
6-24 months   ki1000108-IRC              INDIA                          Q1                     1       36     339
6-24 months   ki1000108-IRC              INDIA                          Q2                     0       63     339
6-24 months   ki1000108-IRC              INDIA                          Q2                     1       23     339
6-24 months   ki1000108-IRC              INDIA                          Q3                     0       72     339
6-24 months   ki1000108-IRC              INDIA                          Q3                     1       24     339
6-24 months   ki1000109-EE               PAKISTAN                       Q4                     0        1     187
6-24 months   ki1000109-EE               PAKISTAN                       Q4                     1        3     187
6-24 months   ki1000109-EE               PAKISTAN                       Q1                     0       35     187
6-24 months   ki1000109-EE               PAKISTAN                       Q1                     1      120     187
6-24 months   ki1000109-EE               PAKISTAN                       Q2                     0        8     187
6-24 months   ki1000109-EE               PAKISTAN                       Q2                     1       14     187
6-24 months   ki1000109-EE               PAKISTAN                       Q3                     0        3     187
6-24 months   ki1000109-EE               PAKISTAN                       Q3                     1        3     187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q4                     0       24     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q4                     1        4     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q1                     0      238     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q1                     1      159     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q2                     0      227     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q2                     1       93     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q3                     0      168     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q3                     1       51     964
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     0        5     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     1        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     0       77     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     1      102     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     0       10     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     1       11     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     0        7     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     1        8     226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                     0       40     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                     1       19     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                     0       79     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                     1       81     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                     0       67     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                     1       56     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                     0       45     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                     1       33     420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                     0       11     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                     1        0     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                     0      122     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                     1       62     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                     0      146     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                     1       47     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                     0       99     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                     1       10     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     0      193     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     1       28     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     0      114     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     1       36     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     0       41     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     1        3     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     0      155     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     1       50     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     0        4    1841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     1        0    1841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     0       47    1841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     1       10    1841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     0     1475    1841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     1      230    1841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     0       68    1841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     1        7    1841
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                     0       69     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                     1       10     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                     0       15     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                     1        6     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                     0       40     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                     1       18     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                     0       21     183
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                     1        4     183
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                     0       44     477
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                     1       19     477
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                     0      170     477
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                     1      158     477
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                     0       24     477
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                     1       16     477
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                     0       24     477
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                     1       22     477
6-24 months   ki1119695-PROBIT           BELARUS                        Q4                     0     2665   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Q4                     1       77   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Q1                     0       28   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Q1                     1        1   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Q2                     0      563   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Q2                     1       28   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Q3                     0    12427   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Q3                     1      514   16303
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     0     5259    9302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     1      682    9302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     0      106    9302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     1       31    9302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     0      222    9302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     1       55    9302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     0     2451    9302
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     1      496    9302
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q4                     0        1     620
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q4                     1        1     620
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q1                     0      222     620
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q1                     1      271     620
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q2                     0       41     620
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q2                     1       68     620
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q3                     0        5     620
6-24 months   ki1135781-COHORTS          GUATEMALA                      Q3                     1       11     620
6-24 months   ki1135781-COHORTS          INDIA                          Q4                     0     1720    4423
6-24 months   ki1135781-COHORTS          INDIA                          Q1                     0     1274    4423
6-24 months   ki1135781-COHORTS          INDIA                          Q2                     0      711    4423
6-24 months   ki1135781-COHORTS          INDIA                          Q3                     0      718    4423
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                     0      469    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                     1      260    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                     0      158    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                     1      280    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                     0       87    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                     1       98    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                     0      420    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                     1      452    2224
6-24 months   ki1148112-LCNI-5           MALAWI                         Q4                     0        1     578
6-24 months   ki1148112-LCNI-5           MALAWI                         Q4                     1        0     578
6-24 months   ki1148112-LCNI-5           MALAWI                         Q1                     0      268     578
6-24 months   ki1148112-LCNI-5           MALAWI                         Q1                     1      127     578
6-24 months   ki1148112-LCNI-5           MALAWI                         Q2                     0      118     578
6-24 months   ki1148112-LCNI-5           MALAWI                         Q2                     1       46     578
6-24 months   ki1148112-LCNI-5           MALAWI                         Q3                     0       12     578
6-24 months   ki1148112-LCNI-5           MALAWI                         Q3                     1        6     578
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                     0      924   13290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                     1       95   13290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                     0     3158   13290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                     1     1054   13290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                     0     2358   13290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                     1      595   13290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                     0     4233   13290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                     1      873   13290
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                     0        7    1811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                     1        4    1811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                     0     1197    1811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                     1      500    1811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                     0       32    1811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                     1       15    1811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                     0       43    1811
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                     1       13    1811
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                     0       36     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                     1       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                     0       13     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                     1       29     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                     0       19     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                     1        9     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                     0       41     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                     1       42     214
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                     0       67     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4                     1       12     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                     0       40     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                     1        7     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                     0       35     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                     1        9     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                     0       54     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                     1        8     232
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                     0       32     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Q4                     1       31     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                     0       20     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Q1                     1       15     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                     0       25     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Q2                     1       27     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                     0       33     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Q3                     1       37     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                     0       15     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                     1        5     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                     0       23     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                     1        7     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                     0       45     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                     1       21     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                     0       89     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                     1       20     225
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                     0       51     302
0-24 months   ki0047075b-MAL-ED          PERU                           Q4                     1       40     302
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                     0       31     302
0-24 months   ki0047075b-MAL-ED          PERU                           Q1                     1       33     302
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                     0       39     302
0-24 months   ki0047075b-MAL-ED          PERU                           Q2                     1       30     302
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                     0       45     302
0-24 months   ki0047075b-MAL-ED          PERU                           Q3                     1       33     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     0       65     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                     1       30     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     0       31     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                     1       27     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     0       57     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                     1       35     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     0       40     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                     1       29     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     0        2     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                     1        2     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     0        6     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                     1       24     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     0       14     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                     1       20     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     0       49     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                     1      100     217
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4                     0        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4                     1       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1                     0       19     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1                     1       87     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2                     0       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2                     1       89     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3                     0       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3                     1      106     373
0-24 months   ki1000108-IRC              INDIA                          Q4                     0        7     410
0-24 months   ki1000108-IRC              INDIA                          Q4                     1        4     410
0-24 months   ki1000108-IRC              INDIA                          Q1                     0       93     410
0-24 months   ki1000108-IRC              INDIA                          Q1                     1       89     410
0-24 months   ki1000108-IRC              INDIA                          Q2                     0       51     410
0-24 months   ki1000108-IRC              INDIA                          Q2                     1       53     410
0-24 months   ki1000108-IRC              INDIA                          Q3                     0       64     410
0-24 months   ki1000108-IRC              INDIA                          Q3                     1       49     410
0-24 months   ki1000109-EE               PAKISTAN                       Q4                     0        1     376
0-24 months   ki1000109-EE               PAKISTAN                       Q4                     1        3     376
0-24 months   ki1000109-EE               PAKISTAN                       Q1                     0       36     376
0-24 months   ki1000109-EE               PAKISTAN                       Q1                     1      292     376
0-24 months   ki1000109-EE               PAKISTAN                       Q2                     0        6     376
0-24 months   ki1000109-EE               PAKISTAN                       Q2                     1       27     376
0-24 months   ki1000109-EE               PAKISTAN                       Q3                     0        2     376
0-24 months   ki1000109-EE               PAKISTAN                       Q3                     1        9     376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q4                     0       24    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q4                     1       14    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q1                     0      237    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q1                     1      499    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q2                     0      211    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q2                     1      263    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q3                     0      150    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Q3                     1      135    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     0        5     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4                     1       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     0       83     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1                     1      254     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     0       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2                     1       29     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3                     1       18     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                     0       42     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                     1       35     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                     0      105     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                     1      152     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                     0       87     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                     1      106     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                     0       52     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                     1       50     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                     0       11     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                     1        1     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                     0      152     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                     1      124     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                     0      170     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                     1       99     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                     0      104     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                     1       39     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     0      184     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                     1       70     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     0      104     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                     1       82     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     0       36     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                     1       20     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     0      140     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                     1      122     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     0        5    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                     1        0    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     0       50    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                     1       21    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     0     1707    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                     1      504    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     0       85    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                     1       14    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                     0       71     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4                     1       47     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                     0       19     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1                     1       29     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                     0       40     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2                     1       42     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                     0       19     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3                     1       15     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                     0       44     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                     1       31     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                     0      161     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                     1      260     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                     0       24     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                     1       22     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                     0       23     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                     1       34     599
0-24 months   ki1119695-PROBIT           BELARUS                        Q4                     0     2634   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Q4                     1      206   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Q1                     0       28   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Q1                     1        5   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Q2                     0      526   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Q2                     1       95   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Q3                     0    12009   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Q3                     1     1394   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     0     6448   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                     1     2412   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     0      130   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                     1       80   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     0      279   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                     1      148   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     0     3081   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                     1     1475   14053
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q4                     0        0    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q4                     1        3    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q1                     0      290    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q1                     1      766    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q2                     0       70    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q2                     1      176    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q3                     0       10    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Q3                     1       26    1341
0-24 months   ki1135781-COHORTS          INDIA                          Q4                     0     1719    5852
0-24 months   ki1135781-COHORTS          INDIA                          Q4                     1      296    5852
0-24 months   ki1135781-COHORTS          INDIA                          Q1                     0     1328    5852
0-24 months   ki1135781-COHORTS          INDIA                          Q1                     1      628    5852
0-24 months   ki1135781-COHORTS          INDIA                          Q2                     0      714    5852
0-24 months   ki1135781-COHORTS          INDIA                          Q2                     1      256    5852
0-24 months   ki1135781-COHORTS          INDIA                          Q3                     0      719    5852
0-24 months   ki1135781-COHORTS          INDIA                          Q3                     1      192    5852
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                     0      537    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                     1      400    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                     0      181    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                     1      457    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                     0      102    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                     1      163    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                     0      490    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                     1      728    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         Q4                     0        1     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Q4                     1        0     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Q1                     0      231     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Q1                     1      344     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Q2                     0      107     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Q2                     1      109     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Q3                     0        9     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Q3                     1       13     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                     0     1185   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                     1      398   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                     0     5077   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                     1     4796   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                     0     3231   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                     1     2985   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                     0     5637   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                     1     3893   27202
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                     0        5    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                     1       12    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                     0     1005    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                     1     1153    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                     0       23    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                     1       35    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                     0       32    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                     1       42    2307


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
```

```
##         ever_stunted
## meducyrs    0
##       Q4 1720
##       Q1 1274
##       Q2  711
##       Q3  718
```




# Results Detail

## Results Plots
![](/tmp/a59d1bb4-4936-459e-aaf1-252916a935f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a59d1bb4-4936-459e-aaf1-252916a935f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a59d1bb4-4936-459e-aaf1-252916a935f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a59d1bb4-4936-459e-aaf1-252916a935f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.4097274    0.3360533   0.4834016
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.4645292    0.3977332   0.5313253
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.1971477    0.1387629   0.2555325
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.4280029    0.3550376   0.5009683
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                0.1758390    0.1166603   0.2350176
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.2241179    0.1537682   0.2944676
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.2305179    0.1634246   0.2976112
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.2190002    0.1571688   0.2808316
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4840338    0.3883449   0.5797227
0-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.4371942    0.3083387   0.5660497
0-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.5290477    0.4219378   0.6361577
0-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.5320859    0.4439204   0.6202514
0-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                0.2851957    0.1982381   0.3721533
0-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                0.3633289    0.2864615   0.4401964
0-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                0.3302408    0.2505628   0.4099188
0-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                0.2270447    0.1659503   0.2881392
0-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.3945101    0.3105204   0.4784997
0-24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.4506106    0.3486273   0.5525939
0-24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.3912706    0.2929805   0.4895608
0-24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.4158458    0.3305477   0.5011439
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.3254794    0.2604818   0.3904769
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.4651749    0.3928408   0.5375090
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3789190    0.3127063   0.4451316
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.4039146    0.3324758   0.4753533
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.2550865    0.1341537   0.3760193
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.7434948    0.6773219   0.8096677
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.7528105    0.6866557   0.8189653
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.7543379    0.6896310   0.8190448
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.4541784    0.3931178   0.5152390
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.6263449    0.5810777   0.6716121
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.5456491    0.5159289   0.5753693
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.4922630    0.4385482   0.5459779
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.3806799    0.2540287   0.5073310
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.7475719    0.7026407   0.7925030
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.5448094    0.4487330   0.6408857
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.4880278    0.3752055   0.6008501
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.4491597    0.3744288   0.5238907
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.5792211    0.5267403   0.6317020
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.5520283    0.4918687   0.6121879
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.5067522    0.4342465   0.5792579
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.3218701    0.2776952   0.3660451
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.3879765    0.3320409   0.4439121
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.3031889    0.2288412   0.3775365
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.4265226    0.3794074   0.4736377
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.3790537    0.2982396   0.4598678
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.5411831    0.4257394   0.6566268
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.4673045    0.3727541   0.5618549
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.3230699    0.1921747   0.4539651
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.4265526    0.3313136   0.5217915
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.6183190    0.5719927   0.6646452
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.4810170    0.3491778   0.6128561
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.5882853    0.4683624   0.7082081
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                0.0774433    0.0616506   0.0932361
0-24 months   ki1119695-PROBIT           BELARUS        Q1                   NA                0.2108566    0.1820753   0.2396379
0-24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                0.1319380    0.0995775   0.1642985
0-24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                0.1031984    0.0880858   0.1183110
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.2759389    0.2674855   0.2843923
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.3817684    0.3519507   0.4115861
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.3179060    0.2932028   0.3426092
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.3127499    0.3010675   0.3244323
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.1860099    0.1733963   0.1986235
0-24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.2794621    0.2635410   0.2953832
0-24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.2611362    0.2404167   0.2818557
0-24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.2084635    0.1901863   0.2267407
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4768920    0.4502992   0.5034848
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.6940286    0.6653682   0.7226890
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6076679    0.5686612   0.6466747
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6022291    0.5779637   0.6264944
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.3930946    0.3790686   0.4071205
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.4563585    0.4467977   0.4659194
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.4454130    0.4351895   0.4556365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.4411785    0.4317274   0.4506296
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.6878686    0.4196501   0.9560870
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.5352318    0.5100802   0.5603834
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.5919608    0.4687901   0.7151315
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.5566766    0.4625558   0.6507973
0-6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.1041518    0.0673586   0.1409450
0-6 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.1019882    0.0686429   0.1353335
0-6 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.0835803    0.0550598   0.1121007
0-6 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.0872410    0.0579691   0.1165128
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2027319    0.1713039   0.2341599
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.2830759    0.2568121   0.3093398
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.2681246    0.2432618   0.2929874
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.2537286    0.2184618   0.2889954
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.2504657    0.1147820   0.3861495
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.3784507    0.3273066   0.4295948
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.3066206    0.2069348   0.4063063
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.2274064    0.1073791   0.3474337
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.1094538    0.0563556   0.1625519
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.1491353    0.1098981   0.1883725
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.1522157    0.1068939   0.1975374
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.1390147    0.0851196   0.1929098
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1315275    0.1064426   0.1566123
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.1361706    0.1086337   0.1637074
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.1133377    0.0878178   0.1388576
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1343824    0.1071178   0.1616470
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.2513140    0.1737680   0.3288600
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.1723804    0.0717684   0.2729923
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.2411914    0.1500540   0.3323287
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.1631644    0.0489079   0.2774210
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1051834    0.1000999   0.1102669
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1044649    0.0994425   0.1094873
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1059740    0.1006708   0.1112773
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1057732    0.1006107   0.1109357
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.1179104    0.1091903   0.1266305
0-6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.1238437    0.1145959   0.1330914
0-6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.1289559    0.1185162   0.1393957
0-6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1261052    0.1162566   0.1359537
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0590062    0.0507884   0.0672241
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0598817    0.0515472   0.0682163
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0571736    0.0491562   0.0651910
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0600099    0.0516631   0.0683567
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.3206995    0.3123686   0.3290304
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.3227667    0.3149085   0.3306250
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.3231007    0.3153400   0.3308614
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.3208514    0.3136334   0.3280694
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.3540172    0.1753673   0.5326671
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.2866907    0.2646306   0.3087509
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.3569153    0.2551546   0.4586760
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.3288877    0.2676898   0.3900856
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.6716981    0.5822061   0.7611902
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.8927596    0.8011975   0.9843217
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.8223834    0.7389137   0.9058530
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.5770160    0.4886034   0.6654285
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.3039220    0.1900748   0.4177693
6-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3228015    0.1783122   0.4672908
6-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.3607964    0.2276788   0.4939141
6-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4086688    0.2954982   0.5218395
6-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.2756746    0.1715114   0.3798379
6-24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.3789427    0.2490927   0.5087927
6-24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.3295223    0.1989006   0.4601440
6-24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.3445618    0.2308171   0.4583066
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.1954141    0.1164199   0.2744082
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.2783493    0.1891528   0.3675458
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2221963    0.1406794   0.3037132
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.2042981    0.1190285   0.2895676
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.0640035   -0.0333115   0.1613184
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.5934769    0.5078704   0.6790834
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.6335791    0.5516552   0.7155031
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.6159165    0.5377227   0.6941103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.5985166    0.3484622   0.8485709
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.5616927    0.4908908   0.6324945
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.5507610    0.3620579   0.7394642
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.5537878    0.3392914   0.7682842
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.2765018    0.1899030   0.3631007
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.4896385    0.4224119   0.5568652
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.4291209    0.3544567   0.5037851
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.3937675    0.3103737   0.4771613
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3340011    0.2348868   0.4331154
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4858156    0.4319075   0.5397237
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.4275555    0.2877945   0.5673165
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.4967859    0.3599171   0.6336547
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1163584    0.1086007   0.1241161
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2380434    0.2036252   0.2724616
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.2163060    0.1923426   0.2402694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1673222    0.1544021   0.1802423
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.3803554    0.3492760   0.4114349
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.6244421    0.5868297   0.6620545
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.5340410    0.4831575   0.5849245
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.5190212    0.4888111   0.5492313
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.0861257    0.0706897   0.1015618
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.2359258    0.2228862   0.2489653
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.1943384    0.1806037   0.2080731
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.1870169    0.1763816   0.1976522


### Parameter: E(Y)


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.4906542   0.4235187   0.5577897
0-24 months   ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.1551724   0.1084814   0.2018634
0-24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.5000000   0.4337790   0.5662210
0-24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.2355556   0.1799851   0.2911260
0-24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.4503311   0.3941253   0.5065370
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3853503   0.3314343   0.4392663
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7962466   0.7553156   0.8371777
0-24 months   ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.5942596   0.5539147   0.6346046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.5453100   0.5063654   0.5842547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.4716312   0.4132646   0.5299979
0-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.5792988   0.5397316   0.6188661
0-24 months   ki1119695-PROBIT           BELARUS        NA                   NA                0.1006096   0.0848963   0.1163228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.2928200   0.2852961   0.3003440
0-24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.2344498   0.2235944   0.2453051
0-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.5716154   0.5540738   0.5891570
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4437909   0.4362664   0.4513154
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.5383615   0.5136968   0.5630262
0-6 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.1225166   0.0854756   0.1595575
0-6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.2882353   0.2618269   0.3146436
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.1573927   0.1289105   0.1858749
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.2377358   0.1863852   0.2890865
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1054095   0.1003282   0.1104907
0-6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1209820   0.1124870   0.1294769
0-6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0614781   0.0529631   0.0699931
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.3219708   0.3152108   0.3287309
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2908422   0.2689870   0.3126973
6-24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.3841463   0.3094772   0.4588155
6-24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.3522727   0.2815002   0.4230452
6-24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.3289474   0.2678283   0.3900664
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.2633929   0.2055812   0.3212045
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.6631944   0.6085159   0.7178730
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.4500000   0.4023647   0.4976353
6-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4507338   0.4060349   0.4954326
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1358848   0.1289208   0.1428487
6-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.4901079   0.4693271   0.5108888
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.1969150   0.1888641   0.2049658


### Parameter: RR


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.1337519   0.9567147    1.3435492
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                0.4811679   0.3609630    0.6414025
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.0446040   0.8714906    1.2521049
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                1.2745634   0.8690261    1.8693476
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                1.3109603   0.9145155    1.8792648
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                1.2454588   0.8737654    1.7752680
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.9032307   0.6525204    1.2502686
0-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.0929975   0.8480072    1.4087658
0-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.0992743   0.8814493    1.3709284
0-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                1.2739636   0.9271269    1.7505514
0-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                1.1579445   0.8266249    1.6220605
0-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                0.7961015   0.5704838    1.1109476
0-24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.1422031   0.8555858    1.5248358
0-24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                0.9917887   0.7301410    1.3471985
0-24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                1.0540816   0.8067266    1.3772795
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.4291994   1.1367550    1.7968787
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.1641874   0.9227492    1.4687982
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.2409836   0.9782378    1.5743007
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                2.9146773   1.8039691    4.7092511
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                2.9511971   1.8272144    4.7665805
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                2.9571850   1.8311299    4.7757090
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.3790724   1.2069834    1.5756976
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.2013982   1.0589877    1.3629597
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                1.0838539   0.9712946    1.2094573
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.9637809   1.4052927    2.7442222
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.4311483   0.9873041    2.0745233
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.2819900   0.8591500    1.9129351
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.2895660   1.0701061    1.5540331
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.2290245   1.0101688    1.4952959
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.1282227   0.9082630    1.4014513
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.2053821   1.0091763    1.4397345
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                0.9419602   0.7247593    1.2242533
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.3251386   1.1384244    1.5424759
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                1.4277214   1.0659555    1.9122640
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                1.2328187   0.9294881    1.6351387
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                0.8523065   0.5446224    1.3338165
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.4495728   1.1454139    1.8344994
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.1276852   0.7920065    1.6056356
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.3791625   1.0194654    1.8657711
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1119695-PROBIT           BELARUS        Q1                   Q4                2.7227219   2.2134388    3.3491844
0-24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                1.7036722   1.2563267    2.3103059
0-24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                1.3325668   1.1521370    1.5412527
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.3835251   1.2749876    1.5013022
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1520883   1.0627833    1.2488976
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1334026   1.0856099    1.1832994
0-24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                1.5024043   1.3919628    1.6216086
0-24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                1.4038835   1.2786154    1.5414243
0-24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.1207118   1.0170229    1.2349722
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.4553161   1.3604583    1.5567878
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.2742255   1.1727978    1.3844250
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.2628207   1.1822667    1.3488632
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.1609383   1.1213971    1.2018737
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.1330938   1.0917656    1.1759864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.1223214   1.0821487    1.1639855
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                0.7781019   0.5284820    1.1456257
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                0.8605726   0.5522396    1.3410577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                0.8092775   0.5292722    1.2374163
0-6 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                0.9792266   0.7852016    1.2211957
0-6 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                0.8024852   0.6530366    0.9861353
0-6 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                0.8376329   0.6908374    1.0156209
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.3963070   1.2895138    1.5119444
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.3225575   1.2217977    1.4316269
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                1.2515475   1.1661446    1.3432049
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.5109879   0.8659093    2.6366322
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.2242016   0.6521990    2.2978714
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                0.9079343   0.4263753    1.9333782
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.3625413   0.7856741    2.3629630
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.3906845   0.7877155    2.4552052
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.2700770   0.6832239    2.3610058
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.0353014   0.8985583    1.1928543
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                0.8617038   0.7391384    1.0045933
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.0217059   0.8928291    1.1691856
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                0.6859163   0.3545737    1.3268925
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                0.9597212   0.5898307    1.5615749
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                0.6492453   0.3023788    1.3940111
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                0.9931690   0.9867675    0.9996120
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.0075166   0.9914148    1.0238800
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.0056070   0.9935437    1.0178168
0-6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                1.0503205   1.0041223    1.0986443
0-6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                1.0936775   1.0321366    1.1588877
0-6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.0695001   1.0158480    1.1259859
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.0148380   1.0059583    1.0237962
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                0.9689422   0.9452724    0.9932047
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.0170101   1.0094032    1.0246742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.0064459   0.9850531    1.0283034
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.0074873   0.9863279    1.0291005
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.0004736   0.9799990    1.0213759
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                0.8098215   0.4881170    1.3435526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.0081865   0.5677505    1.7902933
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                0.9290162   0.5448484    1.5840572
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.3291084   1.1246334    1.5707598
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                1.2243347   1.0392195    1.4424244
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                0.8590406   0.7068383    1.0440163
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                1.0621194   0.6069637    1.8585917
6-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.1871349   0.7149442    1.9711877
6-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.3446503   0.8653399    2.0894499
6-24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.3746012   0.8285815    2.2804378
6-24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                1.1953307   0.6930257    2.0617064
6-24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                1.2498859   0.7632903    2.0466852
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.4244079   0.8626811    2.3518979
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.1370540   0.6713002    1.9259518
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.0454625   0.5958031    1.8344851
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                9.2725737   2.0194439   42.5763869
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                9.8991375   2.1579216   45.4107897
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                9.6231736   2.0972887   44.1548505
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                0.9384747   0.6105088    1.4426243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                0.9202102   0.5386501    1.5720536
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                0.9252673   0.5267528    1.6252775
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.7708329   1.2615956    2.4856216
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.5519640   1.0880191    2.2137407
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.4241045   0.9785254    2.0725815
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.4545329   1.0593763    1.9970865
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.2801020   0.8235834    1.9896725
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.4873780   0.9921063    2.2298954
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                2.0457772   1.7455721    2.3976118
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.8589632   1.6347117    2.1139777
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.4379897   1.2999167    1.5907283
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.6417331   1.4850564    1.8149394
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.4040578   1.2399800    1.5898468
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.3645688   1.2363326    1.5061061
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                2.7393185   2.2808376    3.2899606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                2.2564509   1.8629223    2.7331096
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                2.1714410   1.8031291    2.6149852


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0809268    0.0338635    0.1279900
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0206666   -0.0588036    0.0174705
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0159662   -0.0550279    0.0869603
0-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0496401   -0.1240870    0.0248067
0-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0558211   -0.0087362    0.1203783
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0598710    0.0085416    0.1112003
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.5411602    0.4247758    0.6575445
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.1400812    0.0832752    0.1968872
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.3657316    0.2416060    0.4898572
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0961503    0.0257270    0.1665735
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0659926    0.0332409    0.0987444
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0925775    0.0326058    0.1525492
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1527463    0.0625338    0.2429588
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0231663    0.0125737    0.0337588
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0168811    0.0122064    0.0215559
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.0484399    0.0385992    0.0582805
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0947234    0.0733389    0.1161080
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0506963    0.0380217    0.0633709
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.1495071   -0.4140809    0.1150668
0-6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0183648    0.0037045    0.0330250
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0855034    0.0741951    0.0968118
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1317458   -0.0031294    0.2666210
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0479389   -0.0032760    0.0991538
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0069950   -0.0030932    0.0170831
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                -0.0135781   -0.0709707    0.0438144
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0002260   -0.0002155    0.0006676
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0030716    0.0000270    0.0061162
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0024719    0.0016544    0.0032893
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0012713   -0.0041899    0.0067325
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.0631750   -0.2404486    0.1140985
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.2875518   -0.3622890   -0.2128146
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0483507   -0.0451790    0.1418804
6-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0532727   -0.0353617    0.1419072
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0679788    0.0009352    0.1350224
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.5991910    0.4998120    0.6985699
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                -0.0365697   -0.2787507    0.2056114
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1734982    0.0909033    0.2560930
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1167327    0.0219528    0.2115125
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0195263    0.0141960    0.0248567
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1097525    0.0839931    0.1355119
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1107893    0.0949559    0.1266227


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.1649365    0.0655182    0.2537778
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.1331844   -0.4135097    0.0915471
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0319324   -0.1209296    0.1639486
0-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.2107364   -0.5851280    0.0752276
0-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.1239556   -0.0320944    0.2564113
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1553676    0.0151110    0.2756505
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.6796389    0.4912922    0.7982510
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.2357240    0.1368713    0.3232552
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.4899866    0.2943142    0.6314030
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1763222    0.0381876    0.2946180
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1701443    0.0821587    0.2496955
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.1962922    0.0577265    0.3144811
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2636744    0.0909434    0.4035846
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.2302589    0.1241433    0.3235180
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0576502    0.0416300    0.0734026
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.2066108    0.1650057    0.2461429
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1657118    0.1274982    0.2022518
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1142347    0.0853573    0.1422004
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.2777076   -0.8753710    0.1294861
0-6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                 0.1498962    0.0227345    0.2605116
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.2966445    0.2411009    0.3481229
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.3446934   -0.1158520    0.6151580
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.3045816   -0.0991899    0.5600335
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0504970   -0.0242634    0.1198006
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                -0.0571144   -0.3284962    0.1588302
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0021443   -0.0020509    0.0063220
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0253890    0.0000218    0.0501127
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0402075    0.0279720    0.0522889
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0039484   -0.0131519    0.0207601
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.2172141   -1.0086673    0.2623914
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.7485475   -1.0450452   -0.4950371
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1372536   -0.1733316    0.3656258
6-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.1619491   -0.1553331    0.3920981
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.2580890   -0.0379501    0.4696932
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.9034922    0.5663659    0.9785216
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                -0.0650767   -0.5965055    0.2894554
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.3855515    0.1766960    0.5414246
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2589836    0.0184204    0.4405902
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.1436979    0.1045842    0.1811029
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2239353    0.1698677    0.2744814
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.5626249    0.4788599    0.6329259
