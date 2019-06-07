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

**Outcome Variable:** ever_co

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

agecat        studyid                 country        hfoodsec                ever_co   n_cell       n
------------  ----------------------  -------------  ---------------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      135     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       26     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       24     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        5     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      143     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       47     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       86     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        8     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       14     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        1     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       13     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        6     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       24     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        3     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       29     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       53     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        4     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      119     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       13     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       76     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       81     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       13     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      376     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1      112     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       30     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       12     624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      414     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       39     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      199     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       20     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       74     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       12     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      297     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      126     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       56     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       26     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       46     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       33     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     7875   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      818   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5140   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      643   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2449   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      440   17365
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2309    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      440    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1614    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      333    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      603    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       99    5398
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      157     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        4     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       28     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        1     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      115     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      174     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1       16     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       16     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        1     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       92     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        2     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       18     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        1     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                   0       27     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                   1        0     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       29     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 0       56     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 1        1     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      128     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        4     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       82     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       88     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        6     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      451     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1       35     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       38     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        4     622
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      443     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       10     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      214     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        5     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       84     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        2     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      406     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       17     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       79     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        3     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       77     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        2     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8382   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      265   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5548   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      195   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2751   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      120   17261
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2502    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       72    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1764    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       48    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      654    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       15    5055
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      136     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       25     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       24     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        5     194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      149     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       41     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       88     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        6     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       14     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        1     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       13     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        6     128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       24     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        3     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       28     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       52     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        4     111
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      119     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       11     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       76     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       72     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        9     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      327     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1       94     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       29     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       11     542
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      402     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       36     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      190     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       17     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       75     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       10     730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      291     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      123     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       55     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       26     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       45     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       33     573
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8015   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      614   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5233   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      507   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2477   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      371   17217
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2347    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      396    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1638    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      305    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      604    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       95    5385


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/ec988db1-263c-4802-a03a-fee11212344b/3080715f-09ec-445a-9ae0-275629a7da0e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ec988db1-263c-4802-a03a-fee11212344b/3080715f-09ec-445a-9ae0-275629a7da0e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ec988db1-263c-4802-a03a-fee11212344b/3080715f-09ec-445a-9ae0-275629a7da0e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ec988db1-263c-4802-a03a-fee11212344b/3080715f-09ec-445a-9ae0-275629a7da0e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1382979   0.0684555   0.2081402
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2295082   0.1921686   0.2668478
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2857143   0.1489812   0.4224474
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0860927   0.0602451   0.1119403
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0913242   0.0531465   0.1295019
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1395349   0.0662535   0.2128163
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2978723   0.2542536   0.3414911
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.3170732   0.2162686   0.4178777
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4177215   0.3088748   0.5265683
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0940987   0.0875118   0.1006856
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1111880   0.1022289   0.1201470
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1523018   0.1379917   0.1666119
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1600582   0.1449979   0.1751186
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1710324   0.1522107   0.1898540
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1410256   0.1141371   0.1679142
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0306465   0.0267958   0.0344971
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0339544   0.0288037   0.0391051
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0417973   0.0340905   0.0495041
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0279720   0.0206171   0.0353270
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0264901   0.0167895   0.0361906
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0224215   0.0128556   0.0319875
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1111111   0.0426082   0.1796140
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2232779   0.1834613   0.2630945
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2750000   0.1364985   0.4135015
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0821918   0.0564524   0.1079312
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0821256   0.0446980   0.1195532
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1176471   0.0491064   0.1861877
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2971014   0.2530433   0.3411596
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.3209877   0.2192298   0.4227455
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4230769   0.3133410   0.5328128
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0711554   0.0654398   0.0768710
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0883275   0.0800931   0.0965619
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1302669   0.1168108   0.1437229
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1443675   0.1298161   0.1589189
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1569738   0.1392555   0.1746920
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1359084   0.1091211   0.1626958


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3167808   0.2790172   0.3545444
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1094731   0.1042497   0.1146964
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1615413   0.1501758   0.1729068
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0336018   0.0307104   0.0364932
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0267062   0.0213205   0.0320920
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3176265   0.2794743   0.3557787
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0866585   0.0819882   0.0913288
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1478180   0.1371861   0.1584499


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.6595208   0.9762421   2.821031
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       2.0659341   1.0302847   4.142625
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0607657   0.6340080   1.774779
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.6207513   0.8851020   2.967833
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0644599   0.7500935   1.510578
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.4023508   1.0400307   1.890894
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1816099   1.0640350   1.312177
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.6185327   1.4400735   1.819107
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0685635   0.9303378   1.227326
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8810897   0.7167643   1.083088
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1079378   0.9145197   1.342263
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.3638532   1.0844879   1.715183
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9470199   0.6033049   1.486556
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8015695   0.4881779   1.316147
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       2.0095012   1.0576908   3.817841
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       2.4750000   1.1164457   5.486720
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9991948   0.5747808   1.736993
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4313725   0.7387504   2.773369
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0803975   0.7613549   1.533133
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.4240150   1.0562291   1.919866
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.2413326   1.1002621   1.400491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.8307373   1.6051265   2.088059
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0873207   0.9378076   1.260671
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9414062   0.7576381   1.169748


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0812534    0.0144338   0.1480730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0075748   -0.0097559   0.0249056
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0189085   -0.0050191   0.0428360
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0153744    0.0103218   0.0204270
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0014831   -0.0084827   0.0114489
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0029553    0.0000903   0.0058203
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0012658   -0.0065180   0.0039864
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0992210    0.0323673   0.1660747
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0041096   -0.0127134   0.0209326
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0205251   -0.0038007   0.0448508
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0155031    0.0109488   0.0200574
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0034505   -0.0063279   0.0132290


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.3700885   -0.0160266   0.6094704
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0808693   -0.1232318   0.2478835
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0596895   -0.0189141   0.1322292
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1404398    0.0937792   0.1846979
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0091810   -0.0544705   0.0689902
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0879506   -0.0009195   0.1689300
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0473970   -0.2645256   0.1324489
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.4717349    0.0481092   0.7068319
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0476190   -0.1683708   0.2236801
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0646202   -0.0151333   0.1381078
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1788990    0.1260901   0.2285168
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0233431   -0.0451500   0.0873476
