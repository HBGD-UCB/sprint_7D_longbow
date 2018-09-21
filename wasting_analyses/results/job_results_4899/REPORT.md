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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/06b98cad-0d10-4705-8938-19161e732e46/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06b98cad-0d10-4705-8938-19161e732e46/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06b98cad-0d10-4705-8938-19161e732e46/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06b98cad-0d10-4705-8938-19161e732e46/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5969236   0.4762536   0.7175937
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6912565   0.5776290   0.8048841
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6320266   0.5347737   0.7292794
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.5465928   0.4043227   0.6888629
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6433824   0.5810822   0.7056825
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.5740741   0.4521081   0.6960401
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6056239   0.5450454   0.6662024
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.5706236   0.4814032   0.6598440
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3977813   0.3156248   0.4799379
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4424788   0.3548178   0.5301397
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3541211   0.3082400   0.4000022
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.3992076   0.3474862   0.4509291
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.6316082   0.5218167   0.7413998
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.5651787   0.4695243   0.6608332
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.5582652   0.4803461   0.6361842
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.6130075   0.5365075   0.6895076
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.6231726   0.5440116   0.7023335
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.6247722   0.5575063   0.6920381
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6331728   0.5942315   0.6721141
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.6777582   0.5369952   0.8185213
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5743973   0.5422308   0.6065638
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2860771   0.2166222   0.3555320
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.5253120   0.5052723   0.5453517
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.5970854   0.5694877   0.6246831
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.5102673   0.4501327   0.5704019
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.5654159   0.4343532   0.6964786
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2208349   0.2000815   0.2415883
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.3215428   0.2932831   0.3498025
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6149844   0.5872258   0.6427429
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.5975268   0.5495373   0.6455164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3701235   0.3541776   0.3860694
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4680461   0.4531994   0.4828928
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2454250   0.2174273   0.2734227
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3239399   0.2916152   0.3562646
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6896552   0.5686497   0.8106606
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.6842105   0.4652436   0.9031774
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6802448   0.6093881   0.7511015
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.6342249   0.4800761   0.7883736
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6403747   0.5683076   0.7124417
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.6448859   0.5231653   0.7666064
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5690919   0.4499190   0.6882649
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.5770397   0.4330261   0.7210534
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4705214   0.3996684   0.5413745
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.6066938   0.5324750   0.6809125
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7093769   0.5753004   0.8434533
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6480232   0.5165194   0.7795270
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7842537   0.7020846   0.8664227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.7732962   0.6934167   0.8531758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8737864   0.8089246   0.9386482
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.9157895   0.8592324   0.9723466
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7079365   0.6569927   0.7588803
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.6000000   0.3803796   0.8196204
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.6819300   0.6285278   0.7353323
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.6722020   0.5667172   0.7776868
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7523139   0.7313916   0.7732362
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7304044   0.7019047   0.7589042
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7500000   0.6868206   0.8131794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.8333333   0.6990149   0.9676518
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3381659   0.3092769   0.3670549
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4370506   0.4005384   0.4735628
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7399711   0.7044401   0.7755021
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.7568910   0.6997328   0.8140493
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6297689   0.6094045   0.6501332
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.7200347   0.7033187   0.7367507
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.5326397   0.4715483   0.5937310
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.6370927   0.5806374   0.6935480
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4155268   0.2356408   0.5954129
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.5670322   0.3871202   0.7469443
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5797766   0.4379848   0.7215685
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4464603   0.2367578   0.6561627
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5814496   0.4792989   0.6836003
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4762594   0.2695072   0.6830116
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5398230   0.4413695   0.6382765
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4523810   0.2961437   0.6086182
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2691209   0.1808063   0.3574356
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.3656369   0.2621248   0.4691490
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3053097   0.2523631   0.3582563
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2509327   0.1844947   0.3173706
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4255319   0.2690411   0.5820227
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1875000   0.0693596   0.3056404
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2873261   0.1844244   0.3902278
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.3055163   0.1740657   0.4369670
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.5644699   0.5109407   0.6179992
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.4210526   0.1645464   0.6775589
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5381936   0.5011300   0.5752571
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1773953   0.0993235   0.2554670
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0790419   0.0609182   0.0971656
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0366972   0.0116831   0.0617114
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5193013   0.4824370   0.5561657
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.3579784   0.2911443   0.4248125
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1580318   0.8919883   1.5034252
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.8648256   0.6409935   1.1668189
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8922751   0.7065214   1.1268660
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.9422078   0.7826793   1.1342520
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1123668   0.8397799   1.4734335
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.1273197   0.9392611   1.3530313
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.8948248   0.6983684   1.1465459
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.0980580   0.9138052   1.3194622
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.0025669   0.8504809   1.1818495
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.0704159   0.8620468   1.3291509
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.4980475   0.3882519   0.6388927
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.1366301   1.0705782   1.2067572
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.1080778   0.8543198   1.4372093
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.4560324   1.2810294   1.6549428
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.9716130   0.8862776   1.0651649
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.2645672   1.1987958   1.3339472
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3199138   1.1344012   1.5357640
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.9921053   0.6887362   1.4290999
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.9323479   0.7172729   1.2119135
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.0070446   0.8083664   1.2545534
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.0139657   0.7317678   1.4049901
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.2894074   1.0635694   1.5631997
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.9135105   0.6896115   1.2101036
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    0.9860282   0.8511143   1.1423279
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.0480702   0.9515991   1.1543213
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.8475336   0.5836432   1.2307403
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.9857345   0.8289426   1.1721832
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.9708772   0.9254932   1.0184868
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.1111111   0.9263461   1.3327286
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.2924147   1.1471416   1.4560850
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.0228657   0.9355866   1.1182867
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1433317   1.0988295   1.1896362
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1961045   1.0343082   1.3832104
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3646105   0.7994553   2.3292881
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.7700556   0.4540284   1.3060541
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8190897   0.5134384   1.3066961
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.8380172   0.5669896   1.2385991
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.3586342   0.8802490   2.0970052
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    0.8218955   0.5997867   1.1262539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.4406250   0.2122756   0.9146146
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.0633087   0.6068758   1.8630260
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.7459257   0.4026578   1.3818315
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.3296124   0.2112003   0.5144139
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.4642758   0.2261753   0.9530307
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.6893462   0.5645826   0.8416806
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    0.9840775   0.7540274   1.2843148


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0333285   -0.0270376    0.0936945
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0235928   -0.0720899    0.0249042
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0114805   -0.0345278    0.0115668
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0167914   -0.0461034    0.0125205
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0185611   -0.0313782    0.0685003
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0281231    0.0008732    0.0553729
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1198435   -0.1997697   -0.0399174
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0247967   -0.0241857    0.0737792
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0006217   -0.0478965    0.0491398
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0072837   -0.0169833    0.0024158
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0224171   -0.0338419   -0.0109922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0198113    0.0089150    0.0307076
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0053577   -0.0185515    0.0292668
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0351269    0.0217477    0.0485062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0080132   -0.0187600    0.0027335
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0528440    0.0409505    0.0647374
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0328188    0.0145461    0.0510916
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0013435   -0.0630803    0.0603933
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0053680   -0.0327612    0.0220253
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0043914   -0.0401212    0.0313384
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0042771   -0.0775696    0.0690153
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0441845   -0.0023780    0.0907469
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0390472   -0.1428387    0.0647442
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0037898   -0.0537446    0.0613243
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0201530   -0.0212303    0.0615363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0064440   -0.0201935    0.0073055
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0202534   -0.0412327    0.0007259
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0083775   -0.0211540    0.0043990
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0119048   -0.0096709    0.0334804
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0369069    0.0178855    0.0559283
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0027057   -0.0192857    0.0138743
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0462726    0.0313735    0.0611716
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0732427    0.0293620    0.1171234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0590494   -0.0413519    0.1594508
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0404508   -0.1183636    0.0374620
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0204740   -0.0647860    0.0238381
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0236940   -0.0748046    0.0274167
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0396039   -0.0220829    0.1012907
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0186855   -0.0480595    0.0106885
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0964180   -0.1841562   -0.0086798
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0109033   -0.0750908    0.0532841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0074047   -0.0214410    0.0066316
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0279430   -0.0407280   -0.0151580
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0087665   -0.0152510   -0.0022820
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0182120   -0.0325402   -0.0038838
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0009116   -0.0160120    0.0141889


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0528812   -0.0506008    0.1461704
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0387763   -0.1215500    0.0378884
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0181682   -0.0551987    0.0175628
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0285165   -0.0795218    0.0200789
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0445813   -0.0834556    0.1574874
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0735736   -0.0013494    0.1428906
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2341770   -0.4087279   -0.0812542
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0425285   -0.0457503    0.1233551
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0009966   -0.0799084    0.0758403
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0116374   -0.0272867    0.0037734
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0406121   -0.0617669   -0.0198788
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0363428    0.0160794    0.0561889
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0103906   -0.0370489    0.0556600
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1372350    0.0833986    0.1879093
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0132020   -0.0310227    0.0043107
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1249363    0.0963046    0.1526608
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1179499    0.0492255    0.1817068
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0019519   -0.0957926    0.0838526
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0079540   -0.0493890    0.0318449
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0069049   -0.0646858    0.0477401
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0075726   -0.1461008    0.1142118
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0858441   -0.0096910    0.1723398
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0582508   -0.2263297    0.0867915
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0048092   -0.0709471    0.0752066
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0225440   -0.0250709    0.0679472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0091861   -0.0290217    0.0102672
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0306092   -0.0630675    0.0008582
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0112611   -0.0285936    0.0057794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0156250   -0.0132322    0.0436603
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0983993    0.0462344    0.1477111
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0036699   -0.0264152    0.0185713
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0684464    0.0460512    0.0903158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1208860    0.0448476    0.1908711
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1244256   -0.1265584    0.3194933
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0750025   -0.2305405    0.0608758
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0364971   -0.1189192    0.0398537
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0459071   -0.1500380    0.0487952
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1282822   -0.0923908    0.3043772
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0651917   -0.1724805    0.0322796
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2929624   -0.5824394   -0.0564396
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0394445   -0.3002018    0.1690176
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0132923   -0.0389212    0.0117043
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0547633   -0.0806312   -0.0295145
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1247451   -0.2174589   -0.0390918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0363448   -0.0654709   -0.0080149
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0061802   -0.1139159    0.0911355
