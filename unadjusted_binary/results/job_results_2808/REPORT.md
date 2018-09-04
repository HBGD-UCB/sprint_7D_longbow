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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nrooms    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0      116     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1       28     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       42     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        8     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       26     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        2     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              0       12     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       18     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        1     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       43     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        7     174
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              0       93     174
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              1        9     174
Birth       ki0047075b-MAL-ED          INDIA                          1               0       63     191
Birth       ki0047075b-MAL-ED          INDIA                          1               1        6     191
Birth       ki0047075b-MAL-ED          INDIA                          2               0       51     191
Birth       ki0047075b-MAL-ED          INDIA                          2               1       17     191
Birth       ki0047075b-MAL-ED          INDIA                          3               0       27     191
Birth       ki0047075b-MAL-ED          INDIA                          3               1        5     191
Birth       ki0047075b-MAL-ED          INDIA                          4+              0       20     191
Birth       ki0047075b-MAL-ED          INDIA                          4+              1        2     191
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       33     171
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        3     171
Birth       ki0047075b-MAL-ED          NEPAL                          2               0       20     171
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        1     171
Birth       ki0047075b-MAL-ED          NEPAL                          3               0       13     171
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        4     171
Birth       ki0047075b-MAL-ED          NEPAL                          4+              0       87     171
Birth       ki0047075b-MAL-ED          NEPAL                          4+              1       10     171
Birth       ki0047075b-MAL-ED          PERU                           1               0       16     259
Birth       ki0047075b-MAL-ED          PERU                           1               1        1     259
Birth       ki0047075b-MAL-ED          PERU                           2               0       47     259
Birth       ki0047075b-MAL-ED          PERU                           2               1        4     259
Birth       ki0047075b-MAL-ED          PERU                           3               0       54     259
Birth       ki0047075b-MAL-ED          PERU                           3               1        5     259
Birth       ki0047075b-MAL-ED          PERU                           4+              0      111     259
Birth       ki0047075b-MAL-ED          PERU                           4+              1       21     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       14     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       19     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        2     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        2     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      142     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       18     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       19     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        5     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       29     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       48     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        7     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       32      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        6      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0       22      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        6      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0       16      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        1      90
Birth       ki1000108-IRC              INDIA                          1               0      156     386
Birth       ki1000108-IRC              INDIA                          1               1       19     386
Birth       ki1000108-IRC              INDIA                          2               0      141     386
Birth       ki1000108-IRC              INDIA                          2               1       20     386
Birth       ki1000108-IRC              INDIA                          3               0       28     386
Birth       ki1000108-IRC              INDIA                          3               1        5     386
Birth       ki1000108-IRC              INDIA                          4+              0       16     386
Birth       ki1000108-IRC              INDIA                          4+              1        1     386
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        1      27
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1114097-CONTENT          PERU                           2               0        1       2
Birth       ki1114097-CONTENT          PERU                           2               1        0       2
Birth       ki1114097-CONTENT          PERU                           3               0        0       2
Birth       ki1114097-CONTENT          PERU                           3               1        0       2
Birth       ki1114097-CONTENT          PERU                           4+              0        1       2
Birth       ki1114097-CONTENT          PERU                           4+              1        0       2
Birth       ki1135781-COHORTS          INDIA                          1               0     2705    4769
Birth       ki1135781-COHORTS          INDIA                          1               1      420    4769
Birth       ki1135781-COHORTS          INDIA                          2               0     1263    4769
Birth       ki1135781-COHORTS          INDIA                          2               1      122    4769
Birth       ki1135781-COHORTS          INDIA                          3               0      152    4769
Birth       ki1135781-COHORTS          INDIA                          3               1       15    4769
Birth       ki1135781-COHORTS          INDIA                          4+              0       84    4769
Birth       ki1135781-COHORTS          INDIA                          4+              1        8    4769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0    16646   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     8008   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     6754   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     3480   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     2208   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1      914   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              0      900   39178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              1      268   39178
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      708    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      304    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      294    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1      120    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0      124    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1       42    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              0       24    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              1       28    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      120     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1       30     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       40     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1       10     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       24     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        4     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              0       11     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       58     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              0      121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              1        5     209
6 months    ki0047075b-MAL-ED          INDIA                          1               0       64     235
6 months    ki0047075b-MAL-ED          INDIA                          1               1       20     235
6 months    ki0047075b-MAL-ED          INDIA                          2               0       59     235
6 months    ki0047075b-MAL-ED          INDIA                          2               1       19     235
6 months    ki0047075b-MAL-ED          INDIA                          3               0       43     235
6 months    ki0047075b-MAL-ED          INDIA                          3               1        5     235
6 months    ki0047075b-MAL-ED          INDIA                          4+              0       24     235
6 months    ki0047075b-MAL-ED          INDIA                          4+              1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       49     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+              0      123     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+              1        8     236
6 months    ki0047075b-MAL-ED          PERU                           1               0       12     270
6 months    ki0047075b-MAL-ED          PERU                           1               1        7     270
6 months    ki0047075b-MAL-ED          PERU                           2               0       41     270
6 months    ki0047075b-MAL-ED          PERU                           2               1        9     270
6 months    ki0047075b-MAL-ED          PERU                           3               0       54     270
6 months    ki0047075b-MAL-ED          PERU                           3               1        8     270
6 months    ki0047075b-MAL-ED          PERU                           4+              0      103     270
6 months    ki0047075b-MAL-ED          PERU                           4+              1       36     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       10     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       19     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      151     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       40     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       42     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       54     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       84     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1       24     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      143     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       55     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0       70     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       35     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1       16     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       10     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        4     369
6 months    ki1000108-IRC              INDIA                          1               0      140     405
6 months    ki1000108-IRC              INDIA                          1               1       43     405
6 months    ki1000108-IRC              INDIA                          2               0      123     405
6 months    ki1000108-IRC              INDIA                          2               1       47     405
6 months    ki1000108-IRC              INDIA                          3               0       29     405
6 months    ki1000108-IRC              INDIA                          3               1        6     405
6 months    ki1000108-IRC              INDIA                          4+              0       13     405
6 months    ki1000108-IRC              INDIA                          4+              1        4     405
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      346     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       69     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0       77     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1       14     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               0       49     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               1        7     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              1        4     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      261     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       78     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               0      141     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               1       43     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               0       87     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       76     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       15     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       56    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       24    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      180    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       50    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0      222    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1       60    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              0      430    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              1      104    1126
6 months    ki1114097-CONTENT          PERU                           1               0       36     215
6 months    ki1114097-CONTENT          PERU                           1               1        8     215
6 months    ki1114097-CONTENT          PERU                           2               0       50     215
6 months    ki1114097-CONTENT          PERU                           2               1        4     215
6 months    ki1114097-CONTENT          PERU                           3               0       36     215
6 months    ki1114097-CONTENT          PERU                           3               1        3     215
6 months    ki1114097-CONTENT          PERU                           4+              0       74     215
6 months    ki1114097-CONTENT          PERU                           4+              1        4     215
6 months    ki1135781-COHORTS          INDIA                          1               0     2448    4962
6 months    ki1135781-COHORTS          INDIA                          1               1      765    4962
6 months    ki1135781-COHORTS          INDIA                          2               0     1294    4962
6 months    ki1135781-COHORTS          INDIA                          2               1      180    4962
6 months    ki1135781-COHORTS          INDIA                          3               0      163    4962
6 months    ki1135781-COHORTS          INDIA                          3               1       19    4962
6 months    ki1135781-COHORTS          INDIA                          4+              0       87    4962
6 months    ki1135781-COHORTS          INDIA                          4+              1        6    4962
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0    14239   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     4993   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     6933   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1     2533   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     2673   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1      701   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              0     1272   33555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              1      211   33555
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     4089    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1     1489    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0     1817    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1      580    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      735    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1      222    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              0      416    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              1       93    9441
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       70     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       64     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              1        4     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       47     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              0      100     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              1        4     169
24 months   ki0047075b-MAL-ED          INDIA                          1               0       56     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1       26     227
24 months   ki0047075b-MAL-ED          INDIA                          2               0       33     227
24 months   ki0047075b-MAL-ED          INDIA                          2               1       41     227
24 months   ki0047075b-MAL-ED          INDIA                          3               0       29     227
24 months   ki0047075b-MAL-ED          INDIA                          3               1       17     227
24 months   ki0047075b-MAL-ED          INDIA                          4+              0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          4+              1       11     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1       10     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               0       25     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               1        6     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+              0      101     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+              1       26     228
24 months   ki0047075b-MAL-ED          PERU                           1               0        7     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        9     201
24 months   ki0047075b-MAL-ED          PERU                           2               0       20     201
24 months   ki0047075b-MAL-ED          PERU                           2               1       12     201
24 months   ki0047075b-MAL-ED          PERU                           3               0       29     201
24 months   ki0047075b-MAL-ED          PERU                           3               1       14     201
24 months   ki0047075b-MAL-ED          PERU                           4+              0       71     201
24 months   ki0047075b-MAL-ED          PERU                           4+              1       39     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       63     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1       43     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       36     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1       69     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       46     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1      155     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       35     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1       71     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        8     372
24 months   ki1000108-IRC              INDIA                          1               0      102     407
24 months   ki1000108-IRC              INDIA                          1               1       82     407
24 months   ki1000108-IRC              INDIA                          2               0      109     407
24 months   ki1000108-IRC              INDIA                          2               1       61     407
24 months   ki1000108-IRC              INDIA                          3               0       18     407
24 months   ki1000108-IRC              INDIA                          3               1       18     407
24 months   ki1000108-IRC              INDIA                          4+              0        9     407
24 months   ki1000108-IRC              INDIA                          4+              1        8     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      262     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1      144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0       65     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       27     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       43     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1       14     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              1        5     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      150     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       67     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               0       94     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               1       43     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               0       69     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               1        9     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       69     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       13     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       32     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       40     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      112     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1      104     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0      130     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1      106     998
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              0      278     998
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              1      196     998
24 months   ki1114097-CONTENT          PERU                           1               0       23     164
24 months   ki1114097-CONTENT          PERU                           1               1        7     164
24 months   ki1114097-CONTENT          PERU                           2               0       32     164
24 months   ki1114097-CONTENT          PERU                           2               1        7     164
24 months   ki1114097-CONTENT          PERU                           3               0       30     164
24 months   ki1114097-CONTENT          PERU                           3               1        2     164
24 months   ki1114097-CONTENT          PERU                           4+              0       58     164
24 months   ki1114097-CONTENT          PERU                           4+              1        5     164
24 months   ki1135781-COHORTS          INDIA                          1               0      943    3749
24 months   ki1135781-COHORTS          INDIA                          1               1     1359    3749
24 months   ki1135781-COHORTS          INDIA                          2               0      796    3749
24 months   ki1135781-COHORTS          INDIA                          2               1      425    3749
24 months   ki1135781-COHORTS          INDIA                          3               0       97    3749
24 months   ki1135781-COHORTS          INDIA                          3               1       53    3749
24 months   ki1135781-COHORTS          INDIA                          4+              0       63    3749
24 months   ki1135781-COHORTS          INDIA                          4+              1       13    3749
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     4828   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     5255   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     2475   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1     2315   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0      936   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      661   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              0      520   17202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              1      212   17202
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     3085    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     2363    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0     1494    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1      878    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      687    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1      271    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              0      360    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              1      132    9270


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d89c4ab0-4aa6-4b91-8a5f-870073c84805/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d89c4ab0-4aa6-4b91-8a5f-870073c84805/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d89c4ab0-4aa6-4b91-8a5f-870073c84805/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d89c4ab0-4aa6-4b91-8a5f-870073c84805/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA          1                    NA                0.1344000   0.1224401   0.1463599
Birth       ki1135781-COHORTS          INDIA          2                    NA                0.0880866   0.0731587   0.1030146
Birth       ki1135781-COHORTS          INDIA          3                    NA                0.0898204   0.0464507   0.1331901
Birth       ki1135781-COHORTS          INDIA          4+                   NA                0.0869565   0.0293732   0.1445398
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.3248154   0.3153610   0.3342699
Birth       kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.3400430   0.3256895   0.3543965
Birth       kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.2927611   0.2676177   0.3179044
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.2294521   0.1902132   0.2686909
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.3003953   0.2572078   0.3435827
Birth       kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.2898551   0.2171612   0.3625490
Birth       kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2530120   0.1415517   0.3644724
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.5384615   0.2737918   0.8031312
6 months    ki0047075b-MAL-ED          PERU           1                    NA                0.3684211   0.1511194   0.5857227
6 months    ki0047075b-MAL-ED          PERU           2                    NA                0.1800000   0.0733129   0.2866871
6 months    ki0047075b-MAL-ED          PERU           3                    NA                0.1290323   0.0454319   0.2126326
6 months    ki0047075b-MAL-ED          PERU           4+                   NA                0.2589928   0.1860300   0.3319556
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.2300885   0.1852532   0.2749238
6 months    ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.2336957   0.1725073   0.2948840
6 months    ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.1386139   0.0711776   0.2060501
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1648352   0.0885496   0.2411207
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                0.3000000   0.1578608   0.4421392
6 months    ki1113344-GMS-Nepal        NEPAL          2                    NA                0.2173913   0.1419379   0.2928447
6 months    ki1113344-GMS-Nepal        NEPAL          3                    NA                0.2127660   0.1451534   0.2803785
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.1947566   0.1472134   0.2422997
6 months    ki1135781-COHORTS          INDIA          1                    NA                0.2380952   0.2233666   0.2528239
6 months    ki1135781-COHORTS          INDIA          2                    NA                0.1221167   0.1054000   0.1388333
6 months    ki1135781-COHORTS          INDIA          3                    NA                0.1043956   0.0599677   0.1488235
6 months    ki1135781-COHORTS          INDIA          4+                   NA                0.0645161   0.0145814   0.1144509
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.2596194   0.2494206   0.2698182
6 months    kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.2675893   0.2539874   0.2811911
6 months    kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.2077653   0.1863987   0.2291319
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.1422792   0.1150499   0.1695085
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.2669416   0.2486609   0.2852222
6 months    kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.2419691   0.2152073   0.2687309
6 months    kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2319749   0.1907231   0.2732268
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.1827112   0.1098304   0.2555920
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                0.3170732   0.2161324   0.4180140
24 months   ki0047075b-MAL-ED          INDIA          2                    NA                0.5540541   0.4405509   0.6675573
24 months   ki0047075b-MAL-ED          INDIA          3                    NA                0.3695652   0.2297696   0.5093608
24 months   ki0047075b-MAL-ED          INDIA          4+                   NA                0.4400000   0.2449899   0.6350101
24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                0.2083333   0.0931917   0.3234750
24 months   ki0047075b-MAL-ED          NEPAL          2                    NA                0.1935484   0.0541667   0.3329301
24 months   ki0047075b-MAL-ED          NEPAL          3                    NA                0.3181818   0.1231241   0.5132396
24 months   ki0047075b-MAL-ED          NEPAL          4+                   NA                0.2047244   0.1343938   0.2750550
24 months   ki0047075b-MAL-ED          PERU           1                    NA                0.5625000   0.3188191   0.8061809
24 months   ki0047075b-MAL-ED          PERU           2                    NA                0.3750000   0.2068442   0.5431558
24 months   ki0047075b-MAL-ED          PERU           3                    NA                0.3255814   0.1851735   0.4659893
24 months   ki0047075b-MAL-ED          PERU           4+                   NA                0.3545455   0.2649257   0.4441652
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                0.3846154   0.1195962   0.6496346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   2                    NA                0.2631579   0.0647399   0.4615759
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   3                    NA                0.4782609   0.2736835   0.6828382
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   NA                0.3442623   0.2752786   0.4132460
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.7711443   0.7129898   0.8292988
24 months   ki1000108-CMC-V-BCS-2002   INDIA          2                    NA                0.6698113   0.5801641   0.7594586
24 months   ki1000108-CMC-V-BCS-2002   INDIA          3                    NA                0.6274510   0.4945803   0.7603217
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   NA                0.5714286   0.3118546   0.8310026
24 months   ki1000108-IRC              INDIA          1                    NA                0.4456522   0.3737466   0.5175577
24 months   ki1000108-IRC              INDIA          2                    NA                0.3588235   0.2866319   0.4310152
24 months   ki1000108-IRC              INDIA          3                    NA                0.5000000   0.3364686   0.6635314
24 months   ki1000108-IRC              INDIA          4+                   NA                0.4705882   0.2330272   0.7081492
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                0.3546798   0.3081032   0.4012564
24 months   ki1017093b-PROVIDE         BANGLADESH     2                    NA                0.2934783   0.2003500   0.3866065
24 months   ki1017093b-PROVIDE         BANGLADESH     3                    NA                0.2456140   0.1337705   0.3574575
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   NA                0.2272727   0.0520057   0.4025397
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.3087558   0.2472290   0.3702826
24 months   ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.3138686   0.2360850   0.3916523
24 months   ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.1153846   0.0444146   0.1863546
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1585366   0.0794056   0.2376675
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                0.5555556   0.3930737   0.7180374
24 months   ki1113344-GMS-Nepal        NEPAL          2                    NA                0.4814815   0.3871528   0.5758102
24 months   ki1113344-GMS-Nepal        NEPAL          3                    NA                0.4491525   0.3593155   0.5389896
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.4135021   0.3507423   0.4762619
24 months   ki1135781-COHORTS          INDIA          1                    NA                0.5903562   0.5702647   0.6104478
24 months   ki1135781-COHORTS          INDIA          2                    NA                0.3480753   0.3213525   0.3747982
24 months   ki1135781-COHORTS          INDIA          3                    NA                0.3533333   0.2768278   0.4298389
24 months   ki1135781-COHORTS          INDIA          4+                   NA                0.1710526   0.0863830   0.2557222
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.5211743   0.5049712   0.5373773
24 months   kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.4832985   0.4613950   0.5052021
24 months   kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.4139011   0.3749634   0.4528387
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.2896175   0.2378381   0.3413969
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.4337372   0.4119236   0.4555507
24 months   kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.3701518   0.3378326   0.4024710
24 months   kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2828810   0.2380076   0.3277544
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.2682927   0.2050741   0.3315113


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA          NA                   NA                0.1184735   0.1093005   0.1276464
Birth       kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.3233958   0.3157274   0.3310641
Birth       kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1954857   0.1844503   0.2065211
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2514677   0.2433410   0.2595945
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2525156   0.2383895   0.2666417
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA          NA                   NA                0.4152334   0.3673018   0.4631651
24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.4934649   0.4774590   0.5094709
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4908150   0.4776907   0.5039394
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3930960   0.3759134   0.4102786


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA          2                    1                 0.6554066   0.5412298   0.7936699
Birth       ki1135781-COHORTS          INDIA          3                    1                 0.6683062   0.4090207   1.0919576
Birth       ki1135781-COHORTS          INDIA          4+                   1                 0.6469979   0.3316841   1.2620634
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     2                    1                 1.0468806   0.9963059   1.1000226
Birth       kiGH5241-JiVitA-3          BANGLADESH     3                    1                 0.9013151   0.8235129   0.9864676
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   1                 0.7064075   0.5930771   0.8413939
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH     2                    1                 0.9649123   0.7231208   1.2875522
Birth       kiGH5241-JiVitA-4          BANGLADESH     3                    1                 0.8422638   0.5308383   1.3363925
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   1                 1.7925101   1.0707991   3.0006493
6 months    ki0047075b-MAL-ED          PERU           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU           2                    1                 0.4885714   0.2117300   1.1273891
6 months    ki0047075b-MAL-ED          PERU           3                    1                 0.3502304   0.1458278   0.8411381
6 months    ki0047075b-MAL-ED          PERU           4+                   1                 0.7029805   0.3656530   1.3515042
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     2                    1                 1.0156773   0.7328408   1.4076731
6 months    ki1017093c-NIH-Crypto      BANGLADESH     3                    1                 0.6024372   0.3567037   1.0174565
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   1                 0.7163990   0.4335851   1.1836835
6 months    ki1113344-GMS-Nepal        NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL          2                    1                 0.7246377   0.4027619   1.3037475
6 months    ki1113344-GMS-Nepal        NEPAL          3                    1                 0.7092199   0.4008824   1.2547142
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   1                 0.6491885   0.3809755   1.1062280
6 months    ki1135781-COHORTS          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA          2                    1                 0.5128901   0.4413519   0.5960238
6 months    ki1135781-COHORTS          INDIA          3                    1                 0.4384615   0.2852105   0.6740583
6 months    ki1135781-COHORTS          INDIA          4+                   1                 0.2709677   0.1246542   0.5890177
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     2                    1                 1.0306983   0.9706146   1.0945014
6 months    kiGH5241-JiVitA-3          BANGLADESH     3                    1                 0.8002687   0.7187656   0.8910137
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   1                 0.5480298   0.4519665   0.6645109
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     2                    1                 0.9064498   0.7965388   1.0315270
6 months    kiGH5241-JiVitA-4          BANGLADESH     3                    1                 0.8690101   0.7180520   1.0517047
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   1                 0.6844614   0.4574512   1.0241256
24 months   ki0047075b-MAL-ED          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA          2                    1                 1.7474012   1.1966904   2.5515465
24 months   ki0047075b-MAL-ED          INDIA          3                    1                 1.1655518   0.7109093   1.9109485
24 months   ki0047075b-MAL-ED          INDIA          4+                   1                 1.3876923   0.8040864   2.3948793
24 months   ki0047075b-MAL-ED          NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL          2                    1                 0.9290323   0.3747911   2.3028854
24 months   ki0047075b-MAL-ED          NEPAL          3                    1                 1.5272727   0.6690422   3.4864199
24 months   ki0047075b-MAL-ED          NEPAL          4+                   1                 0.9826772   0.5126187   1.8837676
24 months   ki0047075b-MAL-ED          PERU           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU           2                    1                 0.6666667   0.3573779   1.2436259
24 months   ki0047075b-MAL-ED          PERU           3                    1                 0.5788114   0.3140987   1.0666157
24 months   ki0047075b-MAL-ED          PERU           4+                   1                 0.6303030   0.3817009   1.0408199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   2                    1                 0.6842105   0.2463740   1.9001355
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   3                    1                 1.2434783   0.5526044   2.7980924
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   1                 0.8950820   0.4367323   1.8344688
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          2                    1                 0.8685940   0.7449017   1.0128257
24 months   ki1000108-CMC-V-BCS-2002   INDIA          3                    1                 0.8136622   0.6498589   1.0187538
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   1                 0.7410138   0.4675693   1.1743747
24 months   ki1000108-IRC              INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA          2                    1                 0.8051650   0.6221307   1.0420490
24 months   ki1000108-IRC              INDIA          3                    1                 1.1219512   0.7790912   1.6156960
24 months   ki1000108-IRC              INDIA          4+                   1                 1.0559541   0.6215552   1.7939503
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH     2                    1                 0.8274457   0.5869375   1.1665062
24 months   ki1017093b-PROVIDE         BANGLADESH     3                    1                 0.6924951   0.4311177   1.1123401
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   1                 0.6407828   0.2930709   1.4010350
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     2                    1                 1.0165595   0.7396495   1.3971392
24 months   ki1017093c-NIH-Crypto      BANGLADESH     3                    1                 0.3737084   0.1957674   0.7133873
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   1                 0.5134692   0.2999896   0.8788661
24 months   ki1113344-GMS-Nepal        NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL          2                    1                 0.8666667   0.6094963   1.2323474
24 months   ki1113344-GMS-Nepal        NEPAL          3                    1                 0.8084746   0.5672663   1.1522475
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   1                 0.7443038   0.5353629   1.0347900
24 months   ki1135781-COHORTS          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA          2                    1                 0.5896022   0.5421104   0.6412546
24 months   ki1135781-COHORTS          INDIA          3                    1                 0.5985087   0.4807069   0.7451790
24 months   ki1135781-COHORTS          INDIA          4+                   1                 0.2897448   0.1764152   0.4758776
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     2                    1                 0.9273262   0.8795863   0.9776572
24 months   kiGH5241-JiVitA-3          BANGLADESH     3                    1                 0.7941702   0.7215327   0.8741203
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   1                 0.5557018   0.4647491   0.6644542
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     2                    1                 0.8534011   0.7729882   0.9421793
24 months   kiGH5241-JiVitA-4          BANGLADESH     3                    1                 0.6521945   0.5537694   0.7681135
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   1                 0.6185605   0.4873205   0.7851447


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA          1                    NA                -0.0159265   -0.0222291   -0.0096240
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0014197   -0.0069429    0.0041036
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    NA                 0.0000914   -0.0286091    0.0287918
6 months    ki0047075b-MAL-ED          PERU           1                    NA                -0.1461988   -0.3536656    0.0612680
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                -0.0202983   -0.0518569    0.0112603
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.0886323   -0.2245444    0.0472798
6 months    ki1135781-COHORTS          INDIA          1                    NA                -0.0426095   -0.0502106   -0.0350085
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0081516   -0.0140881   -0.0022152
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0144259   -0.0258987   -0.0029532
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                 0.1014290    0.0179766    0.1848814
24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                 0.0065789   -0.0960405    0.1091984
24 months   ki0047075b-MAL-ED          PERU           1                    NA                -0.1943408   -0.4275676    0.0388860
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                -0.0316742   -0.2890923    0.2257439
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.0560905   -0.0989505   -0.0132305
24 months   ki1000108-IRC              INDIA          1                    NA                -0.0304188   -0.0832666    0.0224290
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                -0.0253904   -0.0496680   -0.0011127
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                -0.0519464   -0.0968728   -0.0070200
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.1086618   -0.2651794    0.0478559
24 months   ki1135781-COHORTS          INDIA          1                    NA                -0.0968913   -0.1097026   -0.0840800
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0303592   -0.0398464   -0.0208721
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0406411   -0.0539043   -0.0273780


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA          1                    NA                -0.1344312   -0.1881499   -0.0831412
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0043899   -0.0216149    0.0125448
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    NA                 0.0003040   -0.0999165    0.0913929
6 months    ki0047075b-MAL-ED          PERU           1                    NA                -0.6578947   -1.9104416    0.0556021
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                -0.0967552   -0.2576867    0.0435838
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.4193277   -1.2314143    0.0972133
6 months    ki1135781-COHORTS          INDIA          1                    NA                -0.2179676   -0.2566491   -0.1804767
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0324163   -0.0562889   -0.0090832
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0571289   -0.1036394   -0.0125784
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                 0.2423620    0.0138415    0.4179279
24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                 0.0306122   -0.5863776    0.4076362
24 months   ki0047075b-MAL-ED          PERU           1                    NA                -0.5278716   -1.3214412   -0.0055786
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                -0.0897436   -1.1281603    0.4419870
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.0784424   -0.1410597   -0.0192613
24 months   ki1000108-IRC              INDIA          1                    NA                -0.0732570   -0.2085489    0.0468895
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                -0.0771066   -0.1534495   -0.0058165
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                -0.2022762   -0.3900887   -0.0398387
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.2431490   -0.6487751    0.0626863
24 months   ki1135781-COHORTS          INDIA          1                    NA                -0.1963489   -0.2236370   -0.1696693
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0618547   -0.0814311   -0.0426327
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.1033873   -0.1379119   -0.0699102
