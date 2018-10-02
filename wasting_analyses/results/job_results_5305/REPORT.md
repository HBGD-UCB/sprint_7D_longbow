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
![](/tmp/83e0f217-262d-4dc3-b5a0-60a796edc0c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/83e0f217-262d-4dc3-b5a0-60a796edc0c1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/83e0f217-262d-4dc3-b5a0-60a796edc0c1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/83e0f217-262d-4dc3-b5a0-60a796edc0c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5974026   0.4767305   0.7180747
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6904762   0.5765104   0.8044420
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6323335   0.5340913   0.7305758
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.5462604   0.3990300   0.6934909
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6437797   0.5816403   0.7059190
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.5708580   0.4531409   0.6885752
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6045616   0.5438164   0.6653067
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.5694859   0.4791952   0.6597766
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4003943   0.3172758   0.4835128
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.4499422   0.3608018   0.5390826
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3539207   0.3081909   0.3996504
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.3988290   0.3475726   0.4500854
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.6195976   0.5071819   0.7320134
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.5422840   0.4422323   0.6423358
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.5660459   0.4928212   0.6392706
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.6206819   0.5491651   0.6921988
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.6270294   0.5461109   0.7079479
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.6202472   0.5511773   0.6893172
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6330884   0.5941332   0.6720436
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.6834223   0.5410484   0.8257962
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5744802   0.5423174   0.6066430
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2858589   0.2166061   0.3551116
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.5256066   0.5056223   0.5455909
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.5964505   0.5691167   0.6237843
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.5098159   0.4495452   0.5700865
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.5624536   0.4244871   0.7004200
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2207890   0.2000296   0.2415485
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.3220418   0.2938278   0.3502559
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6154682   0.5877893   0.6431470
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.5998888   0.5530344   0.6467432
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3705504   0.3546095   0.3864914
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4678422   0.4529977   0.4826866
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2453522   0.2173338   0.2733706
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.3239262   0.2915598   0.3562925
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6896552   0.5686497   0.8106606
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.6842105   0.4652436   0.9031774
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6802402   0.6093264   0.7511540
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.6364800   0.4793548   0.7936053
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6388889   0.5666963   0.7110815
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.6271186   0.5019132   0.7523241
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5694270   0.4508911   0.6879629
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.5753529   0.4320542   0.7186516
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4707599   0.4012295   0.5402903
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.6104661   0.5382814   0.6826508
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7399076   0.6123302   0.8674850
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.6718621   0.5445390   0.7991853
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7827407   0.7008734   0.8646079
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.7704462   0.6899768   0.8509156
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8737864   0.8089246   0.9386482
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.9157895   0.8592324   0.9723466
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7079365   0.6569927   0.7588803
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.6000000   0.3803796   0.8196204
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.6814907   0.6277963   0.7351852
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.6692155   0.5501376   0.7882935
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7523136   0.7314051   0.7732221
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7304270   0.7019782   0.7588759
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7500000   0.6868206   0.8131794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.8333333   0.6990149   0.9676518
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3378709   0.3090661   0.3666757
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4366859   0.4003258   0.4730461
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7395141   0.7039642   0.7750641
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.7546499   0.6969848   0.8123150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6295783   0.6091872   0.6499694
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.7197254   0.7030013   0.7364495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.5515363   0.4906210   0.6124515
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.6522799   0.5956490   0.7089107
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4150848   0.2351825   0.5949871
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.5677428   0.3882923   0.7471932
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5781819   0.4367429   0.7196209
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4501301   0.2410099   0.6592503
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5828063   0.4810545   0.6845582
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.4743703   0.2738853   0.6748552
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5470089   0.4487894   0.6452284
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.4993084   0.3445206   0.6540962
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2690702   0.1805582   0.3575823
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.3711858   0.2674375   0.4749341
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3035721   0.2513450   0.3557992
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2517575   0.1872365   0.3162786
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4255319   0.2690411   0.5820227
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1875000   0.0693596   0.3056404
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2763158   0.1730064   0.3796251
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.2765957   0.1446062   0.4085853
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.5644699   0.5109407   0.6179992
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.4210526   0.1645464   0.6775589
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5383351   0.5012340   0.5754361
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1803272   0.0971843   0.2634702
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0790419   0.0609182   0.0971656
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0366972   0.0116831   0.0617114
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5193396   0.4824959   0.5561834
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.3564561   0.2901728   0.4227394
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
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.8638802   0.6332607   1.1784863
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8867289   0.7066624   1.1126786
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.9419817   0.7808217   1.1364048
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1237478   0.8471746   1.4906127
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.1268882   0.9398351   1.3511699
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.8752197   0.6733555   1.1376005
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.0965223   0.9276465   1.2961416
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    0.9891837   0.8343740   1.1727167
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    1.0795053   0.8687864   1.3413329
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.4975957   0.3881006   0.6379828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.1347850   1.0693685   1.2042033
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.1032485   0.8402413   1.4485804
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.4585951   1.2833618   1.6577551
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.9746869   0.8908575   1.0664047
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.2625600   1.1969645   1.3317503
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3202496   1.1344992   1.5364127
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.9921053   0.6887362   1.4290999
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.9356696   0.7169751   1.2210710
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.9815770   0.7803363   1.2347156
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.0104069   0.7300760   1.3983777
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.2967674   1.0745402   1.5649538
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.9080352   0.6985762   1.1802979
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    0.9842931   0.8490878   1.1410279
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    1.0480702   0.9515991   1.1543213
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.8475336   0.5836432   1.2307403
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.9819877   0.8095897   1.1910971
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.9709077   0.9256056   1.0184270
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    1.1111111   0.9263461   1.3327286
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.2924638   1.1477544   1.4554184
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.0204671   0.9327269   1.1164610
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1431865   1.0986202   1.1895607
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    1.1826600   1.0275854   1.3611372
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    1.3677754   0.8019274   2.3328915
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    0.7785268   0.4615804   1.3131058
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8139416   0.5164794   1.2827247
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.9127977   0.6367127   1.3085959
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.3795126   0.8950141   2.1262850
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    0.8293171   0.6110186   1.1256072
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    0.4406250   0.2122756   0.9146146
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    1.0010132   0.5459290   1.8354537
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    0.7459257   0.4026578   1.3818315
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    0.3349721   0.2102147   0.5337702
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.4642758   0.2261753   0.9530307
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    0.6863641   0.5625422   0.8374407
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    0.9840775   0.7540274   1.2843148


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0328495   -0.0276324    0.0933314
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0238998   -0.0733487    0.0255491
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0118778   -0.0347760    0.0110203
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0157291   -0.0450892    0.0136310
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0159481   -0.0343391    0.0662354
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0283235    0.0011586    0.0554884
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1078329   -0.1864868   -0.0291790
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0170160   -0.0281432    0.0621752
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0032352   -0.0533863    0.0469160
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0071993   -0.0169448    0.0025462
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0225000   -0.0339267   -0.0110734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0195167    0.0086774    0.0303560
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0058091   -0.0181338    0.0297521
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0351728    0.0217750    0.0485706
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0084970   -0.0192319    0.0022379
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0524171    0.0405302    0.0643040
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0328916    0.0146113    0.0511720
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0013435   -0.0630803    0.0603933
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0053633   -0.0329048    0.0221782
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0029056   -0.0386202    0.0328090
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0046121   -0.0775717    0.0683475
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0439460   -0.0018821    0.0897741
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0695779   -0.1718446    0.0326887
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0053028   -0.0523169    0.0629225
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0201530   -0.0212303    0.0615363
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0064440   -0.0201935    0.0073055
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0198141   -0.0410055    0.0013773
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0083772   -0.0211374    0.0043830
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0119048   -0.0096709    0.0334804
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0372019    0.0182632    0.0561406
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0022487   -0.0187871    0.0142896
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0464631    0.0315430    0.0613832
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0543461    0.0111211    0.0975710
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0594915   -0.0407330    0.1597160
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0388561   -0.1163380    0.0386258
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0218307   -0.0659386    0.0222772
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0308798   -0.0828402    0.0210806
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0396546   -0.0220044    0.1013136
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0169479   -0.0456926    0.0117969
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0964180   -0.1841562   -0.0086798
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0001070   -0.0639461    0.0641600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0074047   -0.0214410    0.0066316
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0280845   -0.0408939   -0.0152751
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0087665   -0.0152510   -0.0022820
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0182503   -0.0325911   -0.0039095
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0009116   -0.0160120    0.0141889


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0521212   -0.0515027    0.1455332
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0392808   -0.1236754    0.0387752
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0187970   -0.0555885    0.0167122
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0267123   -0.0777875    0.0219424
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0383054   -0.0906918    0.1520459
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0740979   -0.0005621    0.1431869
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2107080   -0.3792502   -0.0627614
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0291839   -0.0515565    0.1037248
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0051863   -0.0887866    0.0719950
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0115026   -0.0272255    0.0039797
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0407624   -0.0619227   -0.0200237
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0358024    0.0156500    0.0555422
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0112662   -0.0362486    0.0566023
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1374142    0.0835045    0.1881529
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0139990   -0.0318023    0.0034971
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1239270    0.0953138    0.1516351
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1182115    0.0494436    0.1820045
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0019519   -0.0957926    0.0838526
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0079471   -0.0496107    0.0320627
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0045687   -0.0623239    0.0500465
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0081658   -0.1460338    0.1131167
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0853808   -0.0083450    0.1703947
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1037966   -0.2713595    0.0416819
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0067291   -0.0691458    0.0772193
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0225440   -0.0250709    0.0679472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0091861   -0.0290217    0.0102672
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0299453   -0.0627003    0.0018002
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0112606   -0.0285710    0.0057583
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0156250   -0.0132322    0.0436603
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0991858    0.0472625    0.1482793
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0030501   -0.0257369    0.0191349
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0687282    0.0462991    0.0906299
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0896974    0.0151123    0.1586342
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1253570   -0.1253820    0.3202305
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0720456   -0.2266596    0.0630800
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0389156   -0.1210329    0.0371865
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0598297   -0.1660615    0.0367241
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.1284464   -0.0922802    0.3045689
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0591293   -0.1641659    0.0364304
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2929624   -0.5824394   -0.0564396
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0003870   -0.2603930    0.2072106
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0132923   -0.0389212    0.0117043
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0550406   -0.0809515   -0.0297508
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1247451   -0.2174589   -0.0390918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0364213   -0.0655785   -0.0080619
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0061802   -0.1139159    0.0911355
