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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        enwast    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0       82     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    1       97     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       22     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       16     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    0      172     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                    1       28     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    0        6     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0       78     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    1       97     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0       23     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    1       11     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0      142     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    1       46     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0       15     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    1        9     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    0      113     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                    1      148     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    0        2     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    1        3     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      129     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1      132     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       41     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      177     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     219
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      196     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       72     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0       98     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    1      134     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0       48     358
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    1       78     358
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0       31     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    1      189     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0        2     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    1       27     249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0       79     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    1       84     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0       18     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    1       21     202
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0      428    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    1      544    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0       45    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    1       73    1090
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       62     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1      149     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       10     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       36     257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    0      142     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    1      233     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    0       69     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    1       86     530
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      318     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    1      185     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       78     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       53     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      294     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      190     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      102     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       67     653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1473    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      621    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       90    2228
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       44    2228
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0     1362    2593
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    1     1114    2593
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0       58    2593
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    1       59    2593
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      147     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       91     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     239
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     1857    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      369    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      225    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       82    2533
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0      164     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1      281     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0       32     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1       58     535
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0       35     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    1      120     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0        6     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    1        7     168
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         0                    0       73     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         0                    1       33     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         1                    0        6     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         1                    1        2     114
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0      838    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    1      369    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0       23    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       15    1245
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0      547     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    1      225     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0       17     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    1       14     803
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                    0      151     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                    1       45     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                    0        1     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                    1        0     197
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0    11325   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    1     2207   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0     2742   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    1      468   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     7242   12544
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     3150   12544
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1215   12544
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      937   12544
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    0      237     971
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    1      533     971
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    0       57     971
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    1      144     971
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0     3848    6492
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    1     1481    6492
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0      816    6492
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    1      347    6492
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    0      787    2831
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    1     1593    2831
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    0      162    2831
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    1      289    2831
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                    0      302     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                    1      221     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    0        3     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    1        5     531
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    12282   18464
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     4093   18464
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1501   18464
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      588   18464
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2092    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1463    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      185    3884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      144    3884
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0      139     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    1       40     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       32     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    1        6     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    0      180     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                    1       20     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    0        7     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0      136     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    1       39     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0       29     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    1        5     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    0      176     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                    1       12     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    0       22     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                    1        2     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    0      170     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                    1       91     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    0        4     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                    1        1     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      184     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       77     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       17     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      153     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       65     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     219
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      135     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       80     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       45     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       32     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0      156     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    1       76     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0       79     358
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1       47     358
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0       92     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    1      128     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0        7     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    1       22     249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0       93     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    1       70     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0       21     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    1       18     202
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0      792    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    1      180    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0       87    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    1       30    1089
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      208     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        3     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       46     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     257
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    0      293     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    1       82     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    0      116     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    1       39     530
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      429     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       74     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      104     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       27     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      397     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       87     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      132     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       37     653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1810    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      284    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      113    2228
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    2228
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0     1645    2232
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    1      501    2232
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0       48    2232
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    1       38    2232
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      202     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                    1       21     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                    0        0     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     223
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0      357     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1       88     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0       78     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1       12     535
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0      113     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    1       42     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0        7     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    1        6     168
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         0                    0       97     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         0                    1        9     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         1                    0        7     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         1                    1        1     114
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  0                    0      796     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  0                    1       22     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  1                    0       23     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        0     841
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0      585     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    1       42     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0       24     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    1        7     658
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                    0      166     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                    1       30     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                    0        1     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                    1        0     197
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0    12209   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    1     1321   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0     3003   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    1      207   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     8877   12530
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1503   12530
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1509   12530
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      641   12530
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    0      528     879
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    1      152     879
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    0      158     879
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    1       41     879
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0     4807    6297
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    1      346    6297
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0     1029    6297
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    1      115    6297
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    0     1938    2831
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    1      442    2831
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    0      358    2831
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    1       93    2831
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                    0      171     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                    1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                    0        4     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                    1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0    14304   18420
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2030   18420
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1700   18420
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      386   18420
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     3067    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      277    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      277    3657
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       36    3657
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0       73     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    1       57     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0       19     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    1       10     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    0      152     167
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                    1        8     167
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    0        6     167
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                    1        1     167
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0       68     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    1       58     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0       23     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    1        6     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0      141     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    1       34     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0       13     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    1        7     195
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    0       88     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                    1       57     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    0        2     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                    1        2     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       92     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       55     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        9     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        3     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      112     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      116     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6     184
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       40     184
6-24 months                  ki1000108-IRC              INDIA                          0                    0       98     235
6-24 months                  ki1000108-IRC              INDIA                          0                    1       58     235
6-24 months                  ki1000108-IRC              INDIA                          1                    0       48     235
6-24 months                  ki1000108-IRC              INDIA                          1                    1       31     235
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0       29      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                    1       61      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0        2      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                    1        5      97
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    0       61      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    1       14      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    0       17      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    1        3      95
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0      365     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    1      365     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0       39     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    1       44     813
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       53     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    1      148     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        6     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       36     243
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    0      100     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    1      151     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    0       47     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    1       47     345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0      259     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    1      111     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0       61     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    1       26     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      275     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      103     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       98     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       30     506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1160    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      337    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       76    1596
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       23    1596
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0     1243    2015
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    1      683    2015
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0       49    2015
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    1       40    2015
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                    0      120     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                    1       74     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                    0        1     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     195
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     1857    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      859    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      225    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1      324    3265
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0      156     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1      193     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0       31     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1       46     426
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    0       28     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    1       78     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    0        4     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    1        1     111
6-24 months                  ki1114097-CMIN             BRAZIL                         0                    0       73     104
6-24 months                  ki1114097-CMIN             BRAZIL                         0                    1       24     104
6-24 months                  ki1114097-CMIN             BRAZIL                         1                    0        6     104
6-24 months                  ki1114097-CMIN             BRAZIL                         1                    1        1     104
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    0      825    1345
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    1      467    1345
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    0       21    1345
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    1       32    1345
6-24 months                  ki1114097-CMIN             PERU                           0                    0      505     797
6-24 months                  ki1114097-CMIN             PERU                           0                    1      266     797
6-24 months                  ki1114097-CMIN             PERU                           1                    0       17     797
6-24 months                  ki1114097-CMIN             PERU                           1                    1        9     797
6-24 months                  ki1114097-CONTENT          PERU                           0                    0      151     167
6-24 months                  ki1114097-CONTENT          PERU                           0                    1       15     167
6-24 months                  ki1114097-CONTENT          PERU                           1                    0        1     167
6-24 months                  ki1114097-CONTENT          PERU                           1                    1        0     167
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0    11092   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    1      888   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0     2710   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    1      261   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     5194    7921
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1652    7921
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      779    7921
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      296    7921
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    0      165     868
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    1      556     868
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    0       36     868
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    1      111     868
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0     3541    5701
6-24 months                  ki1135781-COHORTS          INDIA                          0                    1     1171    5701
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0      750    5701
6-24 months                  ki1135781-COHORTS          INDIA                          1                    1      239    5701
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    0      620    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    1     1151    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    0      126    2093
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    1      196    2093
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                    0      289     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                    1      427     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    0        3     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    1       11     730
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0     7389   10516
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2077   10516
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0      847   10516
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1      203   10516
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0     2084    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1261    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0      184    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    1      115    3644


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/565dac20-4a35-474a-b431-569c9d4a0ecd/20b8f93f-c92a-4553-938e-88aa840f6e22/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/565dac20-4a35-474a-b431-569c9d4a0ecd/20b8f93f-c92a-4553-938e-88aa840f6e22/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/565dac20-4a35-474a-b431-569c9d4a0ecd/20b8f93f-c92a-4553-938e-88aa840f6e22/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/565dac20-4a35-474a-b431-569c9d4a0ecd/20b8f93f-c92a-4553-938e-88aa840f6e22/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5418994   0.4687410   0.6150579
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4210526   0.2637098   0.5783955
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5542857   0.4804671   0.6281043
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3235294   0.1659021   0.4811567
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2446809   0.1830836   0.3062781
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3750000   0.1808556   0.5691444
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5057471   0.4449832   0.5665111
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2631579   0.0648027   0.4615131
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8990826   0.8590293   0.9391358
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9230769   0.8638413   0.9823125
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.5775862   0.5139376   0.6412348
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.6190476   0.5341359   0.7039593
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5153374   0.4384248   0.5922500
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5384615   0.3816151   0.6953080
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5596708   0.4959887   0.6233529
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6186441   0.5158039   0.7214843
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7061611   0.6445783   0.7677440
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7826087   0.6631799   0.9020375
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6213333   0.5721935   0.6704731
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5548387   0.4765256   0.6331518
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3677932   0.3256199   0.4099666
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4045802   0.3204660   0.4886943
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3925620   0.3490245   0.4360995
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3964497   0.3226443   0.4702551
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2965616   0.2769944   0.3161288
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3283582   0.2488273   0.4078891
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4499192   0.4303201   0.4695184
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.5042735   0.4136600   0.5948870
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1657682   0.1394465   0.1920899
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2671010   0.2047589   0.3294430
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6314607   0.5865976   0.6763238
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6444444   0.5454571   0.7434318
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7741935   0.7081741   0.8402130
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5384615   0.2666586   0.8102645
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3057167   0.2797152   0.3317181
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3947368   0.2392632   0.5502105
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                0.2914508   0.2593750   0.3235266
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                0.4516129   0.2763199   0.6269059
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1630949   0.1420852   0.1841046
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1457944   0.1237853   0.1678035
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3031178   0.2942809   0.3119547
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4354089   0.4144601   0.4563578
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6922078   0.6595886   0.7248270
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7164179   0.6540737   0.7787622
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2779133   0.2658849   0.2899417
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.2983663   0.2720684   0.3246642
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6693277   0.6504237   0.6882318
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6407982   0.5965122   0.6850842
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2499542   0.2419524   0.2579560
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2814744   0.2597053   0.3032435
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4115331   0.3925531   0.4305130
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4376900   0.3776210   0.4977589
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2234637   0.1622978   0.2846295
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1578947   0.0416893   0.2741001
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2228571   0.1610506   0.2846637
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1470588   0.0277273   0.2663903
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3720930   0.3073717   0.4368143
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4155844   0.3053193   0.5258495
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.3275862   0.2671089   0.3880635
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3730159   0.2884564   0.4575753
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5818182   0.5165071   0.6471293
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.7586207   0.6025630   0.9146784
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4294479   0.3532689   0.5056268
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4615385   0.3046920   0.6183849
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1851852   0.1631560   0.2072143
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2564103   0.1530945   0.3597261
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2186667   0.1767919   0.2605414
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2516129   0.1832340   0.3199918
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1471173   0.1161372   0.1780974
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2061069   0.1367831   0.2754307
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1797521   0.1455173   0.2139869
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2189349   0.1565415   0.2813283
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1356256   0.1209573   0.1502939
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1567164   0.0951509   0.2182819
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2334576   0.2155556   0.2513596
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.4418605   0.3368796   0.5468413
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1977528   0.1607112   0.2347944
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1333333   0.0630377   0.2036290
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2709677   0.2007882   0.3411473
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4615385   0.1897355   0.7333414
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                0.0669856   0.0474026   0.0865687
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    NA                0.2258065   0.0785106   0.3731023
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0976349   0.0825796   0.1126902
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0644860   0.0518099   0.0771620
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1447977   0.1380278   0.1515676
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2981395   0.2788029   0.3174762
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2235294   0.1921987   0.2548602
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2060302   0.1498043   0.2622560
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0671454   0.0603115   0.0739792
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.1005245   0.0830984   0.1179506
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1857143   0.1700883   0.2013403
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2062084   0.1688625   0.2435543
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1242806   0.1186273   0.1299340
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1850431   0.1665870   0.2034993
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0828349   0.0710322   0.0946377
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1150160   0.0745584   0.1554736
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4384615   0.3528954   0.5240277
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3448276   0.1712883   0.5183669
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4603175   0.3730070   0.5476279
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2068966   0.0589870   0.3548061
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1942857   0.1355156   0.2530558
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3500000   0.1404246   0.5595754
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8405797   0.7793372   0.9018222
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8695652   0.7719763   0.9671541
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3717949   0.2957948   0.4477950
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3924051   0.2845017   0.5003084
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5000000   0.4492194   0.5507806
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5301205   0.4537537   0.6064872
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7363184   0.6752779   0.7973589
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8571429   0.7510963   0.9631894
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6015936   0.5409401   0.6622472
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5000000   0.3987758   0.6012242
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3000000   0.2532553   0.3467447
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2988506   0.2025572   0.3951440
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2724868   0.2275580   0.3174156
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2343750   0.1609175   0.3078325
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2251169   0.2039530   0.2462808
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2323232   0.1491081   0.3155383
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3546210   0.3332503   0.3759916
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.4494382   0.3460672   0.5528092
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.3162739   0.2578021   0.3747457
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.5901639   0.5231968   0.6571311
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5530086   0.5007857   0.6052315
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5974026   0.4877340   0.7070711
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3614551   0.3352491   0.3876611
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.6037736   0.4720449   0.7355023
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                0.3450065   0.3114307   0.3785822
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                0.3461538   0.1631727   0.5291350
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0741235   0.0608402   0.0874068
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0878492   0.0674610   0.1082374
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2413088   0.2311726   0.2514450
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2753488   0.2486448   0.3020529
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7711512   0.7404698   0.8018326
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7551020   0.6855460   0.8246581
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2485144   0.2361743   0.2608546
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.2416582   0.2149761   0.2683404
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6499153   0.6276946   0.6721360
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6086957   0.5553767   0.6620146
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2194169   0.2096756   0.2291581
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1933333   0.1657447   0.2209220
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3769806   0.3575098   0.3964514
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3846154   0.3244118   0.4448189


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4892857   0.4306292   0.5479422
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5921788   0.5412016   0.6431559
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5660550   0.5086421   0.6234680
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2984740   0.2794692   0.3174788
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4523718   0.4332106   0.4715329
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1780497   0.1518612   0.2042383
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6336449   0.5927799   0.6745099
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3084337   0.2827691   0.3340984
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           NA                   NA                0.2976339   0.2659904   0.3292773
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3258131   0.3176111   0.3340152
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6972194   0.6683052   0.7261335
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2815773   0.2706357   0.2925189
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6647828   0.6473904   0.6821751
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2535204   0.2457292   0.2613116
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4137487   0.3955533   0.4319441
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3435754   0.2943128   0.3928380
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1928375   0.1691727   0.2165022
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1368941   0.1226179   0.1511703
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2414875   0.2237281   0.2592468
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1869159   0.1538509   0.2199809
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           NA                   NA                0.0744681   0.0543935   0.0945427
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1711093   0.1645149   0.1777037
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2195677   0.1921865   0.2469489
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0732095   0.0667753   0.0796436
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1889792   0.1745554   0.2034029
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1311618   0.1255296   0.1367940
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0855893   0.0742297   0.0969489
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8478261   0.7957850   0.8998671
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3787234   0.3165730   0.4408738
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2255639   0.2050525   0.2460753
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3588089   0.3378609   0.3797570
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3710037   0.3451775   0.3968300
6-24 months                  ki1114097-CMIN             PERU                           NA                   NA                0.3450439   0.3120195   0.3780683
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2459285   0.2364444   0.2554126
6-24 months                  ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7684332   0.7403543   0.7965121
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2473250   0.2361242   0.2585258
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6435738   0.6230503   0.6640973
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2168125   0.2074403   0.2261847
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3776070   0.3590122   0.3962019


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7769940   0.5222281   1.1560460
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.5836871   0.3522282   0.9672439
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.5326087   0.8618198   2.7254994
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.5203349   0.2425499   1.1162589
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0266876   0.9495361   1.1101078
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 1.0717839   0.8988638   1.2779698
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.0448718   0.7532174   1.4494581
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1053714   0.9056531   1.3491323
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1082580   0.9296242   1.3212174
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8929808   0.7595849   1.0498032
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1000206   0.8675341   1.3948101
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0099035   0.8131473   1.2542684
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1072175   0.8614109   1.4231660
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.1208090   0.9316060   1.3484378
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.6112921   1.2367998   2.0991773
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0205615   0.8616697   1.2087529
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.6955128   0.4168474   1.1604680
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.2911853   0.8629624   1.9319026
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0                 1.5495341   1.0351066   2.3196217
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 0.8939238   0.7718564   1.0352957
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4364348   1.3578571   1.5195597
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0349752   0.9374569   1.1426379
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.0735949   0.9731857   1.1843638
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9573759   0.8885021   1.0315885
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1261039   1.0394884   1.2199365
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0635597   0.9210072   1.2281763
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7065789   0.3222139   1.5494483
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.6598793   0.2799238   1.5555687
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1168831   0.8132510   1.5338780
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 1.1386800   0.8500283   1.5253518
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.3038793   1.0314825   1.6482115
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.0747253   0.7325085   1.5768205
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.3846154   0.9328760   2.0551067
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1506688   0.8252138   1.6044795
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4009697   0.9420786   2.0833889
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2179827   0.8645270   1.7159463
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1555077   0.7688017   1.7367261
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.8926798   1.4745269   2.4294142
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.6742424   0.3853246   1.1797919
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.7032967   0.8951384   3.2410850
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0                 3.3709677   1.6493393   6.8896823
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 0.6604809   0.5405584   0.8070083
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.0590076   1.9007929   2.2303914
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9217138   0.6782008   1.2526620
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.4971174   1.2244851   1.8304515
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.1103531   0.9093544   1.3557794
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4889137   1.3394358   1.6550729
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3884961   0.9510002   2.0272565
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7864489   0.4584042   1.3492499
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.4494649   0.2145253   0.9417011
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.8014706   0.9210392   3.5235157
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0344828   0.9049269   1.1825868
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 1.0554343   0.7492498   1.4867425
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0602410   0.8750332   1.2846494
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1640927   1.0030196   1.3510322
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8311258   0.6628951   1.0420505
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9961686   0.6964574   1.4248564
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.8601335   0.6036190   1.2256566
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0320115   0.7126184   1.4945554
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.2673762   0.9991847   1.6075532
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.8659898   1.4975911   2.3250124
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0802772   0.8787778   1.3279794
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.6703972   1.3273105   2.1021657
6-24 months                  ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           1                    0                 1.0033256   0.5861521   1.7174079
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.1851729   0.9899850   1.4188445
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1410642   1.0266210   1.2682652
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9791881   0.8857049   1.0825381
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 0.9724113   0.8615336   1.0975587
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9365769   0.8525230   1.0289180
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8811234   0.7610028   1.0202045
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0202525   0.8656790   1.2024264


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0211621   -0.0521592    0.0098349
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0375393   -0.0681288   -0.0069498
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0147531   -0.0089687    0.0384750
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0164614   -0.0322545   -0.0006684
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0063228   -0.0125586    0.0252042
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0145926   -0.0228129    0.0519980
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0044646   -0.0292862    0.0382153
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0063843   -0.0074146    0.0201832
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0136832   -0.0106341    0.0380006
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0194465   -0.0466074    0.0077143
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0076011   -0.0118758    0.0270779
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0010062   -0.0211712    0.0231836
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0019124   -0.0030236    0.0068483
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0024525   -0.0017531    0.0066582
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0122815    0.0047769    0.0197862
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0021842   -0.0161030    0.0204713
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0182412   -0.0418995    0.0054172
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0027171   -0.0021689    0.0076030
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0061831   -0.0010203    0.0133865
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0033171   -0.0078007    0.0011666
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0226954    0.0186983    0.0266924
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0050116   -0.0095667    0.0195898
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0036640   -0.0015200    0.0088480
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0045450   -0.0122256    0.0031356
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0035662    0.0010381    0.0060942
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0022157   -0.0030618    0.0074931
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0114821   -0.0347172    0.0117529
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0123308   -0.0345210    0.0098594
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0114686   -0.0223187    0.0452560
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0159892   -0.0206694    0.0526479
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0205915   -0.0003377    0.0415206
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0061957   -0.0275148    0.0399062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0076523   -0.0041242    0.0194287
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0096352   -0.0138490    0.0331194
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0121887   -0.0036105    0.0279879
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0101407   -0.0083251    0.0286066
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012685   -0.0025436    0.0050806
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0080299    0.0036018    0.0124579
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0108369   -0.0243590    0.0026852
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0147465   -0.0083076    0.0378007
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.0074824    0.0000240    0.0149409
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0063565   -0.0105438   -0.0021692
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0263116    0.0226534    0.0299699
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0039617   -0.0185418    0.0106183
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0060641    0.0026487    0.0094795
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0032649   -0.0031903    0.0097201
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0068811    0.0047286    0.0090337
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0027544   -0.0008416    0.0063503
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0170779   -0.0528156    0.0186598
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0474142   -0.0831398   -0.0116887
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0159707   -0.0073222    0.0392635
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0072464   -0.0216144    0.0361072
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0069285   -0.0374573    0.0513144
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0030750   -0.0073955    0.0135456
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0208832   -0.0010346    0.0428011
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0276806   -0.0601860    0.0048249
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0002188   -0.0205962    0.0201586
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0096409   -0.0314711    0.0121892
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004470   -0.0048798    0.0057739
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0041880   -0.0005514    0.0089273
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0460538    0.0283502    0.0637574
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0080243   -0.0139912    0.0300397
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0095486    0.0036866    0.0154107
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0000374   -0.0060315    0.0061064
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0027275   -0.0006652    0.0061202
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0046198    0.0007348    0.0085047
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0027180   -0.0155990    0.0101630
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0011894   -0.0062897    0.0039109
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0063415   -0.0152511    0.0025681
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0026044   -0.0054687    0.0002599
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0006265   -0.0045401    0.0057930


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0406387   -0.1022020    0.0174859
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0726455   -0.1345502   -0.0141185
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0568665   -0.0388056    0.1437275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0336438   -0.0666848   -0.0016262
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0069834   -0.0141204    0.0276481
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0246422   -0.0406834    0.0858672
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0085890   -0.0585267    0.0714492
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0112785   -0.0138463    0.0357807
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0190086   -0.0154916    0.0523367
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0323093   -0.0785594    0.0119575
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0202483   -0.0330413    0.0707888
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0025565   -0.0554153    0.0573441
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0064071   -0.0102676    0.0228067
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0054215   -0.0039208    0.0146769
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0689782    0.0259148    0.1101378
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0034470   -0.0258373    0.0318954
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0241300   -0.0562877    0.0070486
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0088093   -0.0071572    0.0245226
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0207742   -0.0037120    0.0446630
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0207606   -0.0483885    0.0061393
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0696576    0.0573213    0.0818324
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0071879   -0.0139507    0.0278858
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0130125   -0.0055694    0.0312510
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0068368   -0.0184611    0.0046549
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0140666    0.0040689    0.0239639
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0053551   -0.0074861    0.0180326
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0541657   -0.1692499    0.0495914
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0585714   -0.1688579    0.0413090
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0299003   -0.0623358    0.1141282
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0465377   -0.0663584    0.1474814
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0341818   -0.0015348    0.0686247
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0142220   -0.0662954    0.0886594
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0396825   -0.0215668    0.0972596
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0422039   -0.0662852    0.1396547
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0765112   -0.0274993    0.1699931
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0534024   -0.0487841    0.1456326
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0092661   -0.0189642    0.0367144
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0332517    0.0148040    0.0513539
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0579775   -0.1324507    0.0115981
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0516129   -0.0323589    0.1287544
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.1004785   -0.0019149    0.1924075
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0696387   -0.1140714   -0.0269782
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1537710    0.1326738    0.1743550
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0180433   -0.0866429    0.0462257
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0828324    0.0354861    0.1278544
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0172764   -0.0174682    0.0508345
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0524630    0.0361685    0.0684820
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0321810   -0.0108399    0.0733710
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0405281   -0.1290714    0.0410715
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1148313   -0.2064463   -0.0301734
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0759582   -0.0406258    0.1794810
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0085470   -0.0261271    0.0420494
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0182944   -0.1061952    0.1287742
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0061125   -0.0152290    0.0270053
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0275795   -0.0021485    0.0564256
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0482313   -0.1067546    0.0071974
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0007299   -0.0710659    0.0649871
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0366790   -0.1231008    0.0430927
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0019817   -0.0219153    0.0253199
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0116718   -0.0016272    0.0247943
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1271053    0.0673169    0.1830611
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0143027   -0.0257589    0.0527997
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0257372    0.0097925    0.0414252
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0001085   -0.0176361    0.0175436
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0354908   -0.0080010    0.0771061
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0187849    0.0028661    0.0344496
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0035371   -0.0204434    0.0130891
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0048091   -0.0256435    0.0156022
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0098535   -0.0238023    0.0039052
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0120122   -0.0253312    0.0011338
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0016590   -0.0121206    0.0152511
