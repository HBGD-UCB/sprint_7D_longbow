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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nchldlt5
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      120     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1       30     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       40     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1       10     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       24     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        4     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              0       11     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              1        1     240
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       70     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       64     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              1        4     212
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        3     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       18     174
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        1     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       43     174
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        7     174
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              0       93     174
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              1        9     174
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       58     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              0      121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              1        5     209
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       47     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              0      100     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              1        4     169
Birth       ki0047075b-MAL-ED          INDIA                          1               0       63     191
Birth       ki0047075b-MAL-ED          INDIA                          1               1        6     191
Birth       ki0047075b-MAL-ED          INDIA                          2               0       51     191
Birth       ki0047075b-MAL-ED          INDIA                          2               1       17     191
Birth       ki0047075b-MAL-ED          INDIA                          3               0       27     191
Birth       ki0047075b-MAL-ED          INDIA                          3               1        5     191
Birth       ki0047075b-MAL-ED          INDIA                          4+              0       20     191
Birth       ki0047075b-MAL-ED          INDIA                          4+              1        2     191
6 months    ki0047075b-MAL-ED          INDIA                          1               0       64     235
6 months    ki0047075b-MAL-ED          INDIA                          1               1       20     235
6 months    ki0047075b-MAL-ED          INDIA                          2               0       59     235
6 months    ki0047075b-MAL-ED          INDIA                          2               1       19     235
6 months    ki0047075b-MAL-ED          INDIA                          3               0       43     235
6 months    ki0047075b-MAL-ED          INDIA                          3               1        5     235
6 months    ki0047075b-MAL-ED          INDIA                          4+              0       24     235
6 months    ki0047075b-MAL-ED          INDIA                          4+              1        1     235
24 months   ki0047075b-MAL-ED          INDIA                          1               0       56     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1       26     227
24 months   ki0047075b-MAL-ED          INDIA                          2               0       33     227
24 months   ki0047075b-MAL-ED          INDIA                          2               1       41     227
24 months   ki0047075b-MAL-ED          INDIA                          3               0       29     227
24 months   ki0047075b-MAL-ED          INDIA                          3               1       17     227
24 months   ki0047075b-MAL-ED          INDIA                          4+              0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          4+              1       11     227
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       49     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+              0      123     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+              1        8     236
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       38     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1       10     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               0       25     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               1        6     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+              0      101     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+              1       26     228
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
6 months    ki0047075b-MAL-ED          PERU                           1               0       12     270
6 months    ki0047075b-MAL-ED          PERU                           1               1        7     270
6 months    ki0047075b-MAL-ED          PERU                           2               0       41     270
6 months    ki0047075b-MAL-ED          PERU                           2               1        9     270
6 months    ki0047075b-MAL-ED          PERU                           3               0       54     270
6 months    ki0047075b-MAL-ED          PERU                           3               1        8     270
6 months    ki0047075b-MAL-ED          PERU                           4+              0      103     270
6 months    ki0047075b-MAL-ED          PERU                           4+              1       36     270
24 months   ki0047075b-MAL-ED          PERU                           1               0        7     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        9     201
24 months   ki0047075b-MAL-ED          PERU                           2               0       20     201
24 months   ki0047075b-MAL-ED          PERU                           2               1       12     201
24 months   ki0047075b-MAL-ED          PERU                           3               0       29     201
24 months   ki0047075b-MAL-ED          PERU                           3               1       14     201
24 months   ki0047075b-MAL-ED          PERU                           4+              0       71     201
24 months   ki0047075b-MAL-ED          PERU                           4+              1       39     201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       14     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       19     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        2     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        2     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      142     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       18     218
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       10     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       19     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        2     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      151     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       40     249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1       63     238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       19     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        5     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       29     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       48     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        7     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       42     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       54     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       84     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1       24     247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1       43     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1       36     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       29     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1       69     214
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      143     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       55     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0       70     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       35     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1       16     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       10     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        4     369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       46     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1      155     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       35     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1       71     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        8     372
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       32      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        6      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0       22      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        6      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0       16      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        1      90
6 months    ki1000108-IRC              INDIA                          1               0      140     405
6 months    ki1000108-IRC              INDIA                          1               1       43     405
6 months    ki1000108-IRC              INDIA                          2               0      123     405
6 months    ki1000108-IRC              INDIA                          2               1       47     405
6 months    ki1000108-IRC              INDIA                          3               0       29     405
6 months    ki1000108-IRC              INDIA                          3               1        6     405
6 months    ki1000108-IRC              INDIA                          4+              0       13     405
6 months    ki1000108-IRC              INDIA                          4+              1        4     405
24 months   ki1000108-IRC              INDIA                          1               0      102     407
24 months   ki1000108-IRC              INDIA                          1               1       82     407
24 months   ki1000108-IRC              INDIA                          2               0      109     407
24 months   ki1000108-IRC              INDIA                          2               1       61     407
24 months   ki1000108-IRC              INDIA                          3               0       18     407
24 months   ki1000108-IRC              INDIA                          3               1       18     407
24 months   ki1000108-IRC              INDIA                          4+              0        9     407
24 months   ki1000108-IRC              INDIA                          4+              1        8     407
Birth       ki1000108-IRC              INDIA                          1               0      156     386
Birth       ki1000108-IRC              INDIA                          1               1       19     386
Birth       ki1000108-IRC              INDIA                          2               0      141     386
Birth       ki1000108-IRC              INDIA                          2               1       20     386
Birth       ki1000108-IRC              INDIA                          3               0       28     386
Birth       ki1000108-IRC              INDIA                          3               1        5     386
Birth       ki1000108-IRC              INDIA                          4+              0       16     386
Birth       ki1000108-IRC              INDIA                          4+              1        1     386
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      346     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       69     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0       77     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1       14     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               0       49     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               1        7     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              1        4     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      262     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1      144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0       65     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       27     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       43     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1       14     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              0       17     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              1        5     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              0        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        1      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      261     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       78     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               0      141     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               1       43     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               0       87     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       76     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       15     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      150     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       67     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               0       94     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               1       43     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               0       69     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               1        9     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       69     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              1       13     514
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       28     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       12     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0       90     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       25     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0      111     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1       30     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              0      215     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              1       52     563
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       16     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       20     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       56     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       52     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0       65     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1       53     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              0      139     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              1       98     499
6 months    ki1114097-CONTENT          PERU                           1               0       36     215
6 months    ki1114097-CONTENT          PERU                           1               1        8     215
6 months    ki1114097-CONTENT          PERU                           2               0       50     215
6 months    ki1114097-CONTENT          PERU                           2               1        4     215
6 months    ki1114097-CONTENT          PERU                           3               0       36     215
6 months    ki1114097-CONTENT          PERU                           3               1        3     215
6 months    ki1114097-CONTENT          PERU                           4+              0       74     215
6 months    ki1114097-CONTENT          PERU                           4+              1        4     215
24 months   ki1114097-CONTENT          PERU                           1               0       23     164
24 months   ki1114097-CONTENT          PERU                           1               1        7     164
24 months   ki1114097-CONTENT          PERU                           2               0       32     164
24 months   ki1114097-CONTENT          PERU                           2               1        7     164
24 months   ki1114097-CONTENT          PERU                           3               0       30     164
24 months   ki1114097-CONTENT          PERU                           3               1        2     164
24 months   ki1114097-CONTENT          PERU                           4+              0       58     164
24 months   ki1114097-CONTENT          PERU                           4+              1        5     164
Birth       ki1114097-CONTENT          PERU                           2               0        1       2
Birth       ki1114097-CONTENT          PERU                           4+              0        1       2
Birth       ki1135781-COHORTS          INDIA                          1               0     2705    4769
Birth       ki1135781-COHORTS          INDIA                          1               1      420    4769
Birth       ki1135781-COHORTS          INDIA                          2               0     1263    4769
Birth       ki1135781-COHORTS          INDIA                          2               1      122    4769
Birth       ki1135781-COHORTS          INDIA                          3               0      152    4769
Birth       ki1135781-COHORTS          INDIA                          3               1       15    4769
Birth       ki1135781-COHORTS          INDIA                          4+              0       84    4769
Birth       ki1135781-COHORTS          INDIA                          4+              1        8    4769
6 months    ki1135781-COHORTS          INDIA                          1               0     2448    4962
6 months    ki1135781-COHORTS          INDIA                          1               1      765    4962
6 months    ki1135781-COHORTS          INDIA                          2               0     1294    4962
6 months    ki1135781-COHORTS          INDIA                          2               1      180    4962
6 months    ki1135781-COHORTS          INDIA                          3               0      163    4962
6 months    ki1135781-COHORTS          INDIA                          3               1       19    4962
6 months    ki1135781-COHORTS          INDIA                          4+              0       87    4962
6 months    ki1135781-COHORTS          INDIA                          4+              1        6    4962
24 months   ki1135781-COHORTS          INDIA                          1               0      943    3749
24 months   ki1135781-COHORTS          INDIA                          1               1     1359    3749
24 months   ki1135781-COHORTS          INDIA                          2               0      796    3749
24 months   ki1135781-COHORTS          INDIA                          2               1      425    3749
24 months   ki1135781-COHORTS          INDIA                          3               0       97    3749
24 months   ki1135781-COHORTS          INDIA                          3               1       53    3749
24 months   ki1135781-COHORTS          INDIA                          4+              0       63    3749
24 months   ki1135781-COHORTS          INDIA                          4+              1       13    3749
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     8323   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     4004   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     3377   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     1740   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     1104   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1      457   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              0      450   19589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              1      134   19589
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     7125   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     2500   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     3473   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1     1267   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     1340   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1      351   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              0      638   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              1      106   16800
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     2419    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     2632    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     1239    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1     1161    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0      470    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      332    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              0      261    8620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              1      106    8620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     1585    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1204    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0      766    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1      450    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      351    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1      140    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              0      183    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              1       68    4747
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2089    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      761    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0      929    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1      296    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      376    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1      112    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              0      214    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              1       48    4825
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      354     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      152     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      147     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1       60     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0       62     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1       21     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              0       12     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              1       14     822


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8538448c-11d6-4241-a86f-fec9a44453e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8538448c-11d6-4241-a86f-fec9a44453e4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8538448c-11d6-4241-a86f-fec9a44453e4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8538448c-11d6-4241-a86f-fec9a44453e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA          1                    NA                0.1314591   0.1199696   0.1429486
Birth       ki1135781-COHORTS          INDIA          2                    NA                0.0939342   0.0785857   0.1092826
Birth       ki1135781-COHORTS          INDIA          3                    NA                0.0894601   0.0543858   0.1245344
Birth       ki1135781-COHORTS          INDIA          4+                   NA                0.0731083   0.0362564   0.1099603
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.3369711   0.3276042   0.3463379
Birth       kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.3125737   0.2983597   0.3267878
Birth       kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.2773447   0.2532303   0.3014592
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.2417713   0.2167659   0.2667768
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.3002491   0.2571669   0.3433312
Birth       kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.2871455   0.2149430   0.3593481
Birth       kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2586117   0.1491913   0.3680321
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.5340239   0.2734395   0.7946082
6 months    ki0047075b-MAL-ED          PERU           1                    NA                0.2285025   0.1216356   0.3353695
6 months    ki0047075b-MAL-ED          PERU           2                    NA                0.1632689   0.0796331   0.2469047
6 months    ki0047075b-MAL-ED          PERU           3                    NA                0.1022672   0.0374523   0.1670820
6 months    ki0047075b-MAL-ED          PERU           4+                   NA                0.2455622   0.1776405   0.3134840
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.2080708   0.1654016   0.2507400
6 months    ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.1859206   0.1328728   0.2389684
6 months    ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.0955801   0.0385953   0.1525648
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1083594   0.0462448   0.1704740
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                0.2995625   0.1575090   0.4416159
6 months    ki1113344-GMS-Nepal        NEPAL          2                    NA                0.2157694   0.1404550   0.2910839
6 months    ki1113344-GMS-Nepal        NEPAL          3                    NA                0.2132350   0.1457769   0.2806930
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.1951754   0.1477019   0.2426488
6 months    ki1135781-COHORTS          INDIA          1                    NA                0.2286395   0.2145962   0.2426827
6 months    ki1135781-COHORTS          INDIA          2                    NA                0.1214580   0.1050719   0.1378441
6 months    ki1135781-COHORTS          INDIA          3                    NA                0.1022489   0.0669743   0.1375235
6 months    ki1135781-COHORTS          INDIA          4+                   NA                0.0553130   0.0218628   0.0887633
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.2622688   0.2519879   0.2725496
6 months    kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.2509820   0.2381220   0.2638420
6 months    kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.2037464   0.1854380   0.2220549
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.1771133   0.1531850   0.2010415
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.2668739   0.2487028   0.2850449
6 months    kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.2414261   0.2150980   0.2677542
6 months    kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2302989   0.1893827   0.2712151
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.1788014   0.1121601   0.2454426
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                0.3173774   0.2285054   0.4062493
24 months   ki0047075b-MAL-ED          INDIA          2                    NA                0.5388935   0.4397431   0.6380439
24 months   ki0047075b-MAL-ED          INDIA          3                    NA                0.4052521   0.2894652   0.5210390
24 months   ki0047075b-MAL-ED          INDIA          4+                   NA                0.4553887   0.3085594   0.6022181
24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                0.3631860   0.3095984   0.4167737
24 months   ki0047075b-MAL-ED          NEPAL          2                    NA                0.4862661   0.4314032   0.5411291
24 months   ki0047075b-MAL-ED          NEPAL          3                    NA                0.7711673   0.7002317   0.8421029
24 months   ki0047075b-MAL-ED          NEPAL          4+                   NA                0.2738275   0.2167614   0.3308936
24 months   ki0047075b-MAL-ED          PERU           1                    NA                0.5388171   0.4330045   0.6446296
24 months   ki0047075b-MAL-ED          PERU           2                    NA                0.3216460   0.2192935   0.4239985
24 months   ki0047075b-MAL-ED          PERU           3                    NA                0.2702447   0.1721478   0.3683417
24 months   ki0047075b-MAL-ED          PERU           4+                   NA                0.3377886   0.2577986   0.4177786
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                0.2678156   0.1609414   0.3746897
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   2                    NA                0.1456248   0.0472254   0.2440243
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   3                    NA                0.4172381   0.3160153   0.5184609
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   NA                0.3399075   0.2742401   0.4055749
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.7696833   0.7116323   0.8277342
24 months   ki1000108-CMC-V-BCS-2002   INDIA          2                    NA                0.6712945   0.5824226   0.7601664
24 months   ki1000108-CMC-V-BCS-2002   INDIA          3                    NA                0.6273323   0.4959653   0.7586992
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   NA                0.5792803   0.3231446   0.8354160
24 months   ki1000108-IRC              INDIA          1                    NA                0.4367794   0.3703297   0.5032291
24 months   ki1000108-IRC              INDIA          2                    NA                0.3515335   0.2844991   0.4185678
24 months   ki1000108-IRC              INDIA          3                    NA                0.5531202   0.4381125   0.6681278
24 months   ki1000108-IRC              INDIA          4+                   NA                0.3038058   0.2083497   0.3992619
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                0.3495718   0.3038299   0.3953138
24 months   ki1017093b-PROVIDE         BANGLADESH     2                    NA                0.2991306   0.2097463   0.3885149
24 months   ki1017093b-PROVIDE         BANGLADESH     3                    NA                0.2603776   0.1542499   0.3665052
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   NA                0.2499424   0.0793810   0.4205039
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                0.2718497   0.2172699   0.3264295
24 months   ki1017093c-NIH-Crypto      BANGLADESH     2                    NA                0.2633737   0.1964532   0.3302942
24 months   ki1017093c-NIH-Crypto      BANGLADESH     3                    NA                0.0819826   0.0238479   0.1401173
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   NA                0.1310237   0.0713910   0.1906564
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                0.5534714   0.3944083   0.7125344
24 months   ki1113344-GMS-Nepal        NEPAL          2                    NA                0.4746579   0.3825806   0.5667351
24 months   ki1113344-GMS-Nepal        NEPAL          3                    NA                0.4501228   0.3626509   0.5375947
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   NA                0.4150134   0.3533308   0.4766960
24 months   ki1135781-COHORTS          INDIA          1                    NA                0.5749455   0.5557968   0.5940942
24 months   ki1135781-COHORTS          INDIA          2                    NA                0.3690728   0.3445240   0.3936216
24 months   ki1135781-COHORTS          INDIA          3                    NA                0.3544379   0.3038999   0.4049759
24 months   ki1135781-COHORTS          INDIA          4+                   NA                0.2037896   0.1592887   0.2482904
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                0.5174330   0.5012853   0.5335808
24 months   kiGH5241-JiVitA-3          BANGLADESH     2                    NA                0.4691393   0.4480020   0.4902766
24 months   kiGH5241-JiVitA-3          BANGLADESH     3                    NA                0.4228956   0.3949608   0.4508303
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   NA                0.3265813   0.2899821   0.3631805
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                0.4314882   0.4098801   0.4530962
24 months   kiGH5241-JiVitA-4          BANGLADESH     2                    NA                0.3702508   0.3386529   0.4018486
24 months   kiGH5241-JiVitA-4          BANGLADESH     3                    NA                0.2836759   0.2390169   0.3283350
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   NA                0.2716509   0.2099453   0.3333566


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
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2514286   0.2432985   0.2595587
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2522280   0.2381653   0.2662906
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
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4908353   0.4776984   0.5039721
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3922477   0.3752571   0.4092384


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA          2                    1                 0.7145505   0.5938388   0.8597996
Birth       ki1135781-COHORTS          INDIA          3                    1                 0.6805166   0.4554559   1.0167898
Birth       ki1135781-COHORTS          INDIA          4+                   1                 0.5561299   0.3334472   0.9275245
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     2                    1                 0.9275982   0.8818548   0.9757143
Birth       kiGH5241-JiVitA-3          BANGLADESH     3                    1                 0.8230521   0.7512621   0.9017024
Birth       kiGH5241-JiVitA-3          BANGLADESH     4+                   1                 0.7174840   0.6438089   0.7995901
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH     2                    1                 0.9563578   0.7171050   1.2754341
Birth       kiGH5241-JiVitA-4          BANGLADESH     3                    1                 0.8613240   0.5522609   1.3433490
Birth       kiGH5241-JiVitA-4          BANGLADESH     4+                   1                 1.7786030   1.0666706   2.9657032
6 months    ki0047075b-MAL-ED          PERU           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU           2                    1                 0.7145169   0.3581526   1.4254662
6 months    ki0047075b-MAL-ED          PERU           3                    1                 0.4475537   0.2048956   0.9775918
6 months    ki0047075b-MAL-ED          PERU           4+                   1                 1.0746587   0.6271017   1.8416333
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     2                    1                 0.8935450   0.6295144   1.2683152
6 months    ki1017093c-NIH-Crypto      BANGLADESH     3                    1                 0.4593631   0.2444959   0.8630595
6 months    ki1017093c-NIH-Crypto      BANGLADESH     4+                   1                 0.5207814   0.2836174   0.9562648
6 months    ki1113344-GMS-Nepal        NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL          2                    1                 0.7202820   0.3997809   1.2977264
6 months    ki1113344-GMS-Nepal        NEPAL          3                    1                 0.7118214   0.4025770   1.2586156
6 months    ki1113344-GMS-Nepal        NEPAL          4+                   1                 0.6515347   0.3824179   1.1100358
6 months    ki1135781-COHORTS          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA          2                    1                 0.5312207   0.4581708   0.6159175
6 months    ki1135781-COHORTS          INDIA          3                    1                 0.4472057   0.3150419   0.6348138
6 months    ki1135781-COHORTS          INDIA          4+                   1                 0.2419225   0.1317463   0.4442365
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     2                    1                 0.9569648   0.9013460   1.0160156
6 months    kiGH5241-JiVitA-3          BANGLADESH     3                    1                 0.7768612   0.7059268   0.8549235
6 months    kiGH5241-JiVitA-3          BANGLADESH     4+                   1                 0.6753121   0.5878613   0.7757721
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     2                    1                 0.9046449   0.7963061   1.0277234
6 months    kiGH5241-JiVitA-4          BANGLADESH     3                    1                 0.8629504   0.7132311   1.0440982
6 months    kiGH5241-JiVitA-4          BANGLADESH     4+                   1                 0.6699846   0.4593790   0.9771438
24 months   ki0047075b-MAL-ED          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA          2                    1                 1.6979583   1.2274056   2.3489078
24 months   ki0047075b-MAL-ED          INDIA          3                    1                 1.2768778   0.8653744   1.8840596
24 months   ki0047075b-MAL-ED          INDIA          4+                   1                 1.4348495   0.9425521   2.1842752
24 months   ki0047075b-MAL-ED          NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL          2                    1                 1.3388899   1.1366199   1.5771554
24 months   ki0047075b-MAL-ED          NEPAL          3                    1                 2.1233396   1.7967784   2.5092527
24 months   ki0047075b-MAL-ED          NEPAL          4+                   1                 0.7539594   0.5897758   0.9638489
24 months   ki0047075b-MAL-ED          PERU           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU           2                    1                 0.5969485   0.4134322   0.8619248
24 months   ki0047075b-MAL-ED          PERU           3                    1                 0.5015519   0.3344288   0.7521909
24 months   ki0047075b-MAL-ED          PERU           4+                   1                 0.6269078   0.4650433   0.8451113
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   2                    1                 0.5437504   0.2507123   1.1792980
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   3                    1                 1.5579306   0.9882276   2.4560613
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   4+                   1                 1.2691850   0.8247407   1.9531357
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          2                    1                 0.8721698   0.7490682   1.0155018
24 months   ki1000108-CMC-V-BCS-2002   INDIA          3                    1                 0.8150525   0.6524964   1.0181062
24 months   ki1000108-CMC-V-BCS-2002   INDIA          4+                   1                 0.7526217   0.4806617   1.1784576
24 months   ki1000108-IRC              INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA          2                    1                 0.8048307   0.6314835   1.0257629
24 months   ki1000108-IRC              INDIA          3                    1                 1.2663604   0.9796114   1.6370459
24 months   ki1000108-IRC              INDIA          4+                   1                 0.6955589   0.4909837   0.9853732
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH     2                    1                 0.8557057   0.6199760   1.1810654
24 months   ki1017093b-PROVIDE         BANGLADESH     3                    1                 0.7448471   0.4872535   1.1386211
24 months   ki1017093b-PROVIDE         BANGLADESH     4+                   1                 0.7149958   0.3574806   1.4300608
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     2                    1                 0.9688209   0.7054021   1.3306084
24 months   ki1017093c-NIH-Crypto      BANGLADESH     3                    1                 0.3015734   0.1444916   0.6294242
24 months   ki1017093c-NIH-Crypto      BANGLADESH     4+                   1                 0.4819711   0.2952906   0.7866696
24 months   ki1113344-GMS-Nepal        NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL          2                    1                 0.8576015   0.6068996   1.2118650
24 months   ki1113344-GMS-Nepal        NEPAL          3                    1                 0.8132721   0.5751665   1.1499479
24 months   ki1113344-GMS-Nepal        NEPAL          4+                   1                 0.7498372   0.5431054   1.0352611
24 months   ki1135781-COHORTS          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA          2                    1                 0.6419266   0.5967469   0.6905268
24 months   ki1135781-COHORTS          INDIA          3                    1                 0.6164721   0.5328940   0.7131585
24 months   ki1135781-COHORTS          INDIA          4+                   1                 0.3544502   0.2843493   0.4418331
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     2                    1                 0.9066667   0.8621378   0.9534954
24 months   kiGH5241-JiVitA-3          BANGLADESH     3                    1                 0.8172953   0.7630092   0.8754438
24 months   kiGH5241-JiVitA-3          BANGLADESH     4+                   1                 0.6311566   0.5631069   0.7074299
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     2                    1                 0.8580786   0.7786618   0.9455952
24 months   kiGH5241-JiVitA-4          BANGLADESH     3                    1                 0.6574362   0.5587216   0.7735916
24 months   kiGH5241-JiVitA-4          BANGLADESH     4+                   1                 0.6295676   0.5002781   0.7922700


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA          1                    NA                -0.0129856   -0.0191458   -0.0068254
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0135753   -0.0194807   -0.0076698
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    NA                 0.0002376   -0.0281654    0.0286405
6 months    ki0047075b-MAL-ED          PERU           1                    NA                -0.0062803   -0.1083368    0.0957762
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                 0.0017194   -0.0281726    0.0316114
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.0881948   -0.2239971    0.0476075
6 months    ki1135781-COHORTS          INDIA          1                    NA                -0.0331538   -0.0404122   -0.0258953
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0108402   -0.0171742   -0.0045062
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0146459   -0.0260450   -0.0032468
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                 0.1011249    0.0288320    0.1734177
24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                -0.1482738   -0.2024261   -0.0941214
24 months   ki0047075b-MAL-ED          PERU           1                    NA                -0.1706579   -0.2751374   -0.0661784
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                 0.0851256   -0.0215310    0.1917822
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.0546295   -0.0972671   -0.0119919
24 months   ki1000108-IRC              INDIA          1                    NA                -0.0215460   -0.0704145    0.0273225
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                -0.0202824   -0.0433047    0.0027399
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                -0.0150404   -0.0538354    0.0237547
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.1065776   -0.2595076    0.0463524
24 months   ki1135781-COHORTS          INDIA          1                    NA                -0.0814806   -0.0933279   -0.0696333
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0265977   -0.0360157   -0.0171798
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0392404   -0.0523944   -0.0260865


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA          1                    NA                -0.1096078   -0.1627873   -0.0588604
Birth       kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0419773   -0.0604927   -0.0237851
Birth       kiGH5241-JiVitA-4          BANGLADESH     1                    NA                 0.0007906   -0.0983367    0.0909715
6 months    ki0047075b-MAL-ED          PERU           1                    NA                -0.0282614   -0.6087044    0.3427496
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                 0.0081959   -0.1450646    0.1409432
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.4172577   -1.2287314    0.0987611
6 months    ki1135781-COHORTS          INDIA          1                    NA                -0.1695969   -0.2071937   -0.1331709
6 months    kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0431145   -0.0686599   -0.0181797
6 months    kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.0580661   -0.1043334   -0.0137371
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                 0.2416352    0.0499785    0.3946272
24 months   ki0047075b-MAL-ED          NEPAL          1                    NA                -0.6899269   -1.1028450   -0.3580901
24 months   ki0047075b-MAL-ED          PERU           1                    NA                -0.4635437   -0.8203288   -0.1766886
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                 0.2411892   -0.1167306    0.4843933
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                -0.0763991   -0.1386556   -0.0175466
24 months   ki1000108-IRC              INDIA          1                    NA                -0.0518889   -0.1769699    0.0598993
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                -0.0615945   -0.1338691    0.0060732
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    NA                -0.0585663   -0.2210747    0.0823145
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                -0.2384852   -0.6336716    0.0611053
24 months   ki1135781-COHORTS          INDIA          1                    NA                -0.1651194   -0.1903965   -0.1403790
24 months   kiGH5241-JiVitA-3          BANGLADESH     1                    NA                -0.0541887   -0.0736108   -0.0351180
24 months   kiGH5241-JiVitA-4          BANGLADESH     1                    NA                -0.1000399   -0.1343270   -0.0667892
