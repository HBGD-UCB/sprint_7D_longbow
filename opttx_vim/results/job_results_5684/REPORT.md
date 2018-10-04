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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0       62     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    1      378     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0        4     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    1       54     498
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
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0      328    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1      562    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0       64    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1      116    1070
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    24527   36884
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     8182   36884
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2999   36884
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1176   36884
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     4034    7541
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     2865    7541
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      362    7541
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      280    7541
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0      184     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    1      256     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0       14     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    1       44     498
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
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0      714    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1      176    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0      156    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1       24    1070
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0    28608   36840
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     4060   36840
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     3400   36840
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      772   36840
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     6134    7314
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      554    7314
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      554    7314
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       72    7314
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
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0       58     194
6-24 months                  ki1000109-EE               PAKISTAN                       0                    1      122     194
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0        4     194
6-24 months                  ki1000109-EE               PAKISTAN                       1                    1       10     194
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
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0      312     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1      386     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0       62     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1       92     852
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0    14741   20974
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    1     4137   20974
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1691   20974
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1      405   20974
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0     4018    6981
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    1     2388    6981
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0      360    6981
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    1      215    6981


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
![](/tmp/b9880872-c00f-42d7-aeb6-5332fb10f72c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9880872-c00f-42d7-aeb6-5332fb10f72c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4140459   0.2792077   0.5488841
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3217957   0.1685464   0.4750450
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2445849   0.1829877   0.3061821
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2966387   0.0977498   0.4955277
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.9046344   0.8459985   0.9632704
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5786194   0.5151532   0.6420857
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.5147924   0.4379129   0.5916718
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5353267   0.4736799   0.5969735
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7057945   0.6442117   0.7673773
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5367837   0.4626584   0.6109090
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2990015   0.2476730   0.3503301
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2653867   0.2160398   0.3147336
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2967045   0.2771491   0.3162600
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4487794   0.4292286   0.4683302
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1672620   0.1410144   0.1935095
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5190897   0.4437806   0.5943988
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.5393307   0.2675274   0.8111340
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3059315   0.2799165   0.3319465
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.2917197   0.2596247   0.3238147
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1446443   0.1243171   0.1649714
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2984605   0.2896626   0.3072584
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6904521   0.6586436   0.7222605
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2790054   0.2670307   0.2909801
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6310705   0.5894688   0.6726723
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2369493   0.2286729   0.2452257
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3939635   0.3718565   0.4160705
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1595878   0.0433814   0.2757943
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1555875   0.0362270   0.2749480
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3729589   0.3082894   0.4376283
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3273882   0.2669666   0.3878099
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5824366   0.5172559   0.6476173
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4081140   0.2923503   0.5238778
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1842096   0.1624757   0.2059435
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2141900   0.1731551   0.2552248
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1228214   0.0939399   0.1517030
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1315152   0.0997835   0.1632470
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0943857   0.0756085   0.1131629
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2335620   0.2156776   0.2514463
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1125858   0.0487564   0.1764152
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.2713158   0.2011363   0.3414954
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                0.0670088   0.0474258   0.0865918
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0593654   0.0484539   0.0702770
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1444413   0.1376916   0.1511910
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2034082   0.1541856   0.2526308
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0659057   0.0590569   0.0727544
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1717804   0.1563503   0.1872106
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1219504   0.1163185   0.1275823
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0828957   0.0710970   0.0946943
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3342830   0.1958261   0.4727400
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2056234   0.0577133   0.3535335
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1946698   0.1358997   0.2534399
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8399165   0.7508003   0.9290327
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3719163   0.2972423   0.4465904
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4147541   0.3528323   0.4766759
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7350067   0.6739662   0.7960473
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4958770   0.4010185   0.5907354
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3149312   0.2438647   0.3859976
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2496350   0.1846587   0.3146114
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1537004   0.1126070   0.1947939
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3526892   0.3313805   0.3739980
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3192956   0.2615425   0.3770486
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5562194   0.5038771   0.6085618
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3616542   0.3354378   0.3878706
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.3449931   0.3114173   0.3785688
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0736625   0.0606149   0.0867100
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2124563   0.2026127   0.2222999
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7531440   0.6885893   0.8176987
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2040902   0.1820392   0.2261412
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6249489   0.5754738   0.6744241
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1717070   0.1495584   0.1938555
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2802608   0.2433230   0.3171985


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5232466   0.4566247   0.5898686
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5166524   0.4487410   0.5845638
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2592026   0.2000598   0.3183455
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.4905171   0.4318606   0.5491736
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9051414   0.8717457   0.9385372
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5924791   0.5415020   0.6434563
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5203950   0.4513266   0.5894634
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5662082   0.5087952   0.6236212
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7199011   0.6648904   0.7749118
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6029678   0.5612538   0.6446817
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3777544   0.3400326   0.4154763
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3972056   0.3597061   0.4347051
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2983624   0.2793576   0.3173672
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.4524795   0.4333183   0.4716406
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.1794808   0.1532922   0.2056694
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6345994   0.5937344   0.6754644
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     observed             NA                0.7564572   0.6913132   0.8216011
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3084472   0.2827825   0.3341119
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.2978980   0.2662545   0.3295414
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1596479   0.1406916   0.1786043
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3259382   0.3177361   0.3341402
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.6971521   0.6682379   0.7260663
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.2815428   0.2706012   0.2924844
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6647698   0.6473775   0.6821622
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2540816   0.2462817   0.2618815
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4177128   0.3994088   0.4360167
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2122242   0.1577190   0.2667295
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2109417   0.1555380   0.2663454
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3832987   0.3274306   0.4391668
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3438312   0.2945686   0.3930939
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6033716   0.5424619   0.6642812
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.4357766   0.3672290   0.5043242
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1927575   0.1690927   0.2164222
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2281875   0.1924192   0.2639559
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1600051   0.1314962   0.1885141
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1932376   0.1631319   0.2233434
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1370435   0.1227673   0.1513197
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2415716   0.2238122   0.2593309
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1872201   0.1541551   0.2202851
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     observed             NA                0.2856812   0.2171652   0.3541971
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             NA                0.0743575   0.0542829   0.0944320
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0910152   0.0778956   0.1041347
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1711409   0.1645465   0.1777353
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2201531   0.1927719   0.2475343
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0733544   0.0669203   0.0797885
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.1891519   0.1747281   0.2035756
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1313272   0.1256950   0.1369594
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0856761   0.0743165   0.0970357
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4256736   0.3486802   0.5026671
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             NA                0.4125943   0.3348324   0.4903561
6-24 months                  ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2107644   0.1534235   0.2681054
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8501872   0.7981462   0.9022283
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3788578   0.3167074   0.4410081
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5039388   0.4597128   0.5481647
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7573756   0.7033538   0.8113974
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5757259   0.5234693   0.6279825
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2958943   0.2538425   0.3379461
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2631783   0.2247870   0.3015695
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2257177   0.2052063   0.2462291
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3588376   0.3378895   0.3797856
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3633620   0.3141129   0.4126112
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5602529   0.5130723   0.6074336
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3710105   0.3451842   0.3968367
6-24 months                  ki1114097-CMIN             PERU                           observed             NA                0.3450631   0.3120387   0.3780875
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0775391   0.0635738   0.0915044
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2471221   0.2376380   0.2566062
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7684464   0.7403675   0.7965253
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2475989   0.2363981   0.2587997
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6437784   0.6232549   0.6643019
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2168576   0.2074985   0.2262166
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3731726   0.3544697   0.3918754


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7913016   0.5880306   1.0648393
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.6228475   0.3996410   0.9707187
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.9436050   0.8566691   1.0393633
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.6047469   0.3149292   1.1612732
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9994398   0.9493472   1.0521756
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              observed          0.9766073   0.9158923   1.0413471
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              observed          0.9892339   0.9267009   1.0559866
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9454592   0.9207031   0.9708808
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9804048   0.9470720   1.0149108
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.8902361   0.7937772   0.9984167
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7915236   0.6924002   0.9048374
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.6681343   0.5760032   0.7750017
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9944436   0.9780256   1.0111372
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9918227   0.9828913   1.0008352
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.9319211   0.8922646   0.9733402
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.8179801   0.7259451   0.9216833
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              observed          0.7129693   0.4398240   1.1557467
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.9918440   0.9761765   1.0077629
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              observed          0.9792604   0.9554760   1.0036369
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              observed          0.9060202   0.8113393   1.0117501
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9156967   0.9033150   0.9282481
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9903894   0.9708455   1.0103267
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              observed          0.9909874   0.9731495   1.0091522
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9493068   0.8943901   1.0075954
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9325717   0.9190101   0.9463335
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9431446   0.9153957   0.9717346
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7519774   0.3826403   1.4778107
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7375855   0.3596857   1.5125216
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9730241   0.8892981   1.0646328
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              observed          0.9521771   0.8515051   1.0647515
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              observed          0.9653034   0.9306218   1.0012774
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              observed          0.9365212   0.7463971   1.1750741
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9556550   0.8964655   1.0187525
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.9386576   0.8429627   1.0452160
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7676094   0.6666741   0.8838264
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.6805880   0.5706762   0.8116687
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.6887280   0.5821027   0.8148843
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              observed          0.9668438   0.9490197   0.9850028
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.6013552   0.3523157   1.0264319
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              observed          0.9497155   0.8725931   1.0336542
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              observed          0.9011712   0.8091124   1.0037042
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              observed          0.6522587   0.5575629   0.7630375
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8439909   0.8234674   0.8650259
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9239398   0.7445759   1.1465114
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              observed          0.8984557   0.8504951   0.9491209
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9081615   0.8675888   0.9506316
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9285997   0.9120840   0.9454145
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9675473   0.9265009   1.0104122
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7853037   0.5443734   1.1328654
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              observed          0.4983672   0.2535615   0.9795249
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.9236368   0.8203675   1.0399058
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9879195   0.9073182   1.0756810
6-24 months                  ki1000108-IRC              INDIA                          optimal              observed          0.9816780   0.8729020   1.1040091
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8230248   0.7565984   0.8952831
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9704653   0.9415742   1.0002429
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.8613073   0.7317648   1.0137825
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          1.0643366   0.8798286   1.2875375
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9485397   0.7543090   1.1927838
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.6809407   0.5308738   0.8734284
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              observed          0.9828660   0.9696622   0.9962496
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8787257   0.8261361   0.9346630
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9928006   0.9540613   1.0331128
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.9747817   0.9590795   0.9907410
6-24 months                  ki1114097-CMIN             PERU                           optimal              observed          0.9997970   0.9823629   1.0175406
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              observed          0.9500046   0.9117021   0.9899163
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8597219   0.8389098   0.8810504
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9800865   0.9066679   1.0594503
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              observed          0.8242776   0.7482267   0.9080583
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9707516   0.9030151   1.0435691
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7917962   0.7028677   0.8919761
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7510219   0.6676475   0.8448078
