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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

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
##         ever_stunted
## meducyrs    0
##       Q4 1720
##       Q1 1274
##       Q2  711
##       Q3  718
```




# Results Detail

## Results Plots
![](/tmp/c8274297-33cb-4ea9-8111-f220c52d9c05/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c8274297-33cb-4ea9-8111-f220c52d9c05/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c8274297-33cb-4ea9-8111-f220c52d9c05/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c8274297-33cb-4ea9-8111-f220c52d9c05/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.4098361    0.2861298   0.5335423
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.6904762    0.5503363   0.8306161
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.3214286    0.1480377   0.4948194
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.5060241    0.3982127   0.6138355
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                0.1518987    0.0725804   0.2312170
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.1489362    0.0469319   0.2509404
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.2045455    0.0851020   0.3239889
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.1290323    0.0454064   0.2126581
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4920635    0.3683314   0.6157956
0-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.4285714    0.2642493   0.5928935
0-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.5192308    0.3831226   0.6553390
0-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.5285714    0.4113659   0.6457770
0-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                0.2500000    0.0598042   0.4401958
0-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                0.2333333    0.0816470   0.3850196
0-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                0.3181818    0.2055619   0.4308018
0-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                0.1834862    0.1106604   0.2563121
0-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.4395604    0.3374145   0.5417064
0-24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.5156250    0.3929839   0.6382661
0-24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.4347826    0.3176204   0.5519448
0-24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.4230769    0.3132549   0.5328990
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.3157895    0.2221686   0.4094103
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.4655172    0.3369408   0.5940937
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3804348    0.2810705   0.4797991
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.4202899    0.3036368   0.5369429
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.6818182    0.4869272   0.8767091
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.8207547    0.7476393   0.8938701
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.8165138    0.7437523   0.8892752
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.7794118    0.7096309   0.8491926
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.3684211    0.2207803   0.5160618
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.6779891    0.6293807   0.7265975
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.5548523    0.5160742   0.5936305
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.4736842    0.4068343   0.5405341
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.6875000    0.4601109   0.9148891
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.7537092    0.7076539   0.7997645
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.7250000    0.5864605   0.8635395
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.7200000    0.5437848   0.8962152
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.4545455    0.3432401   0.5658508
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.5914397    0.5312932   0.6515862
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.5492228    0.4789689   0.6194767
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.4901961    0.3931048   0.5872873
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.2755906    0.2206058   0.3305753
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.4408602    0.3694617   0.5122587
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.3571429    0.2315633   0.4827224
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.4656489    0.4052085   0.5260892
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.3983051    0.3098191   0.4867911
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.6041667    0.4655762   0.7427572
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.5121951    0.4038141   0.6205762
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.4411765    0.2739814   0.6083716
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.4133333    0.3017945   0.5248722
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.6175772    0.5711163   0.6640381
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.4782609    0.3337864   0.6227353
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.5964912    0.4690230   0.7239595
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                0.0725352    0.0571820   0.0878885
0-24 months   ki1119695-PROBIT           BELARUS        Q1                   NA                0.1515152   -0.0475367   0.3505670
0-24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                0.1529791    0.1010292   0.2049289
0-24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                0.1040066    0.0883861   0.1196270
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.2722348    0.2629662   0.2815034
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.3809524    0.3152696   0.4466351
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.3466042    0.3014649   0.3917435
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.3237489    0.3101617   0.3373361
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.1468983    0.1314402   0.1623564
0-24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.3210634    0.3003710   0.3417558
0-24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.2639175    0.2361781   0.2916569
0-24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.2107574    0.1842710   0.2372438
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4268943    0.3952186   0.4585701
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7163009    0.6813157   0.7512862
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6150943    0.5565015   0.6736871
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.5977011    0.5701581   0.6252442
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2514214    0.2273012   0.2755415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.4857693    0.4746730   0.4968656
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.4802124    0.4674423   0.4929824
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.4084995    0.3969818   0.4200172
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.7058824    0.3713910   1.0403738
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.5342910    0.5088167   0.5597653
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.6034483    0.4397182   0.7671784
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.5675676    0.4555132   0.6796220
0-6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.1208791    0.0537907   0.1879675
0-6 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.1562500    0.0671464   0.2453536
0-6 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.1014493    0.0300918   0.1728068
0-6 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.1153846    0.0443660   0.1864032
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2105263    0.0992409   0.3218117
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.3346939    0.3016904   0.3676974
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.2648305    0.2282520   0.3014090
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.2175439    0.1785808   0.2565069
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.3125000    0.0851096   0.5398904
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.3809524    0.3289649   0.4329398
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.4250000    0.2716199   0.5783801
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.3750000    0.1810808   0.5689192
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.1428571    0.0646357   0.2210786
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.1595331    0.1147295   0.2043367
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.1606218    0.1087781   0.2124655
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.1568627    0.0862306   0.2274949
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.0984252    0.0617669   0.1350835
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.1451613    0.0945036   0.1958190
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.1428571    0.0511468   0.2345675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1717557    0.1260554   0.2174560
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.2589286    0.1776492   0.3402079
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.1914894    0.0787864   0.3041923
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.2500000    0.1524645   0.3475355
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.2000000    0.0565936   0.3434064
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1001469    0.0938913   0.1064026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1052632    0.0636552   0.1468711
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1334895    0.1012298   0.1657491
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1130167    0.1038147   0.1222187
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.0866183    0.0740619   0.0991746
0-6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.1471975    0.1313026   0.1630924
0-6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.1316348    0.1100426   0.1532271
0-6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1279728    0.1059370   0.1500087
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0437567    0.0306571   0.0568562
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0815047    0.0602704   0.1027390
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0716981    0.0406314   0.1027648
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0623974    0.0488115   0.0759833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1729180    0.1516754   0.1941605
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.3532934    0.3427817   0.3638051
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.3598131    0.3471126   0.3725135
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.2894571    0.2792273   0.2996869
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.3750000   -0.0314177   0.7814177
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.2855741    0.2630309   0.3081173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.3846154    0.2211159   0.5481148
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.3582090    0.2438153   0.4726026
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.3962264    0.2641434   0.5283095
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.5000000    0.3142336   0.6857664
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.2608696    0.0808646   0.4408746
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.3666667    0.2443593   0.4889740
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.3000000    0.1726174   0.4273826
6-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3333333    0.1641652   0.5025015
6-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.3571429    0.2118183   0.5024674
6-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4074074    0.2759815   0.5388333
6-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.2686567    0.1622854   0.3750281
6-24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.4038462    0.2701903   0.5375020
6-24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.3333333    0.2036718   0.4629949
6-24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.3275862    0.2065348   0.4486376
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.2272727    0.1259436   0.3286019
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.3200000    0.1904122   0.4495878
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2580645    0.1489026   0.3672264
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.2608696    0.1336913   0.3880479
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.3888889    0.1632884   0.6144894
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.6842105    0.5795241   0.7888969
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.7058824    0.6088491   0.8029156
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.6605505    0.5715011   0.7495998
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.5454545    0.2505492   0.8403599
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.5698324    0.4971420   0.6425228
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.5238095    0.3097284   0.7378907
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.5333333    0.2803056   0.7863611
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.3220339    0.2026641   0.4414037
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.5062500    0.4286893   0.5838107
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.4552846    0.3671717   0.5433974
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.4230769    0.3133061   0.5328478
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3015873    0.1881395   0.4150351
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4817073    0.4275763   0.5358383
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.4000000    0.2480225   0.5519775
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.4782609    0.3337555   0.6227663
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1147955    0.1066891   0.1229018
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2262774    0.1562086   0.2963461
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1985560    0.1515763   0.2455356
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1683068    0.1547980   0.1818155
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.3566529    0.3218731   0.3914328
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.6392694    0.5942871   0.6842518
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.5297297    0.4577913   0.6016681
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.5183486    0.4851771   0.5515201
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.0932287    0.0743981   0.1120592
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.2502374    0.2356992   0.2647756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.2014900    0.1862941   0.2166859
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.1709753    0.1597497   0.1822009


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


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.6847619   1.1710373   2.423853
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                0.7842857   0.4226856   1.455228
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.2346988   0.8533078   1.786555
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                0.9804965   0.4143936   2.319952
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                1.3465909   0.6152106   2.947457
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                0.8494624   0.3695606   1.952552
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.8709677   0.5506427   1.377635
0-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.0552109   0.7338133   1.517375
0-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.0741935   0.7682125   1.502048
0-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                0.9333333   0.3431138   2.538840
0-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                1.2727273   0.5499504   2.945420
0-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                0.7339450   0.3111709   1.731123
0-24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.1730469   0.8412033   1.635798
0-24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                0.9891304   0.6929744   1.411854
0-24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                0.9625000   0.6793480   1.363670
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.4741379   0.9830286   2.210600
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.2047101   0.8115015   1.788446
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.3309179   0.8867034   1.997672
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                1.2037736   0.8923127   1.623950
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.1975535   0.8876942   1.615573
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                1.1431373   0.8472522   1.542354
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.8402562   1.2214039   2.772664
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.5060277   0.9912256   2.288197
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                1.2857143   0.8579320   1.926797
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.0963043   0.7831743   1.534631
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.0545455   0.7197361   1.545103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.0472727   0.6940138   1.580343
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.3011673   0.9981144   1.696235
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.2082902   0.9166197   1.592771
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.0784314   0.7870679   1.477654
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.5996928   1.2371845   2.068420
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.2959184   0.8649670   1.941582
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.6896401   1.3317504   2.143708
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                1.5168440   1.1021894   2.087496
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                1.2859367   0.9461859   1.747683
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                1.1076345   0.7138635   1.718612
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.4941384   1.1290846   1.977221
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.1570827   0.7717004   1.734923
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.4431239   1.0228487   2.036085
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS        Q1                   Q4                2.0888497   0.5763089   7.571102
0-24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                2.1090318   1.5475826   2.874170
0-24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                1.4338769   1.2192613   1.686269
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.3993524   1.1738196   1.668218
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.2731813   1.1128330   1.456634
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1892269   1.1266649   1.255263
0-24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                2.1856174   1.9318926   2.472665
0-24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                1.7966007   1.5483133   2.084703
0-24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.4347168   1.2178125   1.690254
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.6779350   1.5353086   1.833811
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.4408585   1.2769726   1.625777
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4001149   1.2830101   1.527908
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.9320923   1.7528934   2.129611
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.9099903   1.7284940   2.110544
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.6247605   1.4702847   1.795466
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                0.7569123   0.4719089   1.214040
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                0.8548851   0.4933380   1.481395
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                0.8040541   0.4800141   1.346842
0-6 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                1.2926136   0.5832782   2.864585
0-6 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                0.8392622   0.3425941   2.055964
0-6 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                0.9545455   0.4167402   2.186391
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.5897959   0.9636592   2.622765
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.2579449   0.7632343   2.073315
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                1.0333333   0.6090085   1.753305
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.2190476   0.5814295   2.555903
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.3600000   0.6036591   3.063981
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.2000000   0.4914662   2.930008
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.1167315   0.6035259   2.066339
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.1243523   0.5954752   2.122957
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.0980392   0.5404296   2.230985
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.4748387   0.8852858   2.457002
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.4514285   0.6909818   3.048770
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.7450381   1.1041201   2.757995
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                0.7395451   0.3795541   1.440972
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                0.9655172   0.5851782   1.593059
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                0.7724138   0.3531125   1.689612
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.0510871   0.7044375   1.568321
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.3329359   1.0384998   1.710851
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1285088   1.0184431   1.250470
0-6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                1.6993817   1.4183635   2.036078
0-6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                1.5197122   1.2209313   1.891609
0-6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.4774347   1.1796534   1.850385
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.8626806   1.2525171   2.770085
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.6385641   0.9676934   2.774528
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4260082   0.9848188   2.064846
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                2.0431270   1.8020770   2.316420
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                2.0808308   1.8303163   2.365633
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.6739558   1.4697377   1.906550
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                0.7615309   0.2564721   2.261179
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.0256410   0.3192501   3.295033
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                0.9552239   0.3094953   2.948195
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.2619048   0.7660273   2.078782
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                0.6583851   0.3059640   1.416738
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                0.9253968   0.5774608   1.482974
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                1.1111111   0.5733011   2.153437
6-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.1904762   0.6611653   2.143539
6-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.3580247   0.7967451   2.314706
6-24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.5032051   0.8972304   2.518445
6-24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                1.2407407   0.7122422   2.161396
6-24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                1.2193487   0.7094471   2.095732
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.4080000   0.7709454   2.571471
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.1354839   0.6141453   2.099379
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.1478261   0.5928722   2.222241
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                1.7593985   0.9656235   3.205683
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.8151261   0.9999752   3.294764
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                1.6985583   0.9363239   3.081306
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.0446927   0.5994264   1.820712
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                0.9603175   0.4876076   1.891295
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                0.9777778   0.4762683   2.007376
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.5720395   1.0526233   2.347761
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.4137783   0.9306325   2.147754
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.3137652   0.8356370   2.065465
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.5972401   1.0786196   2.365223
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.3263158   0.7770472   2.263844
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.5858124   0.9788343   2.569179
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.9711347   1.4347649   2.708020
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.7296495   1.3512084   2.214083
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.4661443   1.3174938   1.631567
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7924131   1.5893249   2.021452
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.4852807   1.2566076   1.755567
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4533698   1.2933616   1.633173
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                2.6841254   2.1867314   3.294657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                2.1612453   1.7456100   2.675845
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.8339352   1.4873681   2.261255


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0808181   -0.0244726   0.1861089
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                 0.0032737   -0.0614317   0.0679791
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0079365   -0.0965939   0.1124670
0-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0144444   -0.1956391   0.1667502
0-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0107707   -0.0746985   0.0962398
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0695608   -0.0102403   0.1493620
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.1144285   -0.0731277   0.3019847
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.2258386    0.0771628   0.3745144
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.0589115   -0.1635545   0.2813775
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0907646   -0.0135061   0.1950352
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1122722    0.0653471   0.1591974
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0733261    0.0048874   0.1417649
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1659655    0.0616052   0.2703257
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0280744    0.0170765   0.0390722
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0205853    0.0147378   0.0264327
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.0875515    0.0736866   0.1014164
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1447211    0.1183357   0.1711065
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1923695    0.1687386   0.2160005
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.1675208   -0.4985744   0.1635327
0-6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0016374   -0.0545804   0.0578553
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0777090   -0.0224088   0.1778268
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.0697115   -0.1537044   0.2931275
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0145355   -0.0591652   0.0882363
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0400972    0.0077123   0.0724822
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                -0.0211927   -0.0816824   0.0392970
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0052625    0.0013124   0.0092126
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0343637    0.0232979   0.0454296
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0177214    0.0059340   0.0295089
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1490528    0.1277753   0.1703303
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.0841578   -0.4884067   0.3200910
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.0120801   -0.1204562   0.0962961
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0522727   -0.0573428   0.1618883
6-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0602907   -0.0313633   0.1519446
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0361201   -0.0508238   0.1230640
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.2743056    0.0563070   0.4923041
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.0164924   -0.2710940   0.3040787
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1279661    0.0160959   0.2398363
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1491465    0.0420546   0.2562383
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0210893    0.0155874   0.0265911
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1334550    0.1043264   0.1625835
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1036863    0.0854067   0.1219659


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.1647151   -0.0808944   0.3545152
0-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                 0.0210970   -0.4987372   0.3606277
0-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0158730   -0.2170658   0.2042288
0-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0613208   -1.1907599   0.4858397
0-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0239173   -0.1855998   0.1964089
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1805133   -0.0551450   0.3635392
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.1437098   -0.1282926   0.3501394
0-24 months   ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.3800335    0.0760820   0.5839907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.0789263   -0.2731940   0.3336626
0-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1664458   -0.0489413   0.3376058
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2894638    0.1578972   0.4004750
0-24 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.1554734   -0.0036175   0.2893457
0-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2864938    0.0802436   0.4464935
0-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                 0.2790427    0.1705983   0.3733079
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0703001    0.0501338   0.0900382
0-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.3734339    0.3131477   0.4284287
0-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2531791    0.2048773   0.2985468
0-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.4334689    0.3778365   0.4841267
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.3111679   -1.0936679   0.1788758
0-6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0133650   -0.5708344   0.3802984
0-6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.2696026   -0.1889735   0.5513101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.1823899   -0.6712424   0.6000064
0-6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0923521   -0.5201196   0.4580527
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2894638    0.0187257   0.4855040
0-6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                -0.0891440   -0.3754664   0.1375764
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0499244    0.0117645   0.0866108
0-6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.2840400    0.1884740   0.3683521
0-6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2882558    0.0731830   0.4534199
0-6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.4629389    0.3936163   0.5243365
0-6 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.2893592   -2.7850209   0.5607826
6-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.0314465   -0.3559487   0.2153966
6-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1483871   -0.2270813   0.4089678
6-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.1832836   -0.1481876   0.4190621
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1371341   -0.2642104   0.4110651
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.4136126   -0.0312059   0.6665552
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                 0.0293486   -0.6445568   0.4271015
6-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.2843691   -0.0133188   0.4946037
6-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.3308970    0.0453315   0.5310427
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.1551997    0.1143307   0.1941827
6-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2722971    0.2098859   0.3297784
6-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.5265537    0.4249124   0.6102309
