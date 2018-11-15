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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        perdiar24    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0       29    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       48    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       13    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                    1       29    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                     0        3    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                     1        2    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1       11     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                    0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                    1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                     0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                     1        6     23
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0       54    178
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       85    178
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                    0       16    178
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                    1       20    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                     0        1    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                     1        2    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0       11     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       49     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                    0        6     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                    1       20     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                     0        3     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                     1        4     93
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]               0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        9     34
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                    0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                    1       19     34
0-24 months   ki0047075b-MAL-ED          PERU                           0%                     0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           0%                     1        0     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0        9     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       38     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0        5     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       28     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        3     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       30     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        4     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2     45
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]               0       62    514
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]               1       58    514
0-24 months   ki1000109-EE               PAKISTAN                       >5%                    0       14    514
0-24 months   ki1000109-EE               PAKISTAN                       >5%                    1       14    514
0-24 months   ki1000109-EE               PAKISTAN                       0%                     0      224    514
0-24 months   ki1000109-EE               PAKISTAN                       0%                     1      142    514
0-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       33    200
0-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       28    200
0-24 months   ki1000109-ResPak           PAKISTAN                       >5%                    0       69    200
0-24 months   ki1000109-ResPak           PAKISTAN                       >5%                    1       59    200
0-24 months   ki1000109-ResPak           PAKISTAN                       0%                     0        7    200
0-24 months   ki1000109-ResPak           PAKISTAN                       0%                     1        4    200
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       23    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1        1    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0      150    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1       11    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       48    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1        1    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      137    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1      110    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                    0       56    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                    1      103    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                     0        9    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                     1        6    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0       84    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1      115    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                    0       33    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       56    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                     0       11    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                     1        8    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0       57    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       97    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0       35    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1       54    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0       25    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1       43    311
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0        6     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        7     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0       13     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1        9     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                     0        2     38
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        1     38
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               0      384    636
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               1       23    636
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    0      106    636
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    1       10    636
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     0      110    636
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     1        3    636
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       41    190
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       47    190
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                    0       37    190
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                    1       62    190
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                     0        2    190
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                     1        1    190
0-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]               0        4     13
0-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        3     13
0-24 months   ki1114097-CMIN             BRAZIL                         >5%                    0        3     13
0-24 months   ki1114097-CMIN             BRAZIL                         >5%                    1        3     13
0-24 months   ki1114097-CMIN             BRAZIL                         0%                     0        0     13
0-24 months   ki1114097-CMIN             BRAZIL                         0%                     1        0     13
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0       71    324
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1       49    324
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      130    324
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1       63    324
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       10    324
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        1    324
0-24 months   ki1114097-CMIN             PERU                           (0%, 5%]               0       10     94
0-24 months   ki1114097-CMIN             PERU                           (0%, 5%]               1       28     94
0-24 months   ki1114097-CMIN             PERU                           >5%                    0       11     94
0-24 months   ki1114097-CMIN             PERU                           >5%                    1       43     94
0-24 months   ki1114097-CMIN             PERU                           0%                     0        1     94
0-24 months   ki1114097-CMIN             PERU                           0%                     1        1     94
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]               0        2      9
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]               1        5      9
0-24 months   ki1114097-CONTENT          PERU                           >5%                    0        0      9
0-24 months   ki1114097-CONTENT          PERU                           >5%                    1        2      9
0-24 months   ki1114097-CONTENT          PERU                           0%                     0        0      9
0-24 months   ki1114097-CONTENT          PERU                           0%                     1        0      9
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0     1910   4059
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1      667   4059
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      360   4059
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1      106   4059
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                     0      726   4059
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                     1      290   4059
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0        9     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       28     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                    0        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                    1       20     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                     0        1     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                     1        1     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        8     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                    0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                    1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                     0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                     1        5     14
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0       17     83
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       44     83
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                    0        8     83
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                    1       12     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                     0        1     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                     1        1     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0        6     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       23     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                    0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                    1        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                     0        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                     1        2     43
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]               0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        2     11
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                    0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                    1        9     11
0-6 months    ki0047075b-MAL-ED          PERU                           0%                     0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0%                     1        0     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0        3     30
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       13     30
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        0     30
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0     30
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0        2     30
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       12     30
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       10     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        0     12
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]               0       18    216
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]               1       32    216
0-6 months    ki1000109-EE               PAKISTAN                       >5%                    0        2    216
0-6 months    ki1000109-EE               PAKISTAN                       >5%                    1       10    216
0-6 months    ki1000109-EE               PAKISTAN                       0%                     0       74    216
0-6 months    ki1000109-EE               PAKISTAN                       0%                     1       80    216
0-6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       14    112
0-6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       22    112
0-6 months    ki1000109-ResPak           PAKISTAN                       >5%                    0       23    112
0-6 months    ki1000109-ResPak           PAKISTAN                       >5%                    1       43    112
0-6 months    ki1000109-ResPak           PAKISTAN                       0%                     0        6    112
0-6 months    ki1000109-ResPak           PAKISTAN                       0%                     1        4    112
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       11     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0       51     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       16     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0       34    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1       86    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                    0       22    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       67    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                     0        8    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                     1        6    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0       21    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       90    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                    0        9    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       48    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                     0        9    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                     1        7    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0        8    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       89    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0       10    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1       46    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0        3    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1       42    198
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        2     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0        4     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1        2     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                     0        1     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        0     10
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       13     52
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       14     52
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                    0       10     52
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                    1       13     52
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                     0        2     52
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                     1        0     52
0-6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]               0        2      9
0-6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        3      9
0-6 months    ki1114097-CMIN             BRAZIL                         >5%                    0        2      9
0-6 months    ki1114097-CMIN             BRAZIL                         >5%                    1        2      9
0-6 months    ki1114097-CMIN             BRAZIL                         0%                     0        0      9
0-6 months    ki1114097-CMIN             BRAZIL                         0%                     1        0      9
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0       10     46
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1        5     46
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0       11     46
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1       16     46
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                     0        3     46
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        1     46
0-6 months    ki1114097-CMIN             PERU                           (0%, 5%]               0        6     52
0-6 months    ki1114097-CMIN             PERU                           (0%, 5%]               1       19     52
0-6 months    ki1114097-CMIN             PERU                           >5%                    0        4     52
0-6 months    ki1114097-CMIN             PERU                           >5%                    1       23     52
0-6 months    ki1114097-CMIN             PERU                           0%                     0        0     52
0-6 months    ki1114097-CMIN             PERU                           0%                     1        0     52
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]               0        0      4
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]               1        2      4
0-6 months    ki1114097-CONTENT          PERU                           >5%                    0        0      4
0-6 months    ki1114097-CONTENT          PERU                           >5%                    1        2      4
0-6 months    ki1114097-CONTENT          PERU                           0%                     0        0      4
0-6 months    ki1114097-CONTENT          PERU                           0%                     1        0      4
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0      338   1106
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1      386   1106
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0       64   1106
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1       56   1106
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                     0       86   1106
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                     1      176   1106
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       10     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                    1        9     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                     0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                     1        1     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                    0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                    1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                     0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                     1        1      9
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0       37     95
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       41     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                    0        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                    1        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                     0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                     1        1     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       26     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                    0        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                    1       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                     0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                     1        2     50
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]               0        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        7     23
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                    0        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                    1       10     23
6-24 months   ki0047075b-MAL-ED          PERU                           0%                     0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           0%                     1        0     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       25     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       16     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        3     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       20     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        4     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        4     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2     33
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]               0       44    298
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]               1       26    298
6-24 months   ki1000109-EE               PAKISTAN                       >5%                    0       12    298
6-24 months   ki1000109-EE               PAKISTAN                       >5%                    1        4    298
6-24 months   ki1000109-EE               PAKISTAN                       0%                     0      150    298
6-24 months   ki1000109-EE               PAKISTAN                       0%                     1       62    298
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       19     88
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1        6     88
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                    0       46     88
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                    1       16     88
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                     0        1     88
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                     1        0     88
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       12    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1        1    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0       99    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1       11    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       32    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1        1    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      103    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1       24    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                    0       34    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       36    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                     0        1    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                     1        0    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0       63    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                    0       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                    1        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                     0        2    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                     1        1    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0       49    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1        8    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0       25    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1        8    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0       22    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1        1    113
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0        5     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        5     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0        9     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1        7     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                     0        1     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        1     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               0      384    636
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               1       23    636
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    0      106    636
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    1       10    636
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     0      110    636
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     1        3    636
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       28    138
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       33    138
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                    0       27    138
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                    1       49    138
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                     0        0    138
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                     1        1    138
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]               0        2      4
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                    0        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                    1        1      4
6-24 months   ki1114097-CMIN             BRAZIL                         0%                     0        0      4
6-24 months   ki1114097-CMIN             BRAZIL                         0%                     1        0      4
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0       61    278
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1       44    278
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      119    278
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1       47    278
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                     0        7    278
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        0    278
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]               0        4     42
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]               1        9     42
6-24 months   ki1114097-CMIN             PERU                           >5%                    0        7     42
6-24 months   ki1114097-CMIN             PERU                           >5%                    1       20     42
6-24 months   ki1114097-CMIN             PERU                           0%                     0        1     42
6-24 months   ki1114097-CMIN             PERU                           0%                     1        1     42
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]               0        2      5
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]               1        3      5
6-24 months   ki1114097-CONTENT          PERU                           >5%                    0        0      5
6-24 months   ki1114097-CONTENT          PERU                           >5%                    1        0      5
6-24 months   ki1114097-CONTENT          PERU                           0%                     0        0      5
6-24 months   ki1114097-CONTENT          PERU                           0%                     1        0      5
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0     1572   2953
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1      281   2953
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      296   2953
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1       50   2953
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                     0      640   2953
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                     1      114   2953


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c27d37f7-b0fa-472c-96e2-41c0e8ab2142/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c27d37f7-b0fa-472c-96e2-41c0e8ab2142/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c27d37f7-b0fa-472c-96e2-41c0e8ab2142/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c27d37f7-b0fa-472c-96e2-41c0e8ab2142/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE            PAKISTAN     (0%, 5%]             NA                0.4833333   0.3417286   0.6249381
0-24 months   ki1000109-EE            PAKISTAN     >5%                  NA                0.5000000   0.2602715   0.7397285
0-24 months   ki1000109-EE            PAKISTAN     0%                   NA                0.3879781   0.3120634   0.4638929
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.4453441   0.3809000   0.5097883
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.6477987   0.5684298   0.7271677
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.4000000   0.0491643   0.7508357
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.5778894   0.5082896   0.6474893
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.6292135   0.5290178   0.7294092
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.4210526   0.1434352   0.6986701
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.6298701   0.5524797   0.7072606
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.6067416   0.5046515   0.7088317
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.6323529   0.5194878   0.7452181
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                0.2588281   0.2347524   0.2829038
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   >5%                  NA                0.2274678   0.1742449   0.2806907
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0%                   NA                0.2854331   0.2450335   0.3258326
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.7166667   0.6364129   0.7969204
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.7528090   0.6625804   0.8430376
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.4285714   0.1675904   0.6895524
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.8108108   0.7405599   0.8810617
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.8421053   0.7456069   0.9386036
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.4375000   0.1897118   0.6852882
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                0.5331492   0.4817093   0.5845891
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   >5%                  NA                0.4666667   0.3403187   0.5930146
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0%                   NA                0.6717557   0.5912717   0.7522398
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                0.1516460   0.1294577   0.1738342
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   >5%                  NA                0.1445087   0.0959922   0.1930251
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0%                   NA                0.1511936   0.1154578   0.1869295


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE            PAKISTAN     NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2618872   0.2425585   0.2812158
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1506942   0.1331077   0.1682807


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE            PAKISTAN     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE            PAKISTAN     >5%                  (0%, 5%]          1.0344828   0.5897971   1.8144452
0-24 months   ki1000109-EE            PAKISTAN     0%                   (0%, 5%]          0.8027134   0.5643474   1.1417592
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  (0%, 5%]          1.4546026   1.2034591   1.7581560
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   (0%, 5%]          0.8981818   0.3692324   2.1848859
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  (0%, 5%]          1.0888129   0.8915479   1.3297249
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   (0%, 5%]          0.7286041   0.3727394   1.4242230
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  (0%, 5%]          0.9632804   0.7818839   1.1867608
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   (0%, 5%]          1.0039418   0.8081094   1.2472310
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   >5%                  (0%, 5%]          0.8788374   0.6832065   1.1304857
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0%                   (0%, 5%]          1.1027901   0.9309548   1.3063427
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  (0%, 5%]          1.0504311   0.8915195   1.2376685
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   (0%, 5%]          0.5980066   0.3219626   1.1107250
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  (0%, 5%]          1.0385965   0.8996136   1.1990511
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   (0%, 5%]          0.5395833   0.3042456   0.9569577
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   >5%                  (0%, 5%]          0.8753022   0.6566465   1.1667678
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0%                   (0%, 5%]          1.2599771   1.0803263   1.4695025
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   >5%                  (0%, 5%]          0.9529344   0.6606705   1.3744885
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0%                   (0%, 5%]          0.9970171   0.7550209   1.3165769


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE            PAKISTAN     (0%, 5%]             NA                -0.0669909   -0.1892589   0.0552771
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.0748459    0.0310834   0.1186084
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                 0.0051724   -0.0372625   0.0476074
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                -0.0060759   -0.0607593   0.0486075
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                 0.0030591   -0.0116815   0.0177997
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                -0.0036622   -0.0587891   0.0514647
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                -0.0227673   -0.0716489   0.0261142
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                 0.0256212   -0.0043377   0.0555800
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                -0.0009518   -0.0145182   0.0126147


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE            PAKISTAN     (0%, 5%]             NA                -0.1609034   -0.4947222   0.0983631
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.1438818    0.0553233   0.2241385
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                 0.0088712   -0.0666177   0.0790174
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                -0.0097403   -0.1013117   0.0742172
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                 0.0116809   -0.0462279   0.0663843
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                -0.0051363   -0.0855144   0.0692901
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                -0.0288910   -0.0932132   0.0316467
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                 0.0458528   -0.0094591   0.0981339
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   (0%, 5%]             NA                -0.0063159   -0.1004970   0.0798051
