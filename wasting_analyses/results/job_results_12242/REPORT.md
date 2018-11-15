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

unadjusted

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
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      181     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      242     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       35     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       47     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       24     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       55     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     6331   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     2365   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4086   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1699   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     1924   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      971   17376
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     1896    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      853    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1333    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      615    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      494    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      208    5399
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
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      290     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      133     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       65     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       17     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       58     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       21     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     7323   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1333   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4800   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      947   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     2338   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      541   17282
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     2315    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      263    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1595    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      217    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      600    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       69    5059
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
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      233     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      181     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       39     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       42     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       31     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       47     573
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     7329   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1304   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4790   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      953   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     2290   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      569   17235
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     2065    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      678    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1463    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      481    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      526    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      173    5386


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
![](/tmp/680407e7-6a58-4c1a-b576-7f3bbfd44243/51c512d2-af9b-41b9-82bd-2a2309464e42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/680407e7-6a58-4c1a-b576-7f3bbfd44243/51c512d2-af9b-41b9-82bd-2a2309464e42/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/680407e7-6a58-4c1a-b576-7f3bbfd44243/51c512d2-af9b-41b9-82bd-2a2309464e42/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/680407e7-6a58-4c1a-b576-7f3bbfd44243/51c512d2-af9b-41b9-82bd-2a2309464e42/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.4042553   0.3049688   0.5035419
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.4938525   0.4494585   0.5382464
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4523810   0.3017330   0.6030289
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.3200883   0.2771003   0.3630763
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.3242009   0.2621671   0.3862347
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.4069767   0.3030790   0.5108745
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5721040   0.5249133   0.6192947
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5731707   0.4660231   0.6803183
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.6962025   0.5947024   0.7977027
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2719641   0.2612480   0.2826802
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2936906   0.2807542   0.3066270
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3354059   0.3170627   0.3537490
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.3102947   0.2904228   0.3301666
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.3157084   0.2917856   0.3396313
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2962963   0.2548907   0.3377019
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2872340   0.1956911   0.3787770
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.3765432   0.3334320   0.4196544
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2857143   0.1489808   0.4224477
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.2516556   0.2116667   0.2916446
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2511416   0.1936675   0.3086156
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3139535   0.2158024   0.4121045
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.3144208   0.2701381   0.3587035
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2073171   0.1194997   0.2951345
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2658228   0.1683231   0.3633225
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1539972   0.1452507   0.1627438
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1647816   0.1544855   0.1750778
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1879125   0.1722838   0.2035412
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1020171   0.0888349   0.1151992
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1197572   0.1017527   0.1377617
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1031390   0.0767112   0.1295669
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2345679   0.1422056   0.3269302
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.3000000   0.2561333   0.3438667
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.3500000   0.2020515   0.4979485
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.1278539   0.0965599   0.1591478
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.1352657   0.0886432   0.1818882
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1411765   0.0671019   0.2152511
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.4371981   0.3893743   0.4850219
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5185185   0.4096113   0.6274258
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.6025641   0.4938677   0.7112605
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1510483   0.1430579   0.1590387
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1659411   0.1555663   0.1763160
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1990206   0.1832363   0.2148050
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2471746   0.2281963   0.2661529
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2474280   0.2253858   0.2694701
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2474964   0.2081367   0.2868561


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5890411   0.5491031   0.6289790
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2897675   0.2821419   0.2973931
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.3104279   0.2959885   0.3248672
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2928082   0.2558702   0.3297463
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1632334   0.1570476   0.1694192
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1085195   0.0986291   0.1184098
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4712042   0.4302971   0.5121113
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1639687   0.1578505   0.1700868
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2473078   0.2336663   0.2609494


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2216350   0.9404965   1.586813
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.1190476   0.7398510   1.692594
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0128484   0.8017129   1.279588
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2714515   0.9528451   1.696592
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0018645   0.8167149   1.228988
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.2169160   1.0292306   1.438827
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0798872   1.0178158   1.145744
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2332725   1.1559256   1.315795
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0174472   0.9235647   1.120873
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9548869   0.8176286   1.115187
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.3109282   0.9343437   1.839294
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.9947090   0.5597400   1.767688
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9979572   0.7552895   1.318592
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2475520   0.8785238   1.771592
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.6593618   0.4219482   1.030359
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.8454364   0.5707537   1.252314
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0700298   0.9828741   1.164914
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2202328   1.1071549   1.344860
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1738935   0.9615786   1.433087
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0109976   0.7567197   1.350720
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2789474   0.8403041   1.946565
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.4921053   0.8373585   2.658811
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0579710   0.6932345   1.614609
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.1042017   0.6188736   1.970130
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.1860037   0.9359216   1.502909
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.3782405   1.1161031   1.701946
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0985966   1.0138938   1.190376
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.3175960   1.2013005   1.445150
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0010250   0.8924202   1.122847
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0013019   0.8386096   1.195557


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0733088   -0.0184858   0.1651034
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0110463   -0.0165785   0.0386710
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0169371   -0.0074751   0.0413493
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0178034    0.0104025   0.0252043
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0001332   -0.0136526   0.0139190
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0696791   -0.0155679   0.1549261
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0069196   -0.0187834   0.0326225
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0216126   -0.0436279   0.0004027
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0092362    0.0032084   0.0152640
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0065024   -0.0034181   0.0164229
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0593323   -0.0269960   0.1456606
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0036530   -0.0164960   0.0238019
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0340061    0.0084021   0.0596101
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0129204    0.0071995   0.0186413
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0001332   -0.0127982   0.0130646


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1535056   -0.0625656    0.3256391
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0333588   -0.0537681    0.1132820
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0287536   -0.0136726    0.0694042
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0614402    0.0354681    0.0867129
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0004291   -0.0449810    0.0438659
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1952271   -0.0827160    0.4018197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0267604   -0.0778767    0.1212396
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0738114   -0.1516244   -0.0012561
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0565827    0.0188016    0.0929091
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0599192   -0.0355796    0.1466113
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.2018790   -0.1526194    0.4473483
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0277778   -0.1380989    0.1694781
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0721685    0.0159588    0.1251675
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0787978    0.0433855    0.1128991
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0005386   -0.0531426    0.0514836
