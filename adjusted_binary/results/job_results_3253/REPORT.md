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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/76288efb-04ae-4d6a-a81c-e56881141232/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/76288efb-04ae-4d6a-a81c-e56881141232/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/76288efb-04ae-4d6a-a81c-e56881141232/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/76288efb-04ae-4d6a-a81c-e56881141232/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5440553   0.4714361   0.6166745
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4136597   0.2733645   0.5539549
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5534894   0.4799008   0.6270781
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2761776   0.1465774   0.4057778
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2446809   0.1830836   0.3062781
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3750000   0.1808556   0.5691444
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5057471   0.4449832   0.5665111
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2631579   0.0648027   0.4615131
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8990826   0.8590293   0.9391358
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9230769   0.8638413   0.9823125
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.5819133   0.5184807   0.6453458
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.6307514   0.5464556   0.7150473
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5143737   0.4374706   0.5912769
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5467121   0.3920901   0.7013342
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5582522   0.4958103   0.6206941
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6665871   0.5861221   0.7470521
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7061611   0.6445783   0.7677440
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7826087   0.6631799   0.9020375
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6149865   0.5662519   0.6637212
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5201462   0.4452134   0.5950791
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3731022   0.3310328   0.4151715
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4853206   0.4037837   0.5668574
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3973554   0.3546491   0.4400617
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4367125   0.3711045   0.5023205
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2970464   0.2774914   0.3166015
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3720789   0.3066336   0.4375243
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4486684   0.4291130   0.4682239
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.4861104   0.4150621   0.5571586
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1661243   0.1399154   0.1923332
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2691813   0.2125561   0.3258064
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6315544   0.5867061   0.6764028
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6440302   0.5453167   0.7427438
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7741935   0.7081741   0.8402130
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5384615   0.2666586   0.8102645
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3059695   0.2799545   0.3319845
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3882418   0.2368203   0.5396634
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                0.2917313   0.2596363   0.3238263
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                0.4410963   0.2707066   0.6114861
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1636200   0.1425664   0.1846737
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1436883   0.1233074   0.1640691
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3026873   0.2938854   0.3114893
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4475515   0.4275949   0.4675082
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6902124   0.6584070   0.7220177
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7102878   0.6590356   0.7615400
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2787829   0.2668147   0.2907511
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.2908688   0.2660540   0.3156836
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6668528   0.6480518   0.6856538
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6564651   0.6143315   0.6985987
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2497692   0.2417596   0.2577789
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2849985   0.2644384   0.3055586
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4153846   0.3963059   0.4344633
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4559500   0.3965930   0.5153071
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2234637   0.1622978   0.2846295
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1578947   0.0416893   0.2741001
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2228571   0.1610506   0.2846637
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1470588   0.0277273   0.2663903
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3742816   0.3096304   0.4389327
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4092768   0.3000265   0.5185272
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.3333514   0.2730630   0.3936398
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3934168   0.3096748   0.4771588
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5824804   0.5173231   0.6476376
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.7623962   0.6136408   0.9111515
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4292114   0.3530451   0.5053777
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4625416   0.3061482   0.6189350
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1834344   0.1615068   0.2053620
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2011642   0.1123807   0.2899477
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2143056   0.1733062   0.2553049
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2546604   0.1896286   0.3196922
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1481972   0.1174136   0.1789808
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2336449   0.1686085   0.2986813
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1865703   0.1528972   0.2202435
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2958916   0.2386629   0.3531204
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1356106   0.1209458   0.1502754
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1566960   0.0966471   0.2167449
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2334646   0.2155764   0.2513529
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.3805776   0.2931845   0.4679707
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1977138   0.1606859   0.2347418
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1336508   0.0635941   0.2037075
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2709677   0.2007882   0.3411473
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4615385   0.1897355   0.7333414
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                0.0669856   0.0474026   0.0865687
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    NA                0.2258065   0.0785106   0.3731023
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0979631   0.0829037   0.1130225
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0634064   0.0515261   0.0752867
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1446090   0.1378590   0.1513590
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3086751   0.2899515   0.3273987
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2273875   0.1962896   0.2584854
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2266554   0.1769907   0.2763202
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0671447   0.0603321   0.0739574
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.0936978   0.0772452   0.1101505
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1860994   0.1705276   0.2016712
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2240149   0.1890973   0.2589326
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1243457   0.1186958   0.1299957
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1875360   0.1701893   0.2048828
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0828642   0.0710649   0.0946635
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1163505   0.0763422   0.1563589
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4481065   0.3632570   0.5329561
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4604626   0.3108457   0.6100794
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4603175   0.3730070   0.5476279
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2068966   0.0589870   0.3548061
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1942857   0.1355156   0.2530558
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3500000   0.1404246   0.5595754
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8405797   0.7793372   0.9018222
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8695652   0.7719763   0.9671541
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3673259   0.2920325   0.4426193
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3737593   0.2687876   0.4787310
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4996175   0.4503243   0.5489107
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5894468   0.5149498   0.6639439
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7363184   0.6752779   0.7973589
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8571429   0.7510963   0.9631894
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6015102   0.5416345   0.6613859
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4766970   0.3828826   0.5705113
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2969431   0.2502134   0.3436729
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2443127   0.1519998   0.3366256
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2747898   0.2306762   0.3189033
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2821228   0.2177268   0.3465188
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2250878   0.2039249   0.2462508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2327543   0.1499863   0.3155222
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3527004   0.3313912   0.3740096
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.3497794   0.2805782   0.4189805
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.3186065   0.2608483   0.3763647
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.5811202   0.5170562   0.6451841
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5532619   0.5010582   0.6054655
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5963155   0.4869916   0.7056393
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3617040   0.3354877   0.3879203
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.6166587   0.4881470   0.7451703
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                0.3450065   0.3114307   0.3785822
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                0.3461538   0.1631727   0.5291350
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0745724   0.0611871   0.0879577
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0857937   0.0659070   0.1056804
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2407969   0.2306955   0.2508984
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2944261   0.2692211   0.3196311
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7718153   0.7413228   0.8023078
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7429576   0.6798145   0.8061007
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2494622   0.2371871   0.2617372
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.2408369   0.2156731   0.2660008
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6461690   0.6240788   0.6682592
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6067564   0.5575063   0.6560064
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2187031   0.2089825   0.2284237
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1930390   0.1668467   0.2192314
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3727245   0.3532028   0.3922461
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3881316   0.3288980   0.4473652


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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2537143   0.2459144   0.2615143
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4170534   0.3987495   0.4353574
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2165538   0.2071947   0.2259129
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3728692   0.3541664   0.3915720


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7603265   0.5289862   1.0928384
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.4989754   0.3065575   0.8121688
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.5326087   0.8618198   2.7254994
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.5203349   0.2425499   1.1162589
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0266876   0.9495361   1.1101078
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 1.0839269   0.9127501   1.2872061
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.0628694   0.7723203   1.4627239
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1940609   1.0349641   1.3776143
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1082580   0.9296242   1.3212174
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.8457848   0.7176658   0.9967757
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3007711   1.0628713   1.5919194
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0990476   0.9149580   1.3201760
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2525951   1.0381790   1.5112948
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.0834512   0.9308919   1.2610127
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.6203609   1.2675759   2.0713310
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0197541   0.8613420   1.2073003
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.6955128   0.4168474   1.1604680
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.2688907   0.8513103   1.8913007
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0                 1.5119951   1.0119362   2.2591634
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 0.8781825   0.7684308   1.0036095
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4785936   1.4021611   1.5591924
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0290859   0.9467204   1.1186173
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.0433523   0.9490368   1.1470408
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9844228   0.9180930   1.0555448
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1410471   1.0583248   1.2302353
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0976575   0.9565466   1.2595853
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7065789   0.3222139   1.5494483
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.6598793   0.2799238   1.5555687
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0934999   0.7965309   1.5011873
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 1.1801864   0.8925492   1.5605188
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.3088787   1.0448655   1.6396019
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.0776545   0.7358018   1.5783317
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0966549   0.7203639   1.6695061
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1883051   0.8661592   1.6302650
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.5765806   1.1175780   2.2241012
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5859524   1.2204939   2.0608421
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1554849   0.7760805   1.7203696
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.6301296   1.2801621   2.0757704
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.6759809   0.3875425   1.1790968
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.7032967   0.8951384   3.2410850
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0                 3.3709677   1.6493393   6.8896823
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 0.6472480   0.5364456   0.7809365
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.1345501   1.9774531   2.3041275
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9967804   0.7697184   1.2908243
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.3954605   1.1401237   1.7079814
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.2037378   1.0091524   1.4358434
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5081823   1.3658507   1.6653460
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4041112   0.9689008   2.0348092
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.0275739   0.7053808   1.4969336
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.4494649   0.2145253   0.9417011
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.8014706   0.9210392   3.5235157
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0344828   0.9049269   1.1825868
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 1.0175142   0.7187948   1.4403763
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1797962   1.0010800   1.3904176
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1640927   1.0030196   1.3510322
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    0                 0.7925003   0.6359109   0.9876489
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8227593   0.5463282   1.2390588
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0266860   0.7783849   1.3541941
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0340597   0.7159089   1.4935972
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 0.9917180   0.8065745   1.2193598
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 1.8239433   1.4752043   2.2551244
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0778177   0.8771701   1.3243623
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.7048711   1.3671692   2.1259880
6-24 months                  ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           1                    0                 1.0033256   0.5861521   1.7174079
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.1504757   0.9645786   1.3721997
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2227154   1.1117567   1.3447484
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9626106   0.8765798   1.0570847
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 0.9654245   0.8609509   1.0825757
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9390057   0.8601742   1.0250618
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.8826534   0.7675192   1.0150587
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0413365   0.8869061   1.2226568


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0233180   -0.0538262    0.0071902
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0367430   -0.0672085   -0.0062776
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0147531   -0.0089687    0.0384750
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0164614   -0.0322545   -0.0006684
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0063228   -0.0125586    0.0252042
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0102655   -0.0268044    0.0473355
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0054282   -0.0282633    0.0391198
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0078029   -0.0056091    0.0212148
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0136832   -0.0106341    0.0380006
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0130998   -0.0402889    0.0140894
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0022921   -0.0170234    0.0216077
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0037872   -0.0253326    0.0177582
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0014275   -0.0035181    0.0063731
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0037033   -0.0003660    0.0077727
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0119255    0.0046511    0.0191998
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0020904   -0.0161538    0.0203346
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0182412   -0.0418995    0.0054172
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0024643   -0.0024070    0.0073355
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0059025   -0.0012732    0.0130783
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0038422   -0.0080523    0.0003678
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0231258    0.0191537    0.0270979
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0070070   -0.0067737    0.0207877
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0027944   -0.0022594    0.0078482
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0020700   -0.0096459    0.0055059
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0039451    0.0014454    0.0064448
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0016688   -0.0036316    0.0069692
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0114821   -0.0347172    0.0117529
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0123308   -0.0345210    0.0098594
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0092801   -0.0241405    0.0427007
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0102240   -0.0262523    0.0467003
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0199293   -0.0013024    0.0411610
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0064322   -0.0271804    0.0400447
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0094031   -0.0029752    0.0217813
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0139963   -0.0091108    0.0371035
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0111088   -0.0043324    0.0265499
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0033225   -0.0148263    0.0214713
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012835   -0.0025140    0.0050810
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0080228    0.0036463    0.0123994
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0107980   -0.0242780    0.0026820
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0147465   -0.0083076    0.0378007
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.0074824    0.0000240    0.0149409
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0066847   -0.0108597   -0.0025097
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0265003    0.0228492    0.0301515
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0078198   -0.0223570    0.0067173
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0060647    0.0026795    0.0094500
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0028797   -0.0034983    0.0092578
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0068161    0.0046855    0.0089466
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0027251   -0.0008643    0.0063145
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0267229   -0.0626424    0.0091966
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0474142   -0.0831398   -0.0116887
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0159707   -0.0073222    0.0392635
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0072464   -0.0216144    0.0361072
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0113975   -0.0326198    0.0554149
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0034575   -0.0062403    0.0131554
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0208832   -0.0010346    0.0428011
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0275971   -0.0596891    0.0044949
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0028380   -0.0177486    0.0234247
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0119439   -0.0330270    0.0091392
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004761   -0.0048258    0.0057779
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0061085    0.0013157    0.0109013
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0437212    0.0270939    0.0603486
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0077710   -0.0141606    0.0297026
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0092997    0.0034319    0.0151675
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0000374   -0.0060315    0.0061064
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0022786   -0.0009116    0.0054689
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0051316    0.0012740    0.0089893
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0033821   -0.0161755    0.0094112
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0021372   -0.0070910    0.0028166
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0025952   -0.0114262    0.0062359
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0021493   -0.0049532    0.0006546
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0001448   -0.0050028    0.0052923


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0447788   -0.1054766    0.0125863
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0711046   -0.1327852   -0.0127825
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0568665   -0.0388056    0.1437275
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0336438   -0.0666848   -0.0016262
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0069834   -0.0141204    0.0276481
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                 0.0173352   -0.0473414    0.0780177
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0104429   -0.0565616    0.0731981
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0137847   -0.0106277    0.0376073
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0190086   -0.0154916    0.0523367
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0217645   -0.0680497    0.0225149
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0061059   -0.0466954    0.0562437
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0096228   -0.0659139    0.0436955
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0047827   -0.0119232    0.0212128
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0081865   -0.0008538    0.0171451
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0669783    0.0253749    0.1068058
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0032990   -0.0259154    0.0316816
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0241300   -0.0562877    0.0070486
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0079896   -0.0079293    0.0236571
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0198316   -0.0045632    0.0436339
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0240474   -0.0496622    0.0009423
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0709788    0.0587293    0.0830688
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0100499   -0.0099108    0.0296160
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0099241   -0.0081848    0.0277078
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0031138   -0.0145772    0.0082201
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0155494    0.0056723    0.0253284
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0040015   -0.0087911    0.0166319
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0541657   -0.1692499    0.0495914
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0585714   -0.1688579    0.0413090
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0241945   -0.0669639    0.1075646
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                 0.0297577   -0.0823686    0.1302684
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0330826   -0.0030895    0.0679502
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0147648   -0.0655158    0.0889967
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0487617   -0.0153671    0.1088402
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0613062   -0.0452153    0.1569718
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0697322   -0.0316850    0.1611800
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0174967   -0.0826396    0.1083710
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0093757   -0.0187450    0.0367201
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0332225    0.0149938    0.0511139
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0577691   -0.1319976    0.0115920
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0516129   -0.0323589    0.1287544
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.1004785   -0.0019149    0.1924075
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0732342   -0.1174285   -0.0307877
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1548738    0.1338460    0.1753911
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0356146   -0.1041078    0.0286296
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0828408    0.0359476    0.1274531
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0152383   -0.0190765    0.0483977
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0519668    0.0358397    0.0678240
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0318391   -0.0110964    0.0729513
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0634169   -0.1530602    0.0192571
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1148313   -0.2064463   -0.0301734
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0759582   -0.0406258    0.1794810
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0085470   -0.0261271    0.0420494
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0300946   -0.0933663    0.1396145
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0068728   -0.0128732    0.0262338
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0275795   -0.0021485    0.0564256
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0480859   -0.1059434    0.0067448
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0094670   -0.0616483    0.0758187
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0454407   -0.1289829    0.0319195
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0021106   -0.0216732    0.0253407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0170244    0.0035770    0.0302903
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1206676    0.0645656    0.1734050
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0138512   -0.0260542    0.0522046
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0250664    0.0091062    0.0407695
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0001085   -0.0176361    0.0175436
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0296502   -0.0114655    0.0690946
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0208663    0.0050641    0.0364175
6-24 months                  ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0044013   -0.0211946    0.0121158
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                -0.0086411   -0.0288723    0.0111922
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0040324   -0.0178532    0.0096006
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0099249   -0.0229712    0.0029549
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0003882   -0.0135133    0.0140991
