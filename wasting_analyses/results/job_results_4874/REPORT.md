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

agecat        studyid                 country        hfoodsec                ever_wasted   n_cell       n
------------  ----------------------  -------------  ---------------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      105     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       56     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       19     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1       10     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      104     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       11     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       98     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       92     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        1     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        4     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0       10     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        7     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0       65     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       29     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       11     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        4     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       10     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        9     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0       22     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        5     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       29     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0       49     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      101     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       31     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       65     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       17     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       56     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       38     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      247     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      241     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       23     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       19     624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      308     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      145     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      148     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       71     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       51     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       35     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      362    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      484    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       70    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       94    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       48    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1      110    1168
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0    12638   34697
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     4729   34697
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     8155   34697
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     3393   34697
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     3840   34697
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1     1942   34697
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     3672   10496
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1     1674   10496
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     2576   10496
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1     1199   10496
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      962   10496
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      413   10496
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      125     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       36     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       22     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        7     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      107     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        8     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0      130     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       60     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        3     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0       13     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0       75     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       19     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       12     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       15     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0       25     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       29     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0       53     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      120     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       12     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       18     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       72     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       10     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       67     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       27     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      303     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      183     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       30     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       12     622
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      339     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      114     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      164     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       55     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       59     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       27     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      580    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      266    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0      130    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       34    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0      116    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       42    1168
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0    14646   34564
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     2666   34564
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     9600   34564
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1894   34564
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     4676   34564
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1     1082   34564
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     4630   10118
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      526   10118
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     3190   10118
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      434   10118
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0     1200   10118
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      138   10118
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      131     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       30     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       23     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        6     194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      111     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        4     129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0      137     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       53     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        4     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0       13     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4     212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0       77     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       17     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       13     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        2     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       13     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        6     128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0       23     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        4     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       28     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0       51     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        5     111
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      108     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       22     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       73     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1        9     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       62     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       19     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      294     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      126     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       26     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       14     541
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      382     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       56     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      179     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       28     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       73     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       12     730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      466    1146
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      362    1146
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       78    1146
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       84    1146
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       62    1146
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       94    1146
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0    14634   34415
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     2607   34415
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     9563   34415
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1901   34415
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     4572   34415
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1     1138   34415
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     4010   10470
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1     1324   10470
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     2836   10470
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      931   10470
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0     1026   10470
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      343   10470


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
![](/tmp/9fd0ba0c-2e2e-48b6-9d0a-c801d2c2b114/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9fd0ba0c-2e2e-48b6-9d0a-c801d2c2b114/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9fd0ba0c-2e2e-48b6-9d0a-c801d2c2b114/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9fd0ba0c-2e2e-48b6-9d0a-c801d2c2b114/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.4030101   0.3049052   0.5011149
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.4939908   0.4496427   0.5383389
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4514216   0.3018886   0.6009547
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.3187641   0.2762887   0.3612395
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.3211904   0.2613798   0.3810010
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.4039545   0.3109064   0.4970026
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5789814   0.5337882   0.6241746
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.6776567   0.6067168   0.7485966
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.8247029   0.7628016   0.8866042
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2742971   0.2633504   0.2852438
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2894845   0.2766129   0.3023561
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3203922   0.3029111   0.3378733
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.3133347   0.2933838   0.3332856
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.3198499   0.2958997   0.3438001
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.3015064   0.2608942   0.3421186
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2893804   0.2023537   0.3764071
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.3786001   0.3355902   0.4216101
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.3124583   0.1830351   0.4418814
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.2514348   0.2114511   0.2914185
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2515506   0.1940879   0.3090132
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3140936   0.2160094   0.4121778
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.3155241   0.2730470   0.3580012
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1940031   0.1310037   0.2570026
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.3034900   0.2343965   0.3725835
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1524997   0.1437244   0.1612749
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1618101   0.1516944   0.1719258
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1770502   0.1622949   0.1918054
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1016882   0.0885646   0.1148118
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1203867   0.1025448   0.1382285
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1031462   0.0770992   0.1291933
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2380488   0.1469207   0.3291768
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2997162   0.2559698   0.3434626
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.3467972   0.2023772   0.4912172
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.1277234   0.0964327   0.1590140
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.1371572   0.0905995   0.1837150
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1391395   0.0669123   0.2113667
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.4332781   0.3880036   0.4785527
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.4958382   0.4297745   0.5619019
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.6743561   0.6094282   0.7392839
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1536401   0.1454678   0.1618124
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1632891   0.1530847   0.1734934
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1899352   0.1753468   0.2045237
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2484313   0.2293143   0.2675482
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2482482   0.2262397   0.2702568
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2521723   0.2131421   0.2912025


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5890411   0.5491031   0.6289790
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2900539   0.2824242   0.2976836
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.3130716   0.2985240   0.3276193
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2928082   0.2558702   0.3297463
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1632334   0.1570476   0.1694192
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1085195   0.0986291   0.1184098
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4712042   0.4302971   0.5121113
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1640564   0.1579346   0.1701781
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2481375   0.2344076   0.2618675


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2257529   0.9456628   1.5888014
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.1201249   0.7426048   1.6895659
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0076117   0.8014777   1.2667617
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2672522   0.9712260   1.6535061
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.1704292   1.0271609   1.3336806
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.4244031   1.2785650   1.5868761
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0553684   0.9939006   1.1206377
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1680481   1.0949032   1.2460794
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0207929   0.9276106   1.1233357
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9622503   0.8278821   1.1184270
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.3083131   0.9484991   1.8046229
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.0797494   0.6480125   1.7991300
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0004606   0.7574171   1.3214930
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2492051   0.8799513   1.7734089
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.6148600   0.4326699   0.8737674
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9618601   0.7384295   1.2528954
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0610524   0.9745422   1.1552420
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1609873   1.0540952   1.2787191
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1838804   0.9716419   1.4424788
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0143382   0.7620789   1.3500991
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2590537   0.8360452   1.8960892
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.4568325   0.8277073   2.5641443
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0738618   0.7068065   1.6315343
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0893817   0.6136444   1.9339417
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.1443877   0.9664595   1.3550730
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.5564045   1.3505396   1.7936497
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0628025   0.9804648   1.1520547
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2362350   1.1295267   1.3530242
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9992632   0.8912095   1.1204179
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0150587   0.8529692   1.2079500


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0745540   -0.0161419    0.1652499
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0123705   -0.0149520    0.0396930
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0100597   -0.0136588    0.0337782
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0157568    0.0080272    0.0234864
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0002631   -0.0140386    0.0135124
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0675328   -0.0137027    0.1487683
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0071404   -0.0185532    0.0328340
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0227159   -0.0443496   -0.0010821
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0107338    0.0045923    0.0168753
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0068313   -0.0030401    0.0167026
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0558514   -0.0292835    0.1409863
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0037835   -0.0163119    0.0238789
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0379260    0.0131622    0.0626899
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0104163    0.0044187    0.0164139
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0002937   -0.0132541    0.0126667


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1561131   -0.0570945    0.3263184
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0373578   -0.0487386    0.1163862
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0170781   -0.0239683    0.0564791
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0543237    0.0272331    0.0806598
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0008404   -0.0458235    0.0422080
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1892135   -0.0727864    0.3872269
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0276145   -0.0769888    0.1220581
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0775793   -0.1549291   -0.0054099
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0657572    0.0272445    0.1027450
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0629497   -0.0320280    0.1491866
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1900353   -0.1574484    0.4331990
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0287703   -0.1366571    0.1701216
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0804875    0.0267766    0.1312342
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0634922    0.0263551    0.0992127
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0011837   -0.0547992    0.0497066
