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




# Results Detail

## Results Plots
![](/tmp/50a2e428-eea3-4aae-b083-25e9fdb4d326/4d20932e-d213-4ca6-a3d1-48653b9278d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/50a2e428-eea3-4aae-b083-25e9fdb4d326/4d20932e-d213-4ca6-a3d1-48653b9278d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/50a2e428-eea3-4aae-b083-25e9fdb4d326/4d20932e-d213-4ca6-a3d1-48653b9278d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/50a2e428-eea3-4aae-b083-25e9fdb4d326/4d20932e-d213-4ca6-a3d1-48653b9278d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1345586   0.0637071   0.2054101
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2289742   0.1915913   0.2663571
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2332166   0.0896442   0.3767890
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0856732   0.0597214   0.1116250
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0942967   0.0551624   0.1334310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1338383   0.0604640   0.2072126
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2999369   0.2561368   0.3437370
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.3152939   0.2088130   0.4217747
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4143126   0.3022568   0.5263684
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0976179   0.0907532   0.1044825
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1093225   0.1002360   0.1184090
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1417751   0.1272445   0.1563057
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1591517   0.1441244   0.1741790
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1720573   0.1532384   0.1908761
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1404959   0.1142359   0.1667559
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0309001   0.0268994   0.0349008
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0334784   0.0282041   0.0387527
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0405103   0.0328656   0.0481550
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0278406   0.0204990   0.0351822
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0267647   0.0169276   0.0366018
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0224125   0.0129154   0.0319096
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1111111   0.0426082   0.1796140
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2232779   0.1834613   0.2630945
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2750000   0.1364985   0.4135015
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0819654   0.0561815   0.1077493
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0831180   0.0451756   0.1210604
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1186134   0.0488687   0.1883580
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2996374   0.2554237   0.3438511
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.3089941   0.2050576   0.4129307
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4133455   0.3021163   0.5245747
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0744277   0.0684686   0.0803868
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0855294   0.0771867   0.0938722
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1207198   0.1069448   0.1344948
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1438922   0.1293406   0.1584438
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1574578   0.1396788   0.1752368
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1339471   0.1078178   0.1600764


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
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.7016690   0.9807070   2.952643
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.7331972   0.7701367   3.900571
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.1006552   0.6587154   1.839098
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.5621951   0.8353129   2.921604
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0512005   0.7279471   1.517998
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.3813325   1.0162052   1.877652
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1199027   1.0056137   1.247181
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4523476   1.2826990   1.644434
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0810897   0.9421919   1.240464
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8827798   0.7201789   1.082092
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0834406   0.8886234   1.320969
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.3110076   1.0382446   1.655430
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9613562   0.6112956   1.511880
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8050288   0.4911427   1.319517
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       2.0095012   1.0576908   3.817841
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       2.4750000   1.1164457   5.486720
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0140618   0.5827108   1.764720
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4471146   0.7429932   2.818519
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0312269   0.7147052   1.487927
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.3794855   1.0148413   1.875151
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1491617   1.0144617   1.301747
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.6219747   1.4091608   1.866928
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0942759   0.9437487   1.268812
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9308849   0.7507236   1.154282


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0849927    0.0172335   0.1527518
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0079943   -0.0093605   0.0253491
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0168439   -0.0072655   0.0409533
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0118552    0.0064640   0.0172464
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0023896   -0.0074746   0.0122538
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0027017   -0.0003027   0.0057061
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0011343   -0.0063836   0.0041149
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0992210    0.0323673   0.1660747
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0043359   -0.0124849   0.0211568
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0179891   -0.0064714   0.0424497
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0122309    0.0074021   0.0170596
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0039258   -0.0058085   0.0136600


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.3871199   -0.0093549   0.6278594
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0853480   -0.1193338   0.2526016
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0531721   -0.0260285   0.1262591
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1082932    0.0582722   0.1556574
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0147925   -0.0482088   0.0740073
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0804025   -0.0131894   0.1653489
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0424750   -0.2594934   0.1371499
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.4717349    0.0481092   0.7068319
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0502419   -0.1658351   0.2262709
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0566361   -0.0235392   0.1305312
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1411386    0.0847572   0.1940468
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0265582   -0.0416419   0.0902930
