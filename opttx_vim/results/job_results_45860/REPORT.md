---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** enwast

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
![](/tmp/23542406-9721-47bd-971a-932c3bf72690/d4b76c43-0d07-4d41-8994-31bfa3489158/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/23542406-9721-47bd-971a-932c3bf72690/d4b76c43-0d07-4d41-8994-31bfa3489158/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4273664   0.2468114   0.6079213
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3184702   0.1550182   0.4819222
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2446709   0.1829852   0.3063567
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2781651   0.0619888   0.4943413
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8985717   0.8583567   0.9387867
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5975494   0.5298974   0.6652014
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.5998464   0.5233417   0.6763511
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5590776   0.4955936   0.6225615
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7051932   0.6434557   0.7669307
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5550956   0.4752153   0.6349759
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3686320   0.3263692   0.4108947
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3720497   0.3128907   0.4312087
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3281308   0.2806211   0.3756404
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4485879   0.4290059   0.4681699
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1659745   0.1396158   0.1923333
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6684748   0.6115474   0.7254022
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.5168547   0.2078730   0.8258364
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3481926   0.3213329   0.3750523
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.2917181   0.2596181   0.3238180
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1498131   0.1297642   0.1698620
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3050763   0.2958604   0.3142921
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6606089   0.6121110   0.7091069
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2867995   0.2725965   0.3010025
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6733704   0.6358588   0.7108820
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2564031   0.2454249   0.2673813
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4165412   0.3764399   0.4566425
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1612590   0.0401356   0.2823823
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1459214   0.0266554   0.2651874
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4030107   0.3314006   0.4746209
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3337602   0.2722085   0.3953119
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5822798   0.5169220   0.6476375
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4627292   0.3514542   0.5740043
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2607445   0.1772454   0.3442436
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2295252   0.1823761   0.2766742
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1473328   0.1163416   0.1783240
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1504835   0.1088488   0.1921181
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1224021   0.0918538   0.1529504
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2334736   0.2155739   0.2513733
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1380928   0.0669548   0.2092309
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.2702006   0.1999909   0.3404103
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                0.0668819   0.0473074   0.0864564
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0639913   0.0516622   0.0763203
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1454591   0.1385263   0.1523920
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2177372   0.1663511   0.2691233
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0674594   0.0604702   0.0744485
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1963774   0.1759747   0.2167801
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1258158   0.1193193   0.1323123
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0914017   0.0724583   0.1103450
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3532193   0.1700554   0.5363832
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2079614   0.0478830   0.3680399
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1942204   0.1353789   0.2530619
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8407835   0.7793960   0.9021711
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3653670   0.2721541   0.4585799
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4978753   0.4315040   0.5642466
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7364819   0.6752568   0.7977071
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4931216   0.3885904   0.5976527
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2786655   0.1991060   0.3582250
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2420898   0.1710154   0.3131641
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1883395   0.1395090   0.2371699
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3530754   0.3317249   0.3744260
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3183337   0.2607425   0.3759250
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5692056   0.5174662   0.6209449
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3616659   0.3354463   0.3878856
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.4945862   0.3647243   0.6244480
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0788913   0.0642348   0.0935479
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2496084   0.2339682   0.2652485
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7886825   0.7265805   0.8507845
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2494191   0.2274248   0.2714134
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6241474   0.5788319   0.6694629
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2029765   0.1761758   0.2297771
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3687937   0.3251480   0.4124394


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.4892857   0.4306292   0.5479422
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5921788   0.5412016   0.6431559
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5660550   0.5086421   0.6234680
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2984740   0.2794692   0.3174788
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.4523718   0.4332106   0.4715329
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.1780497   0.1518612   0.2042383
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6336449   0.5927799   0.6745099
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     observed             NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3084337   0.2827691   0.3340984
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.2976339   0.2659904   0.3292773
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3258131   0.3176111   0.3340152
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.6972194   0.6683052   0.7261335
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.2815773   0.2706357   0.2925189
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6647828   0.6473904   0.6821751
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2535204   0.2457292   0.2613116
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4137487   0.3955533   0.4319441
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3435754   0.2943128   0.3928380
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1928375   0.1691727   0.2165022
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1368941   0.1226179   0.1511703
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2414875   0.2237281   0.2592468
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1869159   0.1538509   0.2199809
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     observed             NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             NA                0.0744681   0.0543935   0.0945427
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1711093   0.1645149   0.1777037
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2195677   0.1921865   0.2469489
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0732095   0.0667753   0.0796436
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.1889792   0.1745554   0.2034029
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1311618   0.1255296   0.1367940
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0855893   0.0742297   0.0969489
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8478261   0.7957850   0.8998671
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3787234   0.3165730   0.4408738
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2255639   0.2050525   0.2460753
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3588089   0.3378609   0.3797570
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3623277   0.3130786   0.4115769
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610329   0.5138522   0.6082135
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3710037   0.3451775   0.3968300
6-24 months                  ki1114097-CMIN             PERU                           observed             NA                0.3450439   0.3120195   0.3780683
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2459285   0.2364444   0.2554126
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7684332   0.7403543   0.7965121
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2473250   0.2361242   0.2585258
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6435738   0.6230503   0.6640973
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2168125   0.2074403   0.2261847
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3776070   0.3590122   0.3962019


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2184799   0.8251780   1.7992401
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.6225897   1.0054125   2.6186238
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.0603384   0.9621574   1.1685381
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.7589761   0.8236792   3.7563133
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0076051   0.9864956   1.0291663
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           0.9910122   0.9216135   1.0656367
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             optimal           0.8665585   0.7979452   0.9410716
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0124804   0.9869062   1.0387173
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0207761   0.9857472   1.0570498
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0842939   0.9611911   1.2231629
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0183444   0.9656449   1.0739200
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0578375   0.9375077   1.1936117
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9096190   0.7981091   1.0367087
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0084351   0.9992354   1.0177196
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0727534   1.0259301   1.1217137
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9478964   0.8913895   1.0079855
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.4626014   0.8222079   2.6017785
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           0.8858135   0.8538827   0.9189384
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             optimal           1.0202792   0.9954467   1.0457312
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0665145   0.9645052   1.1793126
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0679728   1.0516751   1.0845230
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0554192   0.9956429   1.1187844
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             optimal           0.9817914   0.9521445   1.0123615
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9872469   0.9393938   1.0375375
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9887570   0.9605877   1.0177524
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9932961   0.9135129   1.0800473
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3145412   0.6541323   2.6416959
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.4427378   0.6706293   3.1037899
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9517405   0.8595406   1.0538305
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.0294079   0.9190689   1.1529937
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           1.0345708   0.9978627   1.0726293
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             optimal           0.9414654   0.7825764   1.1326141
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.7395647   0.5875859   0.9308528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9946704   0.8790082   1.1255518
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0812665   0.9729255   1.2016720
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2618847   1.0180838   1.5640686
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1183966   0.8923729   1.4016685
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0343243   1.0150660   1.0539480
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.3535523   0.8380847   2.1860605
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     observed             optimal           1.0574154   0.9711981   1.1512866
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             optimal           1.1134264   0.9993575   1.2405154
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.4264190   1.2163236   1.6728041
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1763398   1.1458966   1.2075917
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0084070   0.8240670   1.2339829
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             optimal           1.0852381   1.0285622   1.1450370
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9623263   0.8964926   1.0329946
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0424908   1.0125459   1.0733213
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9364084   0.7823505   1.1208029
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1929802   0.7424056   1.9170138
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             optimal           1.9854796   0.9615668   4.0996938
6-24 months                  ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.0825660   0.9594174   1.2215216
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0083762   0.9741049   1.0438532
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           1.0365561   0.8590960   1.2506734
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0104439   0.9383176   1.0881144
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0281333   0.9974006   1.0598130
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1638369   0.9699230   1.3965194
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0757744   0.8394706   1.3785958
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0857371   0.8431283   1.3981560
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1976455   0.9416988   1.5231566
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           1.0162388   1.0023375   1.0303329
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1382008   1.0703439   1.2103596
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9856419   0.9437746   1.0293665
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0258188   1.0092360   1.0426741
6-24 months                  ki1114097-CMIN             PERU                           observed             optimal           0.6976417   0.5396281   0.9019247
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             optimal           0.9741379   0.9253519   1.0254959
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9852576   0.9381275   1.0347555
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9743251   0.9074318   1.0461495
6-24 months                  ki1135781-COHORTS          INDIA                          observed             optimal           0.9916041   0.9197588   1.0690616
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0311247   0.9666003   1.0999564
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0681656   0.9454591   1.2067975
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0238976   0.9214447   1.1377420


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0933710   -0.0724029    0.2591448
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1982762    0.0471609    0.3493916
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0147631   -0.0090851    0.0386112
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.2111206    0.0004998    0.4217415
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0068337   -0.0121618    0.0258292
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                -0.0053706   -0.0487608    0.0380195
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0800444   -0.1266072   -0.0334816
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0069775   -0.0070748    0.0210297
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0146512   -0.0098715    0.0391738
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0467912   -0.0199140    0.1134964
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0067623   -0.0128234    0.0263481
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0215184   -0.0233113    0.0663481
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0296568   -0.0725894    0.0132758
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0037839   -0.0003247    0.0078925
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0120752    0.0046708    0.0194796
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0348299   -0.0757841    0.0061242
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.2390977   -0.0555188    0.5337142
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                -0.0397589   -0.0516845   -0.0278333
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0059158   -0.0012759    0.0131075
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0099647   -0.0054500    0.0253795
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0207369    0.0160449    0.0254289
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0366104   -0.0018511    0.0750720
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0052222   -0.0140186    0.0035742
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0085876   -0.0420407    0.0248655
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0028827   -0.0102968    0.0045314
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0027925   -0.0376756    0.0320907
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0507226   -0.0621828    0.1636280
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0646049   -0.0479715    0.1771813
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0194491   -0.0606088    0.0217107
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0098152   -0.0280262    0.0476566
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0201299   -0.0007050    0.0409647
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0270857   -0.1126451    0.0584737
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0679071   -0.1333239   -0.0024902
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0012233   -0.0296089    0.0271624
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0119732   -0.0036688    0.0276152
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0394093    0.0069875    0.0718311
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0144920   -0.0131696    0.0421536
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0080138    0.0036110    0.0124167
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0488230   -0.0177184    0.1153645
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0155137   -0.0075153    0.0385427
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.0075862    0.0001178    0.0150546
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0272871    0.0156714    0.0389028
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0256502    0.0217573    0.0295431
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0018305   -0.0421286    0.0457896
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0057501    0.0021037    0.0093965
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0073983   -0.0213230    0.0065264
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0053460    0.0016694    0.0090226
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0058124   -0.0221469    0.0105221
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0681643   -0.0990778    0.2354065
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2049418    0.0536503    0.3562333
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0160360   -0.0076377    0.0397097
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0070425   -0.0219955    0.0360805
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                 0.0133564   -0.0551836    0.0818964
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0051998   -0.0315136    0.0419132
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0207197   -0.0013709    0.0428103
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0807915   -0.0086260    0.1702089
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0211157   -0.0480501    0.0902815
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0207561   -0.0405052    0.0820174
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0372244   -0.0080953    0.0825442
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0057335    0.0008710    0.0105960
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0439940    0.0275036    0.0604843
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0081727   -0.0328237    0.0164783
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0093378    0.0034491    0.0152265
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                -0.1495423   -0.2755682   -0.0235163
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0020403   -0.0060878    0.0020072
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0036798   -0.0159171    0.0085575
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0202494   -0.0763229    0.0358242
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                -0.0020941   -0.0208547    0.0166665
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0194264   -0.0208992    0.0597520
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0138360   -0.0109016    0.0385736
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0088133   -0.0300512    0.0476778


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1793053   -0.2118597    0.4442098
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3837012    0.0053834    0.6181200
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0569049   -0.0393310    0.1442298
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.4314875   -0.2140649    0.7337815
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0075477   -0.0136893    0.0283397
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                -0.0090693   -0.0850535    0.0615939
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.1539902   -0.2532189   -0.0626184
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0123265   -0.0132676    0.0372741
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0203533   -0.0144589    0.0539708
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0777408   -0.0403758    0.1824474
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0180140   -0.0355774    0.0688320
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0546752   -0.0666579    0.1622066
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0993614   -0.2529615    0.0354089
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0083646   -0.0007652    0.0174111
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0678193    0.0252748    0.1085069
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0549676   -0.1218441    0.0079222
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.3162867   -0.2162374    0.6156475
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                -0.1289058   -0.1711211   -0.0882122
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0198761   -0.0045742    0.0437313
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0623663   -0.0368010    0.1520484
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0636465    0.0491360    0.0779357
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0525092   -0.0043761    0.1061727
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0185463   -0.0502608    0.0122105
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0129179   -0.0645163    0.0361795
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0113709   -0.0410294    0.0174427
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0067492   -0.0946753    0.0741146
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2392783   -0.5287427    0.6214553
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3068734   -0.4911368    0.6778132
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0507065   -0.1634122    0.0510808
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0285678   -0.0880577    0.1326926
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0334156   -0.0021419    0.0677115
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0621739   -0.2778305    0.1170868
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.3521467   -0.7018790   -0.0742837
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0053582   -0.1376459    0.1115469
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0751586   -0.0278280    0.1678262
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2075345    0.0177626    0.3606419
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1058628   -0.1206078    0.2865646
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0331853    0.0148424    0.0511866
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2612033   -0.1931969    0.5425561
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0542979   -0.0296560    0.1314065
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.1018715   -0.0006429    0.1938834
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.2989437    0.1778504    0.4022014
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1499055    0.1273209    0.1719056
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0083369   -0.2134935    0.1896160
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0785433    0.0277691    0.1266658
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0391485   -0.1154581    0.0319407
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0407589    0.0123905    0.0683125
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0679101   -0.2781995    0.1077824
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1617631   -0.3469727    0.4783553
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.4963434   -0.0399694    0.7560793
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0762688   -0.0422992    0.1813489
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0083066   -0.0265835    0.0420108
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                 0.0352669   -0.1640142    0.2004308
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0103360   -0.0657372    0.0809790
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0273635   -0.0026062    0.0564373
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1407730   -0.0310097    0.2839340
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0704371   -0.1912270    0.2746242
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0789667   -0.1860590    0.2847722
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1650284   -0.0619107    0.3434687
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0159793    0.0023320    0.0294399
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1214204    0.0657208    0.1737993
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0145673   -0.0595750    0.0285287
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0251690    0.0091515    0.0409276
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                -0.4334007   -0.8531282   -0.1087401
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0265487   -0.0806699    0.0248621
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0149630   -0.0659532    0.0335882
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0263515   -0.1020111    0.0441137
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                -0.0084669   -0.0872416    0.0646002
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0301852   -0.0345538    0.0908730
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0638156   -0.0576872    0.1713606
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0233398   -0.0852524    0.1210661
