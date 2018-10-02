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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        perdiar24    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      112     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       36     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       76     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                    1       19     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                     0       17     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                     1        3     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       95     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        5     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                    0        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                    1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                     0      124     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                     1        6     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      118     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       73     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                    0       27     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                    1       15     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                     0       12     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                     1        1     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      113     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       30     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                    0       65     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                    1       14     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                     0       16     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                     1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      106     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        7     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                    0      148     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                    1       13     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                     0       28     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                     1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      158     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       24     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        3     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0       97     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       20     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      163     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       20     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       55     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        7     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0       13     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        3     261
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]               0       84     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]               1       76     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                    0       26     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                    1       16     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                     0      314     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                     1      238     754
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       43     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       37     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                    0       87     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                    1       82     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                     0       18     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                     1        6     273
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       33     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1       12     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0      173     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1      100     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       48     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1       31     397
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      242     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1      112     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      138     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       64     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                     0       41     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                     1        2     599
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      340     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       87     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      168     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       32     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                     0       57     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                     1        3     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      340     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       58     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      175     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1       28     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      131     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1       22     754
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       63     307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        8     307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      188     307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1       16     307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       30     307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        2     307
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               0     1365    2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               1      144    2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    0      374    2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    1       49    2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     0      390    2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     1       28    2350
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       69     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       51     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                    0       76     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                    1       63     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                     0        8     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                     1        1     268
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       67     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        2     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                    0       47     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                    1        2     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                     0        1     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                     1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      409    1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1       84    1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      774    1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1      136    1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       60    1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        8    1471
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]               0      372     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]               1       19     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                    0      438     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                    1       27     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                     0       70     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                     1        2     928
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]               0      136     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]               1        6     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                    0       66     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                    1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                     0        6     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                     1        0     215
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0     5028   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1     1712   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      704   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1      315   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                     0     2033   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                     1      705   10497
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      136     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       11     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       88     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                    1        7     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                     0       19     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                     1        1     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       97     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        3     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                    0        2     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                    1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                     0      126     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                     1        4     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      162     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       29     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                    0       32     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                    1        9     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                     0       13     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                     1        0     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      129     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       13     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                    0       77     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                    1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                     0       16     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                     1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      112     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                    0      157     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                    1        4     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                     0       28     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                     1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      174     301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1        7     301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        3     301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0     301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0      112     301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1        5     301
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      176     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        7     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       62     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0       15     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        1     261
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]               0      126     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]               1       34     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                    0       34     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                    1        8     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                     0      442     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                     1      102     746
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       63     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       16     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                    0      128     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                    1       40     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                     0       18     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                     1        6     271
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       36     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0      236     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       69     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1        0     341
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      316     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1       23     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      177     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       22     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                     0       42     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                     1        1     581
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      398     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       25     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      189     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       11     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                     0       60     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                     1        0     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      383     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       13     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      197     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1        4     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      149     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1        3     749
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       63     284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        2     284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      187     284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1        3     284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       29     284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        0     284
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0      102     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       17     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                    0      125     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                    1       14     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                     0        9     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                     1        0     267
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       68     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                    0       47     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                    1        1     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                     0        1     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                     1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      335     937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1        7     937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      553     937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1       11     937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       29     937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        2     937
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]               0      308     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]               1        8     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                    0      321     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                    1       10     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                     0       48     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                     1        0     695
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]               0      140     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]               1        2     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                    0       66     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                    1        1     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                     0        6     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                     1        0     215
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0     6180    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1      172    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      924    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1       32    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                     0     2556    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                     1       50    9914
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      114     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       28     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       78     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                    1       14     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                     0        4     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                     1        2     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       98     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        3     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                    0        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                    1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                     0      102     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                     1        2     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      137     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       53     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                    0       32     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                    1       10     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                     0        2     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                     1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      120     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       23     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                    0       66     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                    1       12     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                     0       13     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                     1        1     235
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      101     270
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        6     270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                    0      146     270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                    1       11     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                     0        6     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                     1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      157     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0       64     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       15     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      159     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       17     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       54     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        7     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        6     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2     245
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]               0      106     750
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]               1       56     750
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                    0       30     750
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                    1       12     750
6-24 months                   ki1000109-EE               PAKISTAN                       0%                     0      366     750
6-24 months                   ki1000109-EE               PAKISTAN                       0%                     1      180     750
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       44     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       25     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                    0       96     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                    1       58     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                     0        6     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                     1        1     230
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       35     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1       12     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0      176     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1      100     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       48     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1       31     402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      240     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1      102     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      128     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       56     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                     0       14     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                     1        1     541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      344     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       73     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      165     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       23     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                     0        7     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                     1        3     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      343     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       51     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      177     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1       25     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      114     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1       20     730
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       61     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        7     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      173     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1       14     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       20     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        2     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               0     1188    2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               1      368    2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    0      342    2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    1      101    2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     0      350    2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     1      104    2453
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       74     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       42     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                    0       79     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                    1       54     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                     0        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                     1        1     252
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       67     119
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        2     119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                    0       47     119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                    1        2     119
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                     0        1     119
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                     1        0     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      398    1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1       86    1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      759    1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1      147    1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       56    1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        7    1453
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]               0      370     878
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]               1       12     878
6-24 months                   ki1114097-CMIN             PERU                           >5%                    0      415     878
6-24 months                   ki1114097-CMIN             PERU                           >5%                    1       21     878
6-24 months                   ki1114097-CMIN             PERU                           0%                     0       58     878
6-24 months                   ki1114097-CMIN             PERU                           0%                     1        2     878
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]               0      138     215
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]               1        4     215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                    0       67     215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                    1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           0%                     0        6     215
6-24 months                   ki1114097-CONTENT          PERU                           0%                     1        0     215
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0     5145   10552
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1     1636   10552
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      726   10552
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1      305   10552
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                     0     2063   10552
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                     1      677   10552


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/53f638a9-b98d-42d0-bbe5-9fc2d30fdf0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53f638a9-b98d-42d0-bbe5-9fc2d30fdf0c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53f638a9-b98d-42d0-bbe5-9fc2d30fdf0c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53f638a9-b98d-42d0-bbe5-9fc2d30fdf0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.4754207   0.3667523   0.5840891
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        >5%                  NA                0.3787715   0.1726853   0.5848576
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        0%                   NA                0.4311577   0.3727623   0.4895531
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        (0%, 5%]             NA                0.4625000   0.3530426   0.5719574
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        >5%                  NA                0.4852071   0.4097185   0.5606957
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        0%                   NA                0.2500000   0.0764439   0.4235561
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.2074189   0.1011977   0.3136400
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.3622871   0.2966339   0.4279402
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.1074559   0.0726561   0.1422557
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.1379684   0.1048788   0.1710580
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.1142548   0.0734815   0.1550280
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.1064981   0.0612848   0.1517115
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                0.0955884   0.0724931   0.1186837
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  NA                0.1154220   0.0656032   0.1652409
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                0.0663151   0.0261992   0.1064311
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.1703854   0.1371863   0.2035845
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.1494505   0.1262780   0.1726231
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.1176471   0.0410428   0.1942513
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.2521308   0.2364642   0.2677974
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.2898185   0.2489086   0.3307284
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.2563429   0.2287224   0.2839633
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.2125000   0.1227384   0.3022616
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        >5%                  NA                0.1904762   0.0223031   0.3586493
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        0%                   NA                0.1875000   0.1410529   0.2339471
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        (0%, 5%]             NA                0.2025316   0.1137465   0.2913168
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        >5%                  NA                0.2380952   0.1735711   0.3026193
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        0%                   NA                0.2500000   0.0764415   0.4235585
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.0269501   0.0213544   0.0325457
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.0341377   0.0156981   0.0525773
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.0193535   0.0094104   0.0292966
6-24 months                   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.3456790   0.2419698   0.4493882
6-24 months                   ki1000109-EE               PAKISTAN        >5%                  NA                0.2857143   0.0922413   0.4791872
6-24 months                   ki1000109-EE               PAKISTAN        0%                   NA                0.3296703   0.2738322   0.3855084
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.1976488   0.0961797   0.2991180
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.3563834   0.2915292   0.4212375
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.1066900   0.0724562   0.1409238
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.1253408   0.0939297   0.1567520
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.1041390   0.0666747   0.1416033
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.1072109   0.0633920   0.1510297
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                0.2368435   0.2056689   0.2680181
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  NA                0.2253654   0.1737887   0.2769420
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                0.2305237   0.1024271   0.3586203
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.1776860   0.1436200   0.2117519
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.1622517   0.1382365   0.1862668
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.1111111   0.0334811   0.1887411
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.2403519   0.2247493   0.2559546
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.2823458   0.2394434   0.3252481
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.2468876   0.2197502   0.2740249


### Parameter: E(Y)


agecat                        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        NA                   NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.0940426   0.0721067   0.1159784
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.1549966   0.1364963   0.1734969
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2602648   0.2465010   0.2740287
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        NA                   NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0256203   0.0209093   0.0303314
6-24 months                   ki1000109-EE               PAKISTAN        NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.2335915   0.1982492   0.2689339
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.1651755   0.1460754   0.1842756
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2481046   0.2344735   0.2617358


### Parameter: RR


agecat                        studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        >5%                  (0%, 5%]          0.7967081   0.4417619   1.436846
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        0%                   (0%, 5%]          0.9068972   0.6957846   1.182065
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        >5%                  (0%, 5%]          1.0490964   0.7903386   1.392572
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        0%                   (0%, 5%]          0.5405405   0.2595926   1.125549
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  (0%, 5%]          1.7466447   1.0146852   3.006615
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           0%                   (0%, 5%]          0.5180623   0.2784287   0.963940
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  (0%, 5%]          0.8281225   0.5397424   1.270582
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      0%                   (0%, 5%]          0.7719023   0.4753279   1.253520
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  (0%, 5%]          1.2074900   0.7706569   1.891934
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   (0%, 5%]          0.6937572   0.3770032   1.276645
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   >5%                  (0%, 5%]          0.8771324   0.6837874   1.125147
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   0%                   (0%, 5%]          0.6904762   0.3499243   1.362459
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      >5%                  (0%, 5%]          1.1494765   0.9904559   1.334028
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      0%                   (0%, 5%]          1.0167057   0.8991224   1.149666
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        >5%                  (0%, 5%]          0.8963585   0.3368333   2.385330
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        0%                   (0%, 5%]          0.8823529   0.5407224   1.439827
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        >5%                  (0%, 5%]          1.1755952   0.7021524   1.968268
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        0%                   (0%, 5%]          1.2343750   0.5430833   2.805613
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      >5%                  (0%, 5%]          1.2667033   0.7056084   2.273977
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      0%                   (0%, 5%]          0.7181239   0.4104893   1.256310
6-24 months                   ki1000109-EE               PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN        >5%                  (0%, 5%]          0.8265306   0.3940966   1.733465
6-24 months                   ki1000109-EE               PAKISTAN        0%                   (0%, 5%]          0.9536892   0.6757428   1.345960
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  (0%, 5%]          1.8031140   1.0462448   3.107514
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           0%                   (0%, 5%]          0.5397960   0.2903525   1.003538
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  (0%, 5%]          0.8308469   0.5375190   1.284246
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      0%                   (0%, 5%]          0.8553548   0.5319260   1.375439
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  (0%, 5%]          0.9515369   0.7583200   1.193985
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   (0%, 5%]          0.9733165   0.5675127   1.669293
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   >5%                  (0%, 5%]          0.9131372   0.7167161   1.163389
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   0%                   (0%, 5%]          0.6253230   0.3030115   1.290475
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      >5%                  (0%, 5%]          1.1747181   1.0020659   1.377118
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      0%                   (0%, 5%]          1.0271919   0.9055563   1.165166


### Parameter: PAR


agecat                        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                -0.0377549   -0.1338941   0.0583843
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        (0%, 5%]             NA                -0.0046245   -0.0966290   0.0873800
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                 0.1527827    0.0499649   0.2556005
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                 0.0052676   -0.0169910   0.0275263
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                -0.0015458   -0.0146539   0.0115623
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                -0.0153888   -0.0419531   0.0111755
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                 0.0081340   -0.0017905   0.0180585
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        (0%, 5%]             NA                -0.0194705   -0.0982712   0.0593302
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        (0%, 5%]             NA                 0.0262506   -0.0498891   0.1023904
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                -0.0013297   -0.0051553   0.0024958
6-24 months                   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                -0.0150123   -0.1065683   0.0765436
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                 0.1580726    0.0597697   0.2563755
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                 0.0061660   -0.0149082   0.0272403
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                -0.0032520   -0.0246173   0.0181133
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                -0.0125105   -0.0399363   0.0149154
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                 0.0077527   -0.0019617   0.0174671


### Parameter: PAF


agecat                        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                -0.0862642   -0.3299210   0.1127519
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        (0%, 5%]             NA                -0.0101000   -0.2324215   0.1721160
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                 0.4241589    0.0601008   0.6472036
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                 0.0367760   -0.1318361   0.1802695
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                -0.0164375   -0.1668044   0.1145515
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                -0.0992847   -0.2844674   0.0592000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                 0.0312528   -0.0074092   0.0684309
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN        (0%, 5%]             NA                -0.1008681   -0.5947141   0.2400453
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        (0%, 5%]             NA                 0.1147407   -0.2885999   0.3918329
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                -0.0519012   -0.2143612   0.0888246
6-24 months                   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                -0.0454002   -0.3624171   0.1978509
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                 0.4443718    0.0924960   0.6598112
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                 0.0468875   -0.1273131   0.1941694
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                -0.0139218   -0.1107789   0.0744897
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                -0.0757404   -0.2551256   0.0780068
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                 0.0312477   -0.0084995   0.0694283
