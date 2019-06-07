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

**Outcome Variable:** pers_wast

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

agecat        studyid                 country        hfoodsec                pers_wast   n_cell      n
------------  ----------------------  -------------  ---------------------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      152    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1        9    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       27    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        2    194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0    129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     0      173    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     1       17    212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3    212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   0       16    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   1        1    212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     0       93    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     1        1    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0    128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     0       27    112
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     1        0    112
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       29    112
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0    112
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   0       55    112
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   1        1    112
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      131    232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        0    232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18    232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1    232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81    232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        1    232
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     0       74    534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     1        4    534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            0      379    534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            1       38    534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   0       34    534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   1        5    534
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     0      425    730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     1       13    730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            0      197    730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            1       10    730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   0       82    730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   1        3    730
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      358    574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     1       56    574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0       75    574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1        6    574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0       60    574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1       19    574
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     0     3761   7746
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     1      192   7746
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            0     2379   7746
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            1      151   7746
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   0     1158   7746
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   1      105   7746
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     0      668   1363
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     1       50   1363
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            0      418   1363
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            1       45   1363
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   0      167   1363
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   1       15   1363
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      156    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1        5    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       28    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        1    194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0    129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                     0      175    211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                     1       14    211
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3    211
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2    211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                   0       15    211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                   1        2    211
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                     0       91    127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                     1        2    127
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14    127
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1    127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19    127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0    127
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                     0       27    112
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                     1        0    112
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       29    112
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0    112
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                   0       56    112
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                   1        0    112
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      129    230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        1    230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18    230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1    230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81    230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        0    230
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                     0       22    169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                     1        1    169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            0      130    169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            1        9    169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   0        6    169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   1        1    169
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     0      143    250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     1        2    250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            0       76    250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            1        2    250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   0       26    250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   1        1    250
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      324    524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                     1       52    524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0       73    524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1        4    524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0       65    524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1        6    524
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     0       11     25
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     1        0     25
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            0        8     25
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            1        1     25
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   0        4     25
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   1        1     25
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      152    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1        9    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       27    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        2    194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0    129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     0      173    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     1       17    212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3    212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   0       16    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   1        1    212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     0       93    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     1        1    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0    128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     0       27    112
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     1        0    112
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       29    112
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0    112
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   0       55    112
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   1        1    112
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      131    232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        0    232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18    232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1    232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81    232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        1    232
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     0       74    534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     1        4    534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            0      379    534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            1       38    534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   0       34    534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   1        5    534
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     0      425    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     1       13    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            0      197    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            1       10    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   0       82    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   1        3    730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      358    574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     1       56    574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0       75    574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1        6    574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0       60    574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1       19    574
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     0     3761   7746
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     1      192   7746
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            0     2379   7746
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            1      151   7746
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   0     1158   7746
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   1      105   7746
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     0      668   1363
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     1       50   1363
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            0      418   1363
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            1       45   1363
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   0      167   1363
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   1       15   1363


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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/c6853fab-471a-4dc8-93c9-886fc699165f/3b783fea-9173-4a3b-9d91-86183b7b0f7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c6853fab-471a-4dc8-93c9-886fc699165f/3b783fea-9173-4a3b-9d91-86183b7b0f7f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c6853fab-471a-4dc8-93c9-886fc699165f/3b783fea-9173-4a3b-9d91-86183b7b0f7f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c6853fab-471a-4dc8-93c9-886fc699165f/3b783fea-9173-4a3b-9d91-86183b7b0f7f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure            NA                0.1352657   0.1022925   0.1682389
0-24 months   ki1113344-GMS-Nepal   NEPAL        Mildly Food Insecure   NA                0.0740741   0.0169912   0.1311569
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Insecure          NA                0.2405063   0.1461788   0.3348339
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure            NA                0.0485707   0.0412311   0.0559103
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0596838   0.0502498   0.0691178
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Insecure          NA                0.0831354   0.0666982   0.0995726
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure            NA                0.0696379   0.0473247   0.0919511
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0971922   0.0698374   0.1245471
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Insecure          NA                0.0824176   0.0492114   0.1156238
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure            NA                0.1352657   0.1022925   0.1682389
6-24 months   ki1113344-GMS-Nepal   NEPAL        Mildly Food Insecure   NA                0.0740741   0.0169912   0.1311569
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Insecure          NA                0.2405063   0.1461788   0.3348339
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure            NA                0.0485707   0.0412311   0.0559103
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0596838   0.0502498   0.0691178
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Insecure          NA                0.0831354   0.0666982   0.0995726
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure            NA                0.0696379   0.0473247   0.0919511
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0971922   0.0698374   0.1245471
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Insecure          NA                0.0824176   0.0492114   0.1156238


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1411150   0.1126097   0.1696202
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0578363   0.0520541   0.0636185
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0807043   0.0646649   0.0967437
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1411150   0.1126097   0.1696202
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0578363   0.0520541   0.0636185
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0807043   0.0646649   0.0967437


### Parameter: RR


agecat        studyid               country      intervention_level     baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  ---------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure            Food Secure       1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        Mildly Food Insecure   Food Secure       0.547619   0.2440385   1.228850
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Insecure          Food Secure       1.778029   1.1204380   2.821563
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.228802   0.9921124   1.521960
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.711637   1.3511944   2.168229
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.395680   0.9155242   2.127659
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Insecure          Food Secure       1.183517   0.7263283   1.928482
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure            Food Secure       1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        Mildly Food Insecure   Food Secure       0.547619   0.2440385   1.228850
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Insecure          Food Secure       1.778029   1.1204380   2.821563
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.228802   0.9921124   1.521960
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.711637   1.3511944   2.168229
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.395680   0.9155242   2.127659
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Insecure          Food Secure       1.183517   0.7263283   1.928482


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure          NA                0.0058493   -0.0123562   0.0240547
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure          NA                0.0092656    0.0040159   0.0145153
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure          NA                0.0110664   -0.0031973   0.0253302
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure          NA                0.0058493   -0.0123562   0.0240547
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure          NA                0.0092656    0.0040159   0.0145153
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure          NA                0.0110664   -0.0031973   0.0253302


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure          NA                0.0414505   -0.0964327   0.1619940
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure          NA                0.1602038    0.0648693   0.2458192
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure          NA                0.1371233   -0.0642653   0.3004036
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure          NA                0.0414505   -0.0964327   0.1619940
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure          NA                0.1602038    0.0648693   0.2458192
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure          NA                0.1371233   -0.0642653   0.3004036
