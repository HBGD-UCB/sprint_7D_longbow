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
![](/tmp/a9be1f16-a6df-4744-9017-5ffafa4dcfa1/8068fecc-d62e-4fd0-b82d-1502dd28fd15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9be1f16-a6df-4744-9017-5ffafa4dcfa1/8068fecc-d62e-4fd0-b82d-1502dd28fd15/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4249993   0.2594475   0.5905510
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3375503   0.1599641   0.5151364
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2450125   0.1832930   0.3067320
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2677555   0.0533361   0.4821750
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8992028   0.8590979   0.9393077
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5475016   0.4757000   0.6193033
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.6899633   0.6220983   0.7578283
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5590776   0.4955936   0.6225615
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7134756   0.6548237   0.7721276
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5737440   0.4967657   0.6507222
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3677997   0.3255631   0.4100363
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3568509   0.3011708   0.4125310
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2968191   0.2772407   0.3163975
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4568234   0.4372090   0.4764379
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1656616   0.1394997   0.1918236
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6904984   0.6401520   0.7408448
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.5476429   0.2530194   0.8422665
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3058841   0.2798633   0.3319049
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.2917724   0.2596696   0.3238751
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1484404   0.1256505   0.1712302
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3038561   0.2947876   0.3129245
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6753710   0.6254102   0.7253318
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2803045   0.2663931   0.2942160
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6571537   0.6129817   0.7013257
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2560007   0.2449436   0.2670578
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4143572   0.3744281   0.4542863
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1588801   0.0379646   0.2797957
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1418542   0.0177446   0.2659638
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4262004   0.3455420   0.5068588
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3280001   0.2673204   0.3886798
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5811600   0.5157374   0.6465827
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4606909   0.3521517   0.5692301
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2607445   0.1772454   0.3442436
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2369728   0.1916639   0.2822817
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1483955   0.1173716   0.1794193
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1629811   0.1214641   0.2044981
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1068220   0.0823378   0.1313062
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2325422   0.2146646   0.2504198
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1335198   0.0624353   0.2046042
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.2701674   0.1999780   0.3403569
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                0.0670202   0.0474281   0.0866122
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0632185   0.0510849   0.0753522
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1454631   0.1385544   0.1523718
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2166278   0.1651580   0.2680975
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0682561   0.0610997   0.0754124
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1881718   0.1688748   0.2074688
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1290898   0.1223815   0.1357982
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0954429   0.0746652   0.1162206
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3535906   0.1657565   0.5414248
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2065813   0.0502944   0.3628683
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1935794   0.1348250   0.2523338
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8404811   0.7790438   0.9019184
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3507964   0.2586093   0.4429836
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4978753   0.4315040   0.5642466
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7373111   0.6762240   0.7983983
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4979526   0.3956235   0.6002816
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2771649   0.2004399   0.3538900
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2593584   0.1856362   0.3330806
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1862069   0.1378375   0.2345763
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3660562   0.3445564   0.3875560
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3185710   0.2607623   0.3763798
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5523157   0.5000485   0.6045829
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3616881   0.3354694   0.3879067
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.4287944   0.2618291   0.5957598
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0762967   0.0619853   0.0906080
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2492966   0.2337316   0.2648615
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7691713   0.7016435   0.8366991
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2447618   0.2232211   0.2663024
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6227600   0.5692697   0.6762504
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2087245   0.1831548   0.2342941
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3648297   0.3191702   0.4104892


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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2252665   0.8573604   1.7510464
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.5308724   0.9369917   2.5011645
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.0588601   0.9610615   1.1666107
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.8273599   0.8357207   3.9956462
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0068979   0.9858236   1.0284228
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           1.0816018   0.9854827   1.1870960
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             optimal           0.7533763   0.6820084   0.8322123
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0124804   0.9869062   1.0387173
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0089263   0.9690889   1.0504014
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0490511   0.9380066   1.1732415
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0206488   0.9676463   1.0765545
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1028924   0.9789244   1.2425594
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0055753   0.9889288   1.0225021
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           0.9902551   0.9791180   1.0015190
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0747797   1.0280297   1.1236556
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9176630   0.8716599   0.9660940
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.3803745   0.8231765   2.3147332
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0083353   0.9923957   1.0245308
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             optimal           1.0200893   0.9953079   1.0454878
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0763769   0.9604212   1.2063324
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0722614   1.0566973   1.0880547
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0323502   0.9729318   1.0953973
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             optimal           1.0045407   0.9737946   1.0362576
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0116093   0.9514402   1.0755835
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9903114   0.9612562   1.0202448
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9985316   0.9187685   1.0852193
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3342232   0.6580428   2.7052216
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.4841034   0.6530242   3.3728652
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.8999560   0.7871561   1.0289203
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.0474857   0.9360218   1.1722229
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           1.0365641   0.9993745   1.0751376
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             optimal           0.9456309   0.7873497   1.1357315
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.7395647   0.5875859   0.9308528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9634097   0.8564668   1.0837061
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0735234   0.9669491   1.1918440
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1651219   0.9671201   1.4036613
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2815154   1.0454670   1.5708595
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0384673   1.0182565   1.0590793
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.3999119   0.8528622   2.2978545
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     observed             optimal           1.0575453   0.9710699   1.1517214
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             optimal           1.1111295   0.9976248   1.2375482
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.4438545   1.2247319   1.7021813
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1763074   1.1462098   1.2071953
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0135713   0.8298862   1.2379130
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             optimal           1.0725705   1.0136964   1.1348640
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0042905   0.9389308   1.0741999
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0160505   0.9846881   1.0484117
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8967591   0.7462202   1.0776670
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1917274   0.7318442   1.9405963
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             optimal           1.9987440   0.9804759   4.0745289
6-24 months                  ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.0861507   0.9632838   1.2246894
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0087390   0.9745102   1.0441700
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           1.0796102   0.8914314   1.3075131
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0104439   0.9383176   1.0881144
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0269771   0.9965050   1.0583810
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1525456   0.9669663   1.3737411
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0815985   0.8496922   1.3767989
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0134464   0.7945095   1.2927141
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2113617   0.9518128   1.5416866
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           0.9802018   0.9621101   0.9986336
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1373530   1.0690269   1.2100460
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0157830   0.9760538   1.0571292
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0257561   1.0092380   1.0425445
6-24 months                  ki1114097-CMIN             PERU                           observed             optimal           0.8046838   0.5514654   1.1741735
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             optimal           1.0072663   0.9399967   1.0793500
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9864899   0.9394444   1.0358913
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9990404   0.9224814   1.0819532
6-24 months                  ki1135781-COHORTS          INDIA                          observed             optimal           1.0104725   0.9373782   1.0892666
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0334218   0.9552692   1.1179683
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0387497   0.9282123   1.1624507
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0350228   0.9272857   1.1552773


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0957381   -0.0554469    0.2469231
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1791961    0.0152004    0.3431919
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0144215   -0.0093943    0.0382373
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.2215302    0.0124783    0.4305821
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0062026   -0.0127922    0.0251975
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0446771   -0.0061516    0.0955059
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.1701613   -0.2260766   -0.1142460
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0069775   -0.0070748    0.0210297
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0063687   -0.0224339    0.0351713
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0281428   -0.0359943    0.0922799
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0075946   -0.0120164    0.0272056
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0367173   -0.0058147    0.0792493
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0016549   -0.0033001    0.0066099
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0044517   -0.0096065    0.0007032
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0123881    0.0049806    0.0197956
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0568536   -0.0917276   -0.0219795
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.2083094   -0.0723707    0.4889896
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0025496   -0.0023243    0.0074235
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0058615   -0.0013176    0.0130407
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0113374   -0.0058083    0.0284831
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0219571    0.0175122    0.0264019
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0218484   -0.0181533    0.0618501
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0012728   -0.0074410    0.0099866
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0076291   -0.0326641    0.0479223
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0024803   -0.0101054    0.0051448
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0006085   -0.0351059    0.0338890
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0531014   -0.0595242    0.1657270
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0686721   -0.0482542    0.1855984
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0426388   -0.0995220    0.0142444
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0155753   -0.0213255    0.0524761
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0212496    0.0002321    0.0422671
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0250473   -0.1093368    0.0592421
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0679071   -0.1333239   -0.0024902
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0086709   -0.0365194    0.0191776
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0109105   -0.0046886    0.0265096
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0269117   -0.0033789    0.0572023
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0300720    0.0081160    0.0520281
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0089453    0.0043539    0.0135366
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0533961   -0.0130918    0.1198841
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0155469   -0.0075548    0.0386485
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.0074479   -0.0000085    0.0149043
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0280598    0.0160642    0.0400555
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0256462    0.0217960    0.0294965
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0029399   -0.0403689    0.0462487
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0049534    0.0010790    0.0088277
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0008073   -0.0118548    0.0134695
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0020720   -0.0019806    0.0061245
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0098536   -0.0273344    0.0076272
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0677930   -0.1042904    0.2398764
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2063219    0.0583467    0.3542971
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0166770   -0.0067741    0.0401281
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0073449   -0.0216322    0.0363221
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                 0.0279270   -0.0390187    0.0948726
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0051998   -0.0315136    0.0419132
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0198905   -0.0020756    0.0418566
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0759605   -0.0110609    0.1629818
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0226162   -0.0444047    0.0896372
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0034874   -0.0596375    0.0666124
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0393570   -0.0055993    0.0843133
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0072473   -0.0140202   -0.0004743
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0437567    0.0271147    0.0603987
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0087172   -0.0132991    0.0307334
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0093157    0.0034498    0.0151815
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                -0.0837505   -0.2459411    0.0784401
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0005544   -0.0047306    0.0058394
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0033680   -0.0155512    0.0088152
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0007381   -0.0620627    0.0605865
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0025633   -0.0158144    0.0209410
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0208138   -0.0281396    0.0697672
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0080880   -0.0153815    0.0315575
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0127773   -0.0272613    0.0528160


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1838510   -0.1663706    0.4289129
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3467777   -0.0672453    0.6001862
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0555882   -0.0405161    0.1428160
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.4527624   -0.1965720    0.7497276
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0068507   -0.0143803    0.0276373
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0754454   -0.0147312    0.1576081
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.3273580   -0.4662576   -0.2016164
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0123265   -0.0132676    0.0372741
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0088474   -0.0318970    0.0479830
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0467576   -0.0660906    0.1476606
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0202310   -0.0334355    0.0711106
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0932933   -0.0215293    0.1952095
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0055444   -0.0111952    0.0220069
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0098408   -0.0213273    0.0015167
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0695768    0.0272655    0.1100476
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0897246   -0.1472364   -0.0350959
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.2755589   -0.2148064    0.5679848
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0082663   -0.0076626    0.0239435
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0196937   -0.0047142    0.0435087
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0709574   -0.0412098    0.1710411
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0673916    0.0536552    0.0809286
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0313365   -0.0278212    0.0870892
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0045202   -0.0269106    0.0349890
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0114761   -0.0510383    0.0702721
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0097834   -0.0403054    0.0198431
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0014706   -0.0884135    0.0785272
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2505002   -0.5196580    0.6303445
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3261925   -0.5313367    0.7035162
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1111654   -0.2703961    0.0281074
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0453330   -0.0683512    0.1469200
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0352743   -0.0006259    0.0698865
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0574950   -0.2700836    0.1195102
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.3521467   -0.7018790   -0.0742837
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0379800   -0.1675876    0.0772406
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0684879   -0.0341806    0.1609640
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1417207   -0.0339978    0.2875774
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2196738    0.0434896    0.3634058
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0370424    0.0179291    0.0557836
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2856693   -0.1725223    0.5648114
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0544140   -0.0297920    0.1317344
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.1000149   -0.0023808    0.1919507
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.3074094    0.1834948    0.4125185
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1498821    0.1275594    0.1716336
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0133896   -0.2049845    0.1921888
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0676604    0.0135114    0.1188371
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0042721   -0.0650412    0.0690746
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0157969   -0.0155500    0.0461762
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1151267   -0.3400871    0.0720696
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1608819   -0.3664111    0.4846945
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.4996858   -0.0199129    0.7545729
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0793175   -0.0381157    0.1834664
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0086633   -0.0261565    0.0423015
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                 0.0737398   -0.1217913    0.2351893
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0103360   -0.0657372    0.0809790
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0262684   -0.0035073    0.0551607
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1323554   -0.0341622    0.2720608
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0754425   -0.1768967    0.2736775
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0132680   -0.2586382    0.2264337
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1744827   -0.0506267    0.3513597
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0201981   -0.0393821   -0.0013682
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1207655    0.0645698    0.1735851
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0155377   -0.0245337    0.0540419
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0251094    0.0091534    0.0408083
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                -0.2427242   -0.8133505    0.1483371
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0072139   -0.0638336    0.0735164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0136951   -0.0644589    0.0346477
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0009605   -0.0840327    0.0757456
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0103640   -0.0668053    0.0819511
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0323410   -0.0468253    0.1055202
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0373042   -0.0773397    0.1397484
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0338377   -0.0784163    0.1344070
