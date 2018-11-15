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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country        hfoodsec                wast_rec90d   n_cell      n
------------  ----------------------  -------------  ---------------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       31    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       48    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        2    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        7    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1       11    100
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       11     14
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       54    159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       88    159
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        3    159
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        2    159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        6    159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        6    159
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        9     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       35     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        5     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1       11     62
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        6     18
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0     18
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8     18
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        6     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       38     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        2     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        4     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       19     70
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       21    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       26    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      161    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      186    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       20    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        7    421
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       65    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      116    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       37    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       50    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       15    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       28    311
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      182    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      206    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       32    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       40    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       45    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       39    544
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     1605   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1032   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     1185   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      716   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      729   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      381   5648
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      763   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      265   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      561   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      204   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      200   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       60   2053
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0        8     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       30     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        0     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        2     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        6     47
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        8      8
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0       19     71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       45     71
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2     71
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0        1     71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        3     71
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0        4     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       15     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        2     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        0     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4     26
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2      6
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4      6
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        1     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       11     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        0     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        1     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       10     24
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0        7    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       20    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0       51    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      133    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0        6    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        6    223
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       10    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      105    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0        8    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       47    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0        3    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       25    198
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0       57    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1       78    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0        4    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       13    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       12    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1        9    173
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0      301   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1032   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0      232   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      716   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      160   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      381   2822
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      120    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      143    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0       89    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      128    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0       35    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       34    549
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       23     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       18     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        5     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        5     53
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        3      6
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       35     88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       43     88
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        1     88
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        5     88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        3     88
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        5     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       20     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        0     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        7     36
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2     12
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        4     12
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0     12
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     12
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2     12
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        4     12
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        5     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       27     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        3     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1        9     46
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       14    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1        6    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      110    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1       53    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       14    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        1    198
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       55    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       11    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       29    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1        3    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       12    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1        3    113
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      125    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      128    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       28    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       27    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       33    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       30    371
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     1304   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1        0   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0      953   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1        0   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      569   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1        0   2826
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      643   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      122   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      472   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1       76   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      165   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       26   1504


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b8596a74-85a9-4ed8-897f-44fabb7f581d/b6b4721d-9f5a-4133-a90a-b7c2960fe950/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8596a74-85a9-4ed8-897f-44fabb7f581d/b6b4721d-9f5a-4133-a90a-b7c2960fe950/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b8596a74-85a9-4ed8-897f-44fabb7f581d/b6b4721d-9f5a-4133-a90a-b7c2960fe950/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8596a74-85a9-4ed8-897f-44fabb7f581d/b6b4721d-9f5a-4133-a90a-b7c2960fe950/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.5531915   0.3813656   0.7250173
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.5360231   0.4817521   0.5902940
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2592593   0.0762417   0.4422768
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.6408840   0.5711582   0.7106097
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.5747126   0.4686093   0.6808160
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.6511628   0.5086316   0.7936940
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5309278   0.4769481   0.5849076
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5555556   0.4283284   0.6827827
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4642857   0.3488642   0.5797072
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.3913538   0.3727158   0.4099919
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.3766439   0.3549801   0.3983077
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3432432   0.3164490   0.3700375
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2577821   0.2298644   0.2856998
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2666667   0.2350779   0.2982554
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2307692   0.1795409   0.2819975
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.7407407   0.5743234   0.9071581
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.7228261   0.6582010   0.7874512
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.5000000   0.2151871   0.7848129
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.7741935   0.7517363   0.7966508
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.7552743   0.7279363   0.7826122
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.7042514   0.6657740   0.7427288
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.5437262   0.4834746   0.6039779
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.5898618   0.5243598   0.6553637
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.4927536   0.3746825   0.6108248
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5059289   0.4387713   0.5730864
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.4909091   0.3396818   0.6421363
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4761905   0.3482189   0.6041620
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1594771   0.1338872   0.1850670
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1386861   0.1107130   0.1666593
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1361257   0.0871830   0.1850683


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5238971   0.4781525   0.5696416
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.3769476   0.3644210   0.3894742
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2576717   0.2382743   0.2770691
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.7544295   0.7385490   0.7703099
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5555556   0.5139520   0.5971591
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4986523   0.4432451   0.5540595
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1489362   0.1312684   0.1666040


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9689648   0.6988560   1.3434709
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.4686610   0.2166940   1.0136097
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.8967499   0.7235411   1.1114232
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0160385   0.7954470   1.2978039
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0463862   0.8144499   1.3443725
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.8744799   0.6684667   1.1439838
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9624127   0.8931589   1.0370362
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.8770663   0.8004181   0.9610544
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0344654   0.8810639   1.2145755
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8952104   0.6992837   1.1460324
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9758152   0.7662232   1.2427389
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.6750000   0.3659085   1.2451884
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9755626   0.9313445   1.0218800
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.9096580   0.8550928   0.9677052
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0848506   0.9273394   1.2691156
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9062532   0.6959801   1.1800550
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9703125   0.6938357   1.3569586
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9412202   0.6973688   1.2703401
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.8696303   0.6720162   1.1253550
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8535748   0.5757612   1.2654377


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0330015   -0.1926012    0.1265982
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0170898   -0.0631310    0.0289515
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0070308   -0.0362513    0.0221897
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0144062   -0.0278266   -0.0009859
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0001104   -0.0194805    0.0192597
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0277363   -0.1843204    0.1288479
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0197641   -0.0364993   -0.0030288
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0118293   -0.0315636    0.0552222
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0072766   -0.0451942    0.0306410
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0105410   -0.0279067    0.0068248


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0634412   -0.4184141    0.2026961
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0273965   -0.1040492    0.0439343
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0134201   -0.0707869    0.0408732
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0382181   -0.0744213   -0.0032348
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0004285   -0.0784971    0.0719891
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0389005   -0.2835555    0.1591214
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0261974   -0.0486581   -0.0042177
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0212928   -0.0600412    0.0963863
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0145925   -0.0935723    0.0586833
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0707750   -0.1936685    0.0394661
