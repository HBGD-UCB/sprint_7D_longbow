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
![](/tmp/d6d088a6-f773-4ed0-ae66-8413a6877ba9/f5d57172-423d-4bf8-8f83-a9ba9c13a92b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d6d088a6-f773-4ed0-ae66-8413a6877ba9/f5d57172-423d-4bf8-8f83-a9ba9c13a92b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.4182514   0.3105073   0.5259955
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.2972674   0.2425210   0.3520138
0-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.6453993   0.5603851   0.7304135
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.2836901   0.2657399   0.3016403
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.3372378   0.2844802   0.3899954
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.3450059   0.2361454   0.4538663
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.2801197   0.2253961   0.3348434
0-6 months    ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.1589283   0.0780032   0.2398533
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.1691116   0.1546757   0.1835476
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.1431148   0.1057522   0.1804774
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                0.2826134   0.1769289   0.3882980
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                0.1163055   0.0709371   0.1616740
6-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                0.4406683   0.3921610   0.4891755
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                0.1533347   0.1407613   0.1659081
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                0.2041806   0.1615712   0.2467900


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
0-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.1418111   0.8975831   1.4524922
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.1139284   0.9582938   1.2948392
0-24 months   ki1113344-GMS-Nepal     NEPAL        observed             optimal           0.9126769   0.8116109   1.0263282
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           1.0408078   0.9911653   1.0929366
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           0.9382697   0.8311233   1.0592290
0-6 months    ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.0345134   0.7670521   1.3952349
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           0.9230881   0.7931085   1.0743696
0-6 months    ki1113344-GMS-Nepal     NEPAL        observed             optimal           1.8423923   1.1310772   3.0010413
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           0.9955671   0.9285121   1.0674646
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           0.7740213   0.6257441   0.9574344
6-24 months   ki1017093-NIH-Birth     BANGLADESH   observed             optimal           1.0399370   0.7374406   1.4665168
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   observed             optimal           1.1307015   0.8058965   1.5864145
6-24 months   ki1113344-GMS-Nepal     NEPAL        observed             optimal           1.0692946   1.0060157   1.1365537
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   observed             optimal           1.0770028   1.0144421   1.1434216
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   observed             optimal           1.2486176   1.0483355   1.4871631


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0593127   -0.0412548    0.1598801
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0338672   -0.0108865    0.0786209
0-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0563582   -0.1319543    0.0192378
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0115768   -0.0022663    0.0254199
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                -0.0208178   -0.0619068    0.0202712
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0119073   -0.0913237    0.1151383
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0215445   -0.0641774    0.0210883
0-6 months    ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.1338800    0.0552384    0.2125215
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                -0.0007497   -0.0125396    0.0110403
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                -0.0323409   -0.0625763   -0.0021055
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0112867   -0.0857916    0.1083651
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.0152013   -0.0242260    0.0546286
6-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.0305359    0.0037389    0.0573329
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0118072    0.0026139    0.0210005
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.0507629    0.0150648    0.0864610


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.1241984   -0.1141029    0.3115282
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.1022762   -0.0435213    0.2277034
0-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                -0.0956779   -0.2321175    0.0256528
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0392078   -0.0089134    0.0850339
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                -0.0657917   -0.2031908    0.0559171
0-6 months    ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0333619   -0.3036924    0.2832748
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                -0.0833202   -0.2608615    0.0692216
0-6 months    ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.4572274    0.1158871    0.6667823
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                -0.0044527   -0.0769919    0.0632008
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                -0.2919541   -0.5980973   -0.0444579
6-24 months   ki1017093-NIH-Birth     BANGLADESH   optimal              NA                 0.0384033   -0.3560414    0.3181121
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   optimal              NA                 0.1155933   -0.2408541    0.3696477
6-24 months   ki1113344-GMS-Nepal     NEPAL        optimal              NA                 0.0648040    0.0059798    0.1201471
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   optimal              NA                 0.0714973    0.0142365    0.1254320
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   optimal              NA                 0.1991143    0.0461069    0.3275788
