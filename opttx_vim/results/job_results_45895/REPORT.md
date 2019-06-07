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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

agecat        studyid                 country        hfoodsec                ever_wasted   n_cell      n
------------  ----------------------  -------------  ---------------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      105    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       56    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       19    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1       10    194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      104    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       11    129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       98    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       92    212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        1    212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        4    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0       10    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        7    212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0       65    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       29    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       11    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        4    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       10    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        9    128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0       22    113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        5    113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       29    113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0    113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0       49    113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8    113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      101    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       31    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       65    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       17    233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       56    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       38    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      247    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      241    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       23    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       19    624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      308    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      145    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      148    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       71    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       51    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       35    758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      181    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      242    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       35    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       47    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       24    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       55    584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     3150   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1184   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     1988   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      848   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      922   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      507   8599
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      507   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      233   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      335   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      150   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      128   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       66   1419
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      125    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       36    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       22    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        7    194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      107    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        8    129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0      130    212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       60    212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2    212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        3    212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0       13    212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4    212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0       75    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       19    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       12    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       15    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4    128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0       25    113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2    113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       29    113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0    113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0       53    113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4    113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      120    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       12    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       18    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       72    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       10    233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       67    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       27    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      303    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      183    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       30    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       12    622
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      339    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      114    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      164    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       55    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       59    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       27    758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      290    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      133    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       65    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       17    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       58    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       21    584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     3635   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1      677   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     2340   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      478   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     1138   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      285   8553
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      616   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1       71   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      395   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1       51   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      161   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       24   1318
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      131    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       30    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       23    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        6    194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      111    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        4    129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0      137    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       53    212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        4    212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0       13    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4    212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0       77    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       17    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       13    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        2    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       13    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        6    128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0       23    111
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        4    111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       28    111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0    111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0       51    111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        5    111
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      108    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       22    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       73    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1        9    231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       62    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       19    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      294    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      126    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       26    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       14    541
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      382    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       56    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      179    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       28    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       73    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       12    730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      233    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      181    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       39    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       42    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       31    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       47    573
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     3668   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1      636   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     2344   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      472   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     1106   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      300   8526
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      551   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      187   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      363   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      121   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      141   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       53   1416


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d2679d09-7eba-41ea-8116-a522a8233211/5c0464e9-820a-44a9-aa53-09b038375f8c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2679d09-7eba-41ea-8116-a522a8233211/5c0464e9-820a-44a9-aa53-09b038375f8c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.4063533   0.3050665   0.5076401
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.3683749   0.3156107   0.4211391
0-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.6303350   0.5504503   0.7102197
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.2801571   0.2631859   0.2971283
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.3247309   0.2747023   0.3747595
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.3369298   0.2310725   0.4427871
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.3116279   0.2612780   0.3619779
0-6 months    ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.1802914   0.0939240   0.2666588
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.1649157   0.1496478   0.1801835
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.1637448   0.1202408   0.2072487
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.2443913   0.1517872   0.3369954
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.1301181   0.0798767   0.1803595
6-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.4417568   0.3928822   0.4906314
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.1666361   0.1528785   0.1803938
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.2308182   0.1865496   0.2750868


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1113344-GMS-Nepal     NEPAL        observed             NA                0.5890411   0.5491031   0.6289790
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   observed             NA                0.2952669   0.2842955   0.3062383
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   observed             NA                0.3164200   0.2881624   0.3446776
0-6 months    ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1113344-GMS-Nepal     NEPAL        observed             NA                0.2928082   0.2558702   0.3297463
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   observed             NA                0.1683620   0.1594164   0.1773076
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   observed             NA                0.1107739   0.0906511   0.1308967
6-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal     NEPAL        observed             NA                0.4712042   0.4302971   0.5121113
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   observed             NA                0.1651419   0.1559762   0.1743076
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   observed             NA                0.2549435   0.2289436   0.2809434


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.1752436   0.9329757   1.4804218
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           0.8989064   0.8066788   1.0016784
0-24 months   ki1113344-GMS-Nepal     NEPAL        observed             optimal           0.9344890   0.8342882   1.0467242
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           1.0539332   1.0061811   1.1039516
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           0.9744067   0.8608353   1.1029619
0-6 months    ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.0593102   0.7876193   1.4247213
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           0.8297562   0.7355097   0.9360792
0-6 months    ki1113344-GMS-Nepal     NEPAL        observed             optimal           1.6240833   1.0287080   2.5640382
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           1.0208973   0.9463375   1.1013315
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           0.6765034   0.5518065   0.8293792
6-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.2025805   0.8470218   1.7073939
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.0106727   0.7250770   1.4087597
6-24 months   ki1113344-GMS-Nepal     NEPAL        observed             optimal           1.0666597   1.0031672   1.1341707
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           0.9910331   0.9299422   1.0561374
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           1.1045209   0.9421607   1.2948603


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0712108   -0.0224561    0.1648777
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0372403   -0.0770464    0.0025658
0-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0412939   -0.1125868    0.0299990
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0151098    0.0021303    0.0280893
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                -0.0083109   -0.0485737    0.0319519
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0199834   -0.0798998    0.1198665
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0530527   -0.0905139   -0.0155916
0-6 months    ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.1125168    0.0295892    0.1954445
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0034463   -0.0090620    0.0159546
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                -0.0529709   -0.0871988   -0.0187430
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0495089   -0.0361375    0.1351553
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0013887   -0.0418151    0.0445925
6-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.0294474    0.0024415    0.0564532
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                -0.0014942   -0.0120932    0.0091048
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.0241253   -0.0125714    0.0608220


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.1491126   -0.0718393    0.3245168
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.1124628   -0.2396507    0.0016756
0-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0701036   -0.1986266    0.0446385
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0511733    0.0061431    0.0941632
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                -0.0262655   -0.1616624    0.0933504
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0559894   -0.2696489    0.2981084
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.2051733   -0.3596014   -0.0682857
0-6 months    ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.3842680    0.0279069    0.6099902
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0204695   -0.0567055    0.0920082
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                -0.4781892   -0.8122294   -0.2057212
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.1684548   -0.1806072    0.4143121
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0105600   -0.3791638    0.2901557
6-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.0624939    0.0031572    0.1182985
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                -0.0090480   -0.0753357    0.0531535
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.0946301   -0.0613901    0.2277159
