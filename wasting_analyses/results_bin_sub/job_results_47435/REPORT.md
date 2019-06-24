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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
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

agecat        studyid                    country                        birthwt                       ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      183     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       21     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       37     257
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       16     257
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      219     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      168     243
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       37     243
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       24     243
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       14     243
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      200     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       12     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       15     233
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        6     233
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      274     299
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        7     299
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    0       13     299
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    1        5     299
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      275     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        7     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      120     135
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        8     135
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        6     135
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        1     135
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      271     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       59     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       27     373
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      297     408
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1       42     408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                    0       36     408
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                    1       33     408
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      167     379
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       78     379
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                    0       68     379
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                    1       66     379
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       18      22
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      22
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        3      22
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        0      22
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      943    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      193    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      210    1503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1      157    1503
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      124     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       19     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       53     225
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       29     225
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      489     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       43     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0      121     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       47     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      549     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       32     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0      138     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       39     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2188    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      101    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       67    2371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1       15    2371
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1645    2119
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      276    2119
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    0      129    2119
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    1       69    2119
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        5       9
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       9
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        3       9
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       9
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      106     115
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        1     115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                    0        8     115
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                    1        0     115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          0       16      17
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      17
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                    0        1      17
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                    1        0      17
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16870   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       27   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11729   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      334   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1580   13890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      247   13890
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      763     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       85     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       64     929
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       17     929
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5088    6758
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      291    6758
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    0     1059    6758
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    1      320    6758
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2283    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      431    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      168    3001
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      119    3001
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    16183   26816
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      591   26816
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     8257   26816
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     1785   26816
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2974    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      355    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      792    4508
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      387    4508
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      201     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        3     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       47     257
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1        6     257
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      221     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0       12     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      194     243
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       11     243
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       34     243
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    1        4     243
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      209     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        3     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       18     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        3     233
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      281     299
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     299
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    0       16     299
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    1        2     299
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      290     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       17     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        5     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      128     135
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     135
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        6     135
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        1     135
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      313     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       19     368
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      330     407
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1        9     407
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                    0       53     407
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                    1       15     407
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      220     379
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       25     379
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    0      106     379
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    1       28     379
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       18      22
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      22
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        3      22
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        0      22
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0     1095    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       40    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      294    1495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1       66    1495
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      139     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        4     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       63     225
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       19     225
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      527     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        5     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0      143     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       25     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      580     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        1     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0      161     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       16     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     2277    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       12    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       77    2371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        5    2371
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1734    1946
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       34    1946
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    0      155    1946
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    1       23    1946
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        5       9
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       9
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        3       9
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       9
0-6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      107     115
0-6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        0     115
0-6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    0        8     115
0-6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    1        0     115
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          0       16      17
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      17
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                    0        1      17
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                    1        0      17
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16874   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11991   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       39   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1639   13797
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      128   13797
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      802     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       16     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       77     896
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1        1     896
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5223    6593
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       30    6593
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    0     1192    6593
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    1      148    6593
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2674    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       40    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      255    3000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1       31    3000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    16656   26763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      115   26763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     9053   26763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1      939   26763
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     3292    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       28    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0     1050    4466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1       96    4466
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      166     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       19     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       35     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       14     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      195     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0       10     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      159     228
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       33     228
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       24     228
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       12     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      197     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       10     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       18     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        3     228
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      243     267
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        7     267
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    0       13     267
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    1        4     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      228     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       15     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       12     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        4     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      110     123
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        8     123
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        5     123
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        0     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      279     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       51     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       19     373
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      301     408
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1       38     408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                    0       43     408
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                    1       26     408
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      166     373
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       75     373
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                    0       75     373
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                    1       57     373
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       13      16
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      16
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        2      16
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        0      16
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      865    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      181    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      201    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1      132    1379
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      101     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       16     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       43     180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       20     180
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      427     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       39     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0      112     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       36     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      528     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       31     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0      139     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       32     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1834    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       98    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       52    1997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1       13    1997
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1591    2039
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      265    2039
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    0      125    2039
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    1       58    2039
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        1       1
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        0       1
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      106     115
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        1     115
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                    0        8     115
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                    1        0     115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          0       13      14
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      14
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                    0        1      14
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                    1        0      14
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    16589   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     8970   10658
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      304   10658
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1254   10658
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      130   10658
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      679     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       74     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       56     825
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       16     825
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4750    6296
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      284    6296
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    0     1019    6296
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    1      243    6296
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2091    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      420    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      148    2765
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      106    2765
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    10445   17197
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      493   17197
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     5256   17197
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     1003   17197
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2983    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      338    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      847    4499
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      331    4499


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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d48b6a41-277c-4459-858e-f280a62b581a/ea3131ba-7909-4eb4-a220-4b0230c4a64e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d48b6a41-277c-4459-858e-f280a62b581a/ea3131ba-7909-4eb4-a220-4b0230c4a64e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d48b6a41-277c-4459-858e-f280a62b581a/ea3131ba-7909-4eb4-a220-4b0230c4a64e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d48b6a41-277c-4459-858e-f280a62b581a/ea3131ba-7909-4eb4-a220-4b0230c4a64e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1023165   0.0603446   0.1442885
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.2753868   0.1482248   0.4025487
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1818602   0.1290717   0.2346487
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.3685779   0.2050022   0.5321535
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0566038   0.0254304   0.0877772
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2857143   0.0920835   0.4793451
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0249110   0.0066578   0.0431643
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.2777778   0.0705140   0.4850416
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0517241   0.0261936   0.0772547
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.3181818   0.1232396   0.5131240
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1791139   0.1376624   0.2205654
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.6309043   0.4819408   0.7798678
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1222233   0.0871363   0.1573103
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4936197   0.3729190   0.6143204
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3175343   0.2585177   0.3765509
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4982956   0.4134350   0.5831563
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1696981   0.1335411   0.2058550
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4317806   0.3674003   0.4961609
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1276201   0.0720799   0.1831604
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3618210   0.2556908   0.4679512
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0813071   0.0578406   0.1047737
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2950253   0.2248496   0.3652011
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0544204   0.0358898   0.0729509
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.2329702   0.1708794   0.2950610
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0440989   0.0356842   0.0525136
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1967729   0.1149900   0.2785558
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1425895   0.1269309   0.1582482
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.3590820   0.2909613   0.4272027
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0275528   0.0246290   0.0304766
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.1384015   0.1223825   0.1544205
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0997784   0.0795965   0.1199602
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2086635   0.1173445   0.2999825
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0534250   0.0474088   0.0594412
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2402195   0.2178404   0.2625985
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1580061   0.1442584   0.1717539
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4211371   0.3642415   0.4780328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0349855   0.0318845   0.0380865
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1784373   0.1705958   0.1862787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1062050   0.0936777   0.1187322
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3324790   0.3013775   0.3635806
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0370236   0.0164639   0.0575832
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4195417   0.2660206   0.5730629
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0265487   0.0094146   0.0436828
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.2205882   0.1219143   0.3192622
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1017798   0.0636733   0.1398863
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.2118406   0.1416973   0.2819838
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0351963   0.0175729   0.0528197
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.1870652   0.1338010   0.2403295
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0093985   0.0011934   0.0176035
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.1488095   0.0949537   0.2026653
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0052425   0.0022835   0.0082015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.0609756   0.0091733   0.1127779
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0193384   0.0128598   0.0258169
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1198226   0.0733411   0.1663042
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0032716   0.0022449   0.0042983
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0726901   0.0602489   0.0851314
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0055927   0.0035900   0.0075953
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.1112452   0.0943074   0.1281830
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0146088   0.0100986   0.0191189
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1103970   0.0735525   0.1472416
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0068867   0.0055926   0.0081807
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0940599   0.0881274   0.0999923
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0084321   0.0044953   0.0123688
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0865636   0.0670070   0.1061201
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1029797   0.0591015   0.1468579
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.2871361   0.1650678   0.4092043
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1718317   0.1182452   0.2254182
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.3206394   0.1591474   0.4821313
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1546468   0.1154734   0.1938202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4238317   0.2669690   0.5806943
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1097409   0.0763901   0.1430918
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.3981611   0.2792733   0.5170490
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3165211   0.2572530   0.3757893
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4274653   0.3449127   0.5100178
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1725753   0.1413871   0.2037636
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4007161   0.3329644   0.4684678
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1334231   0.0710089   0.1958374
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.3266959   0.2102863   0.4431055
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0853867   0.0598395   0.1109340
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2475110   0.1762886   0.3187335
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0543841   0.0354105   0.0733577
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.1913863   0.1320718   0.2507008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0506609   0.0408769   0.0604449
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.2192525   0.1180638   0.3204412
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1417479   0.1258766   0.1576193
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.3346571   0.2669196   0.4023946
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0325439   0.0289266   0.0361611
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0966829   0.0812390   0.1121267
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0979106   0.0766634   0.1191578
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.2230911   0.1238350   0.3223472
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0556974   0.0493541   0.0620407
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.2000698   0.1782484   0.2218913
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1664865   0.1518925   0.1810805
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4286050   0.3681851   0.4890250
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0445458   0.0402891   0.0488025
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.1628947   0.1531969   0.1725925
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1013459   0.0891224   0.1135694
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.2844543   0.2559805   0.3129280


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1439689   0.1009650   0.1869727
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2098765   0.1585703   0.2611827
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0772532   0.0428971   0.1116093
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0401338   0.0178494   0.0624181
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0705128   0.0420601   0.0989655
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1838235   0.1461927   0.2214543
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2328676   0.1923832   0.2733520
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2133333   0.1596859   0.2669808
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0489245   0.0402400   0.0576090
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1628126   0.1470895   0.1785358
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0418287   0.0384992   0.0451581
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1097955   0.0896809   0.1299101
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0904114   0.0835737   0.0972490
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1832722   0.1694278   0.1971167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0886038   0.0847199   0.0924878
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1645963   0.1519758   0.1772167
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0589681   0.0360543   0.0818818
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0709030   0.0481799   0.0936261
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0071700   0.0037732   0.0105668
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0292909   0.0217971   0.0367846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0121041   0.0102794   0.0139288
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0269983   0.0230857   0.0309109
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236667   0.0182263   0.0291070
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393827   0.0368929   0.0418726
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0277653   0.0218336   0.0336971
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1410256   0.0963358   0.1857155
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1973684   0.1455920   0.2491449
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1568627   0.1215314   0.1921941
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2269761   0.1910133   0.2629388
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2000000   0.1414022   0.2585978
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0555834   0.0455321   0.0656347
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1584110   0.1425588   0.1742632
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0407206   0.0369682   0.0444730
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1090909   0.0878048   0.1303770
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0837039   0.0768626   0.0905453
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1902351   0.1756031   0.2048671
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869919   0.0823156   0.0916682
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1486997   0.1368826   0.1605168


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     2.691518    1.447121    5.005989
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     2.026710    1.191253    3.448094
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     5.047619    2.107816   12.087613
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    11.150794    3.918607   31.730715
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     6.151515    2.800873   13.510481
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     3.522364    2.529677    4.904596
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     4.038670    2.774066    5.879766
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     1.569266    1.218418    2.021141
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     2.544405    2.089455    3.098415
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     2.835140    1.678372    4.789176
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     3.628529    2.492921    5.281444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     4.280938    2.776957    6.599466
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     4.462079    2.824613    7.048807
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     2.518291    2.024186    3.133008
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     5.023136    4.293621    5.876602
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     2.091270    1.290446    3.389068
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     4.496390    3.886663    5.201768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     2.665322    2.270797    3.128390
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     5.100320    4.636316    5.610761
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     3.130542    2.694149    3.637620
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    11.331746    5.818905   22.067463
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     8.308824    3.788871   18.220874
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     2.081361    1.264032    3.427179
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     5.314916    3.234945    8.732242
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    15.833333    6.153721   40.738678
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    11.631098    4.194265   32.254142
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     6.196113    3.716209   10.330911
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    22.218312   15.540841   31.764909
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    19.891267   13.479456   29.353003
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     7.556909    4.796121   11.906890
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    13.658282   11.199449   16.656950
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    10.266011    6.146633   17.146133
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     2.788278    1.546355    5.027624
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.866008    1.030158    3.380050
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     2.740643    1.748007    4.296964
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     3.628191    2.368692    5.557402
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     1.350511    1.031883    1.767525
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     2.321978    1.917665    2.811534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     2.448570    1.363411    4.397423
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     2.898706    1.912607    4.393217
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     3.519158    2.204995    5.616553
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     4.327843    2.624010    7.138015
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     2.360932    1.875306    2.972313
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     2.970846    2.445769    3.608651
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     2.278519    1.388160    3.739950
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     3.592083    3.069824    4.203192
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     2.574413    2.181838    3.037624
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     3.656791    3.275855    4.082024
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     2.806766    2.400197    3.282204


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0416524    0.0127617   0.0705431
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0280163    0.0010262   0.0550064
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0206494    0.0010604   0.0402385
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0152227    0.0009565   0.0294890
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0187887    0.0029877   0.0345896
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0514491    0.0287441   0.0741541
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0616002    0.0371592   0.0860412
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0624129    0.0246644   0.1001615
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0631695    0.0408691   0.0854699
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0857132    0.0404690   0.1309574
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0472643    0.0286887   0.0658399
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0392472    0.0234720   0.0550224
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0048256    0.0017451   0.0079061
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0202231    0.0133483   0.0270979
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0142758    0.0120930   0.0164587
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0100171    0.0017672   0.0182670
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0369864    0.0319944   0.0419784
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0252661    0.0190401   0.0314921
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0536183    0.0503815   0.0568551
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0583913    0.0493517   0.0674309
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0472156    0.0251965   0.0692346
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0324194    0.0142656   0.0505732
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0380619    0.0097326   0.0663911
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0357067    0.0195604   0.0518531
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0334586    0.0196592   0.0472581
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0019275    0.0000868   0.0037682
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0099525    0.0051660   0.0147390
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0088324    0.0072303   0.0104346
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0214057    0.0178252   0.0249861
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0090579    0.0054552   0.0126606
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0324961    0.0301015   0.0348907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0193333    0.0142120   0.0244545
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0380459    0.0097332   0.0663587
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0255367   -0.0016546   0.0527280
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0330208    0.0129473   0.0530942
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0471218    0.0247319   0.0695117
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0373663   -0.0000462   0.0747787
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0544007    0.0345541   0.0742474
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0665769    0.0192521   0.1139016
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0367631    0.0180824   0.0554438
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0319173    0.0168480   0.0469865
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0049225    0.0015373   0.0083076
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0166631    0.0101454   0.0231807
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0081767    0.0060924   0.0102610
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0111803    0.0021914   0.0201692
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0280065    0.0232968   0.0327162
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0237486    0.0174312   0.0300660
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0424461    0.0386115   0.0462807
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0473538    0.0391753   0.0555323


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2893151    0.0757727   0.4535186
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1334896   -0.0020713   0.2507118
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.2672956    0.0000866   0.4630978
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.3793001    0.0090832   0.6112001
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.2664577    0.0367304   0.4413980
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2231455    0.1236056   0.3113798
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3351051    0.2024723   0.4456804
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1642674    0.0584009   0.2582310
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2712681    0.1809602   0.3516185
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4017806    0.1680066   0.5698686
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3676111    0.2238184   0.4847653
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4190052    0.2547495   0.5470583
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0986332    0.0357955   0.1573757
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1242110    0.0820461   0.1644390
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3412934    0.2945769   0.3849161
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0912342    0.0144709   0.1620184
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4090901    0.3599260   0.4544780
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1378611    0.1041670   0.1702879
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6051468    0.5756534   0.6325903
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3547548    0.3011110   0.4042811
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5604944    0.3257171   0.7135250
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5497788    0.2539172   0.7283154
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2721782    0.0496597   0.4425948
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5035997    0.2915371   0.6521860
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7807018    0.5147381   0.9008953
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2688305    0.0076893   0.4612485
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3397818    0.1839661   0.4658456
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7297083    0.6443464   0.7945822
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.7928515    0.7130542   0.8504578
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.3827286    0.2437078   0.4961948
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.8251352    0.7912250   0.8535375
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.6963101    0.5474282   0.7962145
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2697802    0.0539139   0.4363929
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1293860   -0.0170113   0.2547096
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1759535    0.0662151   0.2727954
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3004015    0.1562895   0.4198981
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1055880   -0.0066372   0.2053018
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2396761    0.1598375   0.3119278
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3328843    0.0650310   0.5240020
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3009673    0.1440551   0.4291143
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3698348    0.1938518   0.5074006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0885599    0.0275707   0.1457240
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1051889    0.0639156   0.1446425
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2008004    0.1512020   0.2475005
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1024863    0.0182724   0.1794763
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3345900    0.2822244   0.3831352
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1248380    0.0917711   0.1567010
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4879317    0.4485249   0.5245226
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3184525    0.2629927   0.3697390
