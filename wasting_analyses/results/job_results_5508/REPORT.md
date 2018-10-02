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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthwt                       wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ---------------------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       31     119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       46     119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       13     119
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       29     119
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        5      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       16      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0        1      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1      23
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       44     166
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       76     166
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       21     166
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       25     166
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0       12      85
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       55      85
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0        4      85
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1       14      85
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        3      34
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       22      34
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                        0        3      34
0-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        6      34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0       16      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       52      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0        1      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1       14      83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        3      24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       19      24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        0      24
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        2      24
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       97     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      175     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       23     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       31     326
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              0      117     394
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              1      176     394
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                        0       45     394
0-24 months   ki1000108-IRC              INDIA                          Low birth weight                        1       56     394
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      182     514
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1      120     514
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                        0      118     514
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                        1       94     514
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        5      10
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        4      10
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        0      10
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1      10
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      316     811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      178     811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      185     811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1      132     811
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       39     170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       49     170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       44     170
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       38     170
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       74     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       93     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0       54     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       86     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       61     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1      103     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0       56     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1       91     311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      244     703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      420     703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       19     703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       20     703
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0      455    1212
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      619    1212
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                        0       88    1212
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                        1       50    1212
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        1       3
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       3
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        2       3
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       3
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0        6      13
0-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        5      13
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        1      13
0-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        1      13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        0       1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        0       1
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        1       1
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight              0        0       3
0-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight              1        1       3
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                        0        1       3
0-24 months   ki1114097-CMIN             PERU                           Low birth weight                        1        1       3
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      615    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     3816    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0    4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     1169    3568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1279    3568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0      454    3568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      666    3568
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      134     320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1      139     320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       21     320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       26     320
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     1227    2516
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      343    2516
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                        0      645    2516
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                        1      301    2516
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      524    1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      830    1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0      130    1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      180    1664
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     4350   15117
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     2562   15117
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     4373   15117
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     3832   15117
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     1557    3576
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      505    3576
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0     1024    3576
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      490    3576
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       10      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       31      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0        3      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       16      60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       12      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        1      14
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       18      77
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       40      77
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                        0        6      77
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       13      77
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0        6      40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       25      40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0        1      40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        8      40
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1        8      11
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                        0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                        1        3      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0        7      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       18      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0        1      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        7      33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        0       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1        7       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        0       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        1       8
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       55     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      117     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       11     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       20     203
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight              0       65     239
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight              1      115     239
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                        0       22     239
0-6 months    ki1000108-IRC              INDIA                          Low birth weight                        1       37     239
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight              0       58     216
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       74     216
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                        0       36     216
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight                        1       48     216
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        2       6
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        4       6
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        0       6
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        0       6
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      102     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1       84     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0       63     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       91     340
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       12      91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       29      91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       18      91
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1       32      91
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       19     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       72     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0       20     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       73     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       13     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       90     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0        8     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1       87     198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0       92     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      223     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        8     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1       12     335
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0       92     334
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      194     334
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                        0       21     334
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                        1       27     334
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        1       3
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0       3
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                        0        2       3
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                        1        0       3
0-6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0        3       9
0-6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        4       9
0-6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                        0        1       9
0-6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                        1        1       9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              0        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight              1        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        0        0       1
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                        1        1       1
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight              0        0       2
0-6 months    ki1114097-CMIN             PERU                           Normal or high birthweight              1        1       2
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                        0        0       2
0-6 months    ki1114097-CMIN             PERU                           Low birth weight                        1        1       2
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      488    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     3775    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0    4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0      400    2515
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1213    2515
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0      244    2515
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1      658    2515
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0       45     210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1      135     210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0        5     210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1       25     210
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight              0      677    1717
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      343    1717
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight                        0      396    1717
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight                        1      301    1717
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      152     746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      427     746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0       44     746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1      123     746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     1538    9458
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1     2562    9458
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     1526    9458
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1     3832    9458
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      220    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      272    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      182    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      346    1020
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       21      59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       15      59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        0       10      59
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                        1       13      59
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        0        1       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                        1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       26      89
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       36      89
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                        0       15      89
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                        1       12      89
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0        6      45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       30      45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        0        3      45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                        1        6      45
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        3      23
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       14      23
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                        0        3      23
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                        1        3      23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0        9      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       34      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                        1        7      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        3      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       12      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0        0      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        1      16
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       42     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       58     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        0       12     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                        1       11     123
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              0       52     155
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              1       61     155
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                        0       23     155
6-24 months   ki1000108-IRC              INDIA                          Low birth weight                        1       19     155
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0      124     298
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       46     298
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                        0       82     298
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight                        1       46     298
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        3       4
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        0       4
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                        0        0       4
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birth weight                        1        1       4
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      214     471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1       94     471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        0      122     471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                        1       41     471
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       27      79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       20      79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        0       26      79
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                        1        6      79
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       55     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       21     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        0       34     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                        1       13     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       48     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       13     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        0       48     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                        1        4     113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      152     368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      197     368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        0       11     368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                        1        8     368
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0      363     878
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      425     878
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                        0       67     878
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                        1       23     878
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              0        3       4
6-24 months   ki1114097-CMIN             BRAZIL                         Normal or high birthweight              1        1       4
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                        0        0       4
6-24 months   ki1114097-CMIN             BRAZIL                         Low birth weight                        1        0       4
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight              0        0       1
6-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight              1        0       1
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                        0        1       1
6-24 months   ki1114097-CMIN             PERU                           Low birth weight                        1        0       1
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      127     168
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1       41     168
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                        0        0     168
6-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                        1        0     168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0      769    1053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1       66    1053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        0      210    1053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                        1        8    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0       89     110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1        4     110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        0       16     110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                        1        1     110
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0      550     799
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1        0     799
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                        0      249     799
6-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                        1        0     799
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      372     918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      403     918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        0       86     918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                        1       57     918
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     2812    5659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1        0    5659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        0     2847    5659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                        1        0    5659
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0     1337    2556
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      233    2556
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        0      842    2556
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                        1      144    2556


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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/dab29135-2a50-48b5-836c-b65404dbf308/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dab29135-2a50-48b5-836c-b65404dbf308/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dab29135-2a50-48b5-836c-b65404dbf308/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dab29135-2a50-48b5-836c-b65404dbf308/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5974026   0.4767305   0.7180747
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6904762   0.5765104   0.8044420
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6333333   0.5349959   0.7316708
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.5434783   0.3957418   0.6912148
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6433824   0.5810822   0.7056825
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.5740741   0.4521081   0.6960401
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6006826   0.5391772   0.6621880
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.5544554   0.4571369   0.6517740
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3973510   0.3100648   0.4846372
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4433962   0.3454709   0.5413216
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3603239   0.3138121   0.4068357
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.4164038   0.3631200   0.4696875
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5568182   0.4381958   0.6754406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.4634146   0.3527951   0.5740342
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.5568862   0.4762713   0.6375011
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.6142857   0.5353806   0.6931908
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.6280488   0.5466466   0.7094509
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.6190476   0.5494594   0.6886359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6325301   0.5935887   0.6714715
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.5128205   0.3457617   0.6798793
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5763501   0.5439874   0.6087128
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.3623188   0.2767128   0.4479249
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.5224673   0.5023020   0.5426326
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.5946429   0.5663890   0.6228967
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.5091575   0.4487028   0.5696122
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.5531915   0.4020134   0.7043696
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2184713   0.1974762   0.2394664
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.3181818   0.2891560   0.3472077
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6129985   0.5850793   0.6409178
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.5806452   0.5291124   0.6321779
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3706597   0.3543789   0.3869406
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4670323   0.4519465   0.4821181
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2449079   0.2166913   0.2731244
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3236460   0.2909149   0.3563770
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6896552   0.5686497   0.8106606
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.6842105   0.4652436   0.9031774
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6802326   0.6090741   0.7513910
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.6451613   0.4757573   0.8145652
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6388889   0.5666963   0.7110815
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.6271186   0.5019132   0.7523241
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5606061   0.4371802   0.6840319
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.5714286   0.4206166   0.7222405
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4516129   0.3784623   0.5247636
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.5909091   0.5137502   0.6680680
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7073171   0.5672741   0.8473601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6400000   0.5062161   0.7737839
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7912088   0.7060810   0.8763366
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.7849462   0.7047018   0.8651907
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8737864   0.8089246   0.9386482
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.9157895   0.8592324   0.9723466
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7079365   0.6569927   0.7588803
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.6000000   0.3803796   0.8196204
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.6783217   0.6241467   0.7324966
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5625000   0.4250225   0.6999775
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7520149   0.7309713   0.7730584
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7294900   0.7004812   0.7584989
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7500000   0.6868206   0.8131794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.8333333   0.6990149   0.9676518
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3362745   0.3072733   0.3652757
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4318508   0.3950670   0.4686346
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7374784   0.7014084   0.7735484
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.7365269   0.6703244   0.8027295
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6248780   0.6039087   0.6458474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.7151922   0.6981100   0.7322744
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.5528455   0.4906531   0.6150379
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.6553030   0.5979162   0.7126898
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4166667   0.2366516   0.5966817
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.5652174   0.3837563   0.7466785
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5806452   0.4386213   0.7226690
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4444444   0.2342860   0.6546029
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5800000   0.4772980   0.6827020
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4782609   0.2652419   0.6912798
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5398230   0.4413695   0.6382765
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4523810   0.2961437   0.6086182
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2705882   0.1743827   0.3667937
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.3593750   0.2416373   0.4771127
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3051948   0.2519372   0.3584524
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2515337   0.1844274   0.3186401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4255319   0.2690411   0.5820227
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1875000   0.0693596   0.3056404
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2763158   0.1730064   0.3796251
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2765957   0.1446062   0.4085853
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.5644699   0.5109407   0.6179992
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.4210526   0.1645464   0.6775589
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5393401   0.5021647   0.5765155
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2555556   0.1568044   0.3543067
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0790419   0.0609182   0.0971656
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0366972   0.0116831   0.0617114
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5200000   0.4827597   0.5572403
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.3986014   0.3167614   0.4804414
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1484076   0.1234736   0.1733417
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.1460446   0.1158801   0.1762092


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6302521   0.5419905   0.7185137
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6084337   0.5263180   0.6905495
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5888325   0.5365454   0.6411196
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822441   0.3470621   0.4174262
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5117647   0.4302715   0.5932579
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258890   0.5879514   0.6638267
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5519802   0.5212828   0.5826776
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5451233   0.5286432   0.5616034
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5156250   0.4594779   0.5717721
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2559618   0.2388022   0.2731215
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6069712   0.5823178   0.6316245
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4229675   0.4118348   0.4341003
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2782438   0.2567862   0.2997015
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6883117   0.5823564   0.7942670
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6359833   0.5734338   0.6985327
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6703297   0.5732092   0.7674502
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7014925   0.6517566   0.7512285
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6616766   0.6110579   0.7122953
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7439364   0.7268897   0.7609830
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7619048   0.7043195   0.8194900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3750728   0.3521661   0.3979795
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7372654   0.7055895   0.7689413
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6760414   0.6627031   0.6893798
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4745763   0.3430726   0.6060800
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5393258   0.4214529   0.6571988
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3291139   0.2187678   0.4394600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5570652   0.5044805   0.6096499
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5102506   0.4747348   0.5457664
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0702754   0.0549673   0.0855835
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5010893   0.4669869   0.5351918
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1474961   0.1282628   0.1667294


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1557971   0.8898058   1.5013017
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.8581236   0.6275272   1.1734569
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8922751   0.7065214   1.1268660
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.9230423   0.7533835   1.1309075
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1158805   0.8171667   1.5237885
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.1556375   0.9635658   1.3859956
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.8322549   0.6042340   1.1463244
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.1030722   0.9088152   1.3388511
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    0.9856681   0.8300929   1.1704009
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.8107448   0.5819861   1.1294206
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.6286437   0.4930947   0.8014544
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.1381436   1.0705472   1.2100082
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.0864840   0.8065155   1.4636389
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.4564007   1.2756616   1.6627475
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.9472211   0.8572690   1.0466118
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.2600028   1.1931444   1.3306077
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3215010   1.1336758   1.5404446
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.9921053   0.6887362   1.4290999
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.9484422   0.7149172   1.2582474
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.9815770   0.7803363   1.2347156
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.0193050   0.7228054   1.4374308
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.3084416   1.0626614   1.6110676
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.9048276   0.6784599   1.2067227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    0.9920848   0.8552503   1.1508120
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.0480702   0.9515991   1.1543213
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.8475336   0.5836432   1.2307403
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.8292526   0.6412365   1.0723966
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.9700473   0.9240074   1.0183813
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.1111111   0.9263461   1.3327286
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.2842210   1.1376196   1.4497145
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.9987098   0.9015664   1.1063205
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1445309   1.0983458   1.1926581
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1853275   1.0278367   1.3669500
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3565217   0.7920526   2.3232691
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.7654321   0.4496870   1.3028758
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8245877   0.5106027   1.3316515
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.8380172   0.5669896   1.2385991
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.3281250   0.8185873   2.1548295
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    0.8241744   0.5991974   1.1336222
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.4406250   0.2122756   0.9146146
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.0010132   0.5459290   1.8354537
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.7459257   0.4026578   1.3818315
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.4738301   0.3199910   0.7016288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.4642758   0.2261753   0.9530307
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.7665412   0.6167333   0.9527381
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    0.9840775   0.7540274   1.2843148


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0328495   -0.0276324    0.0933314
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0248996   -0.0745785    0.0247793
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0114805   -0.0345278    0.0115668
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0118501   -0.0415402    0.0178400
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0189914   -0.0350257    0.0730085
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0219203   -0.0057454    0.0495859
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0450535   -0.1232802    0.0331732
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0261757   -0.0256555    0.0780069
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0042546   -0.0548785    0.0463694
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0066411   -0.0162062    0.0029240
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0243699   -0.0359797   -0.0127601
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0226560    0.0116562    0.0336558
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0064675   -0.0175440    0.0304790
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0374905    0.0238868    0.0510942
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0060274   -0.0169242    0.0048694
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0523078    0.0402127    0.0644029
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0333360    0.0149401    0.0517319
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0013435   -0.0630803    0.0603933
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0053557   -0.0335359    0.0228245
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0029056   -0.0386202    0.0328090
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0042088   -0.0715633    0.0799809
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0630930    0.0144508    0.1117351
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0369874   -0.1436272    0.0696524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0031653   -0.0622909    0.0559603
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0201530   -0.0212303    0.0615363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0064440   -0.0201935    0.0073055
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0166450   -0.0382988    0.0050087
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0080785   -0.0209383    0.0047813
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0119048   -0.0096709    0.0334804
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0387983    0.0196542    0.0579423
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0002130   -0.0170900    0.0166640
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0511634    0.0357882    0.0665386
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0530368    0.0090065    0.0970672
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0579096   -0.0432300    0.1590492
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0413193   -0.1195444    0.0369058
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0190244   -0.0636579    0.0256091
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0236940   -0.0748046    0.0274167
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0381366   -0.0272138    0.1034870
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0185706   -0.0483109    0.0111697
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0964180   -0.1841562   -0.0086798
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0001070   -0.0639461    0.0641600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0074047   -0.0214410    0.0066316
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0290895   -0.0420805   -0.0160985
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0087665   -0.0152510   -0.0022820
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0189107   -0.0333502   -0.0044711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0009116   -0.0160120    0.0141889


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0521212   -0.0515027    0.1455332
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0409241   -0.1257279    0.0374913
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0181682   -0.0551987    0.0175628
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0201247   -0.0717456    0.0290097
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0456149   -0.0941049    0.1674921
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0573462   -0.0185558    0.1275920
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0880355   -0.2512299    0.0538738
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0448935   -0.0488651    0.1302709
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0068205   -0.0912034    0.0710371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0106106   -0.0260358    0.0045826
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0441499   -0.0656456   -0.0230879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0415612    0.0210792    0.0616147
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0125430   -0.0351219    0.0580130
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1464691    0.0915335    0.1980827
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0099302   -0.0280076    0.0078293
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1236686    0.0944744    0.1519216
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1198085    0.0504883    0.1840680
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0019519   -0.0957926    0.0838526
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0079358   -0.0505852    0.0329821
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0045687   -0.0623239    0.0500465
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0074516   -0.1362345    0.1329674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1225806    0.0215427    0.2131852
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0551779   -0.2276493    0.0930631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0040167   -0.0819047    0.0682640
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0225440   -0.0250709    0.0679472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0091861   -0.0290217    0.0102672
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0251558   -0.0585547    0.0071892
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0108591   -0.0283034    0.0062892
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0156250   -0.0132322    0.0436603
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1034420    0.0508888    0.1530854
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0002889   -0.0234440    0.0223423
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0756809    0.0525112    0.0982840
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0875365    0.0113883    0.1578194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1220238   -0.1303429    0.3180457
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0766129   -0.2328192    0.0598010
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0339130   -0.1168578    0.0428717
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0459071   -0.1500380    0.0487952
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1235294   -0.1160943    0.3117063
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0647908   -0.1734438    0.0338017
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2929624   -0.5824394   -0.0564396
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0003870   -0.2603930    0.2072106
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0132923   -0.0389212    0.0117043
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0570103   -0.0833031   -0.0313557
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1247451   -0.2174589   -0.0390918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0377391   -0.0670357   -0.0092469
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0061802   -0.1139159    0.0911355
