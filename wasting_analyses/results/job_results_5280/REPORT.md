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
![](/tmp/53ac63ab-a8bd-4ec5-8ed5-f4960bfda658/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53ac63ab-a8bd-4ec5-8ed5-f4960bfda658/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53ac63ab-a8bd-4ec5-8ed5-f4960bfda658/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53ac63ab-a8bd-4ec5-8ed5-f4960bfda658/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.4022235   0.3042964   0.5001506
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.4940492   0.4497010   0.5383974
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4523587   0.3028888   0.6018286
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.3185214   0.2761667   0.3608762
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.3207813   0.2614973   0.3800652
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.4039465   0.3132469   0.4946461
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5788850   0.5336938   0.6240761
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.6770045   0.6060739   0.7479350
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.8247993   0.7629053   0.8866932
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2743013   0.2633513   0.2852512
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2894677   0.2765929   0.3023425
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3203557   0.3028617   0.3378496
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.3133359   0.2933845   0.3332873
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.3198485   0.2958979   0.3437991
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.3015149   0.2608991   0.3421306
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2850254   0.1996506   0.3704002
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.3790679   0.3361281   0.4220078
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.3134253   0.1845490   0.4423015
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.2516525   0.2116637   0.2916414
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2511473   0.1936734   0.3086212
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3139555   0.2158054   0.4121055
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.3154869   0.2731195   0.3578542
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1896048   0.1272827   0.2519268
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2958992   0.2282018   0.3635966
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1524991   0.1437179   0.1612803
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1617798   0.1516590   0.1719007
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1769611   0.1621758   0.1917464
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1018583   0.0886975   0.1150191
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1202807   0.1023550   0.1382063
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1036493   0.0772919   0.1300066
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2383687   0.1477178   0.3290195
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2997243   0.2560201   0.3434286
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.3469013   0.2040651   0.4897374
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.1277233   0.0964326   0.1590140
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.1371579   0.0906002   0.1837157
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1391390   0.0669122   0.2113658
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.4333377   0.3878867   0.4787888
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.4953240   0.4274799   0.5631681
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.6670454   0.6009215   0.7331693
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1536390   0.1454686   0.1618093
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1632974   0.1530946   0.1735002
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1899501   0.1753676   0.2045326
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2485182   0.2293675   0.2676689
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2483351   0.2263043   0.2703660
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2529683   0.2136696   0.2922670


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
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2282952   0.9476169   1.5921089
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.1246452   0.7460957   1.6952608
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0070947   0.8021306   1.2644322
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2681925   0.9769851   1.6461994
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.1694974   1.0262633   1.3327223
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.4248068   1.2789336   1.5873181
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0552912   0.9938094   1.1205765
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1678972   1.0947166   1.2459698
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0207848   0.9276012   1.1233293
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9622737   0.8278957   1.1184629
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.3299443   0.9653637   1.8322129
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.0996396   0.6625507   1.8250791
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9979925   0.7553195   1.3186327
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2475754   0.8785441   1.7716177
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.6009910   0.4216093   0.8566938
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9379128   0.7199977   1.2217821
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0608575   0.9743112   1.1550915
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1604074   1.0533774   1.2783124
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1808627   0.9685446   1.4397237
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0175830   0.7631534   1.3568375
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2573982   0.8369982   1.8889530
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.4553141   0.8312396   2.5479284
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0738674   0.7068113   1.6315404
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0893778   0.6136428   1.9339331
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.1430437   0.9622235   1.3578435
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.5393198   1.3327240   1.7779418
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0628645   0.9805405   1.1521003
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2363409   1.1296661   1.3530889
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9992635   0.8910955   1.1205617
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0179066   0.8548446   1.2120728


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0753406   -0.0151985    0.1658797
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0126131   -0.0146543    0.0398806
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0101561   -0.0135617    0.0338739
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0157526    0.0080194    0.0234859
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0002642   -0.0140401    0.0135117
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0718878   -0.0078815    0.1516570
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0069227   -0.0187801    0.0326255
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0226786   -0.0440761   -0.0012812
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0107343    0.0045863    0.0168823
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0066612   -0.0032237    0.0165460
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0555315   -0.0291562    0.1402192
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0037835   -0.0163119    0.0238789
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0378664    0.0130842    0.0626487
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0104174    0.0044220    0.0164128
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0003807   -0.0133690    0.0126077


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1577602   -0.0550787    0.3276635
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0380906   -0.0478117    0.1169505
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0172418   -0.0238031    0.0566412
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0543094    0.0272059    0.0806577
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0008440   -0.0458283    0.0422054
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.2014152   -0.0555159    0.3958048
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0267724   -0.0778641    0.1212511
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0774522   -0.1539389   -0.0060353
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0657606    0.0272057    0.1027874
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0613824   -0.0337564    0.1477653
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1889468   -0.1562103    0.4310661
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0287705   -0.1366565    0.1701216
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0803610    0.0265534    0.1311944
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0634989    0.0263757    0.0992067
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0015340   -0.0552669    0.0494628
