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

**Outcome Variable:** ever_stunted

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

agecat        studyid                 country        hfoodsec                ever_stunted   n_cell       n
------------  ----------------------  -------------  ---------------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0       62     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       99     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        3     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       10     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1       19     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       90     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1       25     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0       67     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1      123     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        5     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        0     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      0        7     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      1       10     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        0       63     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        1       31     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0        9     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        6     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      0        9     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      1       10     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        0        6     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        1       21     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0        8     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1       21     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      0       17     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      1       40     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0       56     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1       76     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        9     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       26     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       56     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       44     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       51     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      159     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1      333     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0        8     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1       34     629
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      243     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1      210     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      113     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1      106     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       40     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1       46     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      302    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      544    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       44    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1      120    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       42    1168
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1      116    1168
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     8874   34706
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     8499   34706
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     5236   34706
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     6314   34706
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     2424   34706
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1     3359   34706
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     2205   10495
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1     3141   10495
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     1564   10495
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1     2210   10495
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      596   10495
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      779   10495
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0      109     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       52     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        2     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        2     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       20     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1        9     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       95     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1       20     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                        0      122     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                        1       68     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        5     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        0     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                      0       13     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                      1        4     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                        0       81     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                        1       13     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0       12     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        3     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                      0       12     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        7     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                        0       13     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                        1       14     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0       17     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1       12     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                      0       32     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                      1       25     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0       80     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1       52     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       16     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        3     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       50     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       32     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       65     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       30     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      320     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1      172     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       24     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1       18     629
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      325     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1      128     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      146     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       73     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       58     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1       28     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      626    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      220    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0      110    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       54    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0      112    1168
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       46    1168
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0    11000   34636
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     6342   34636
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     6728   34636
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     4796   34636
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     3276   34636
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1     2494   34636
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     3324   10184
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1     1866   10184
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     2378   10184
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1     1272   10184
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      934   10184
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      410   10184
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0       62     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       47     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        1     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       10     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1       10     131
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0        7     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       90     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        5     105
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0       67     140
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1       55     140
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        5     140
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        0     140
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      0        7     140
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      1        6     140
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        0       63     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        1       18     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0        9     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        3     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      0        9     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        3     105
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        0        6      61
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        1        7      61
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0        7      61
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1        9      61
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      0       17      61
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      1       15      61
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0       55     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1       24     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        6     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       26     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       24     145
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       35     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       21     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      106     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1      161     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0        6     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1       16     345
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      232     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       82     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      101     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       33     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       40     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1       18     506
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      286     830
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      324     830
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       42     830
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       66     830
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       42     830
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       70     830
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     8814   20926
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     2157   20926
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     5186   20926
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     1518   20926
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     2386   20926
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      865   20926
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     2193    6929
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1     1275    6929
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     1562    6929
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1      938    6929
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      592    6929
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      369    6929


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2b425c6b-157d-479d-8169-54c91872439d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b425c6b-157d-479d-8169-54c91872439d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.3322436   0.2368296   0.4276576
0-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                0.7013768   0.5820823   0.8206713
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.4869259   0.2618582   0.7119935
0-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5382807   0.4379298   0.6386315
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.4007099   0.3498049   0.4516149
0-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.6432493   0.5994369   0.6870617
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.4855381   0.4734100   0.4976662
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.5657537   0.5232365   0.6082710
0-6 months    ki0047075b-MAL-ED       PERU           optimal              NA                0.4063767   0.2355062   0.5772472
0-6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.3163677   0.2228231   0.4099123
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.2819346   0.2405002   0.3233690
0-6 months    ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.1860896   0.1368982   0.2352809
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.3578980   0.3460612   0.3697348
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.2559739   0.2242562   0.2876915
6-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                0.5085515   0.2759493   0.7411537
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.3055770   0.2038120   0.4073421
6-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.3804191   0.2534311   0.5074072
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.2439717   0.1714561   0.3164872
6-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.5276983   0.4741313   0.5812653
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.1823192   0.1707685   0.1938698
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.3687329   0.3424589   0.3950069


### Parameter: E(Y)


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          observed             NA                0.3674398   0.2836044   0.4512753
0-24 months   ki0047075b-MAL-ED       PERU           observed             NA                0.7259757   0.6433437   0.8086077
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.6061621   0.5432620   0.6690623
0-24 months   ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.6645778   0.6276505   0.7015050
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.4786799   0.4430977   0.5142621
0-24 months   ki1113344-GMS-Nepal     NEPAL          observed             NA                0.6702801   0.6320475   0.7085127
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.5241909   0.5146194   0.5337624
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.5841341   0.5681392   0.6001289
0-6 months    ki0047075b-MAL-ED       PERU           observed             NA                0.4511037   0.3589439   0.5432635
0-6 months    ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.3499085   0.3126100   0.3872069
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.3022079   0.2694982   0.3349176
0-6 months    ki1113344-GMS-Nepal     NEPAL          observed             NA                0.2796662   0.2434632   0.3158691
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.3938826   0.3850689   0.4026964
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.3492286   0.3339463   0.3645110
6-24 months   ki0047075b-MAL-ED       PERU           observed             NA                0.5092410   0.3827429   0.6357391
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.3722816   0.2933199   0.4512433
6-24 months   ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.5736668   0.5214102   0.6259234
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.2627857   0.2243945   0.3011770
6-24 months   ki1113344-GMS-Nepal     NEPAL          observed             NA                0.5574777   0.5095982   0.6053572
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.2179574   0.2085675   0.2273472
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.3726781   0.3538958   0.3914604


### Parameter: RR


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          0.9042123   0.7720797   1.0589579
0-24 months   ki0047075b-MAL-ED       PERU           optimal              observed          0.9661161   0.8594404   1.0860326
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          0.8032931   0.5158000   1.2510270
0-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          0.8099589   0.6824664   0.9612684
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          0.8371146   0.7611464   0.9206650
0-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          0.9596724   0.9270125   0.9934830
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          0.9262620   0.9105642   0.9422303
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          0.9685341   0.9045035   1.0370975
0-6 months    ki0047075b-MAL-ED       PERU           optimal              observed          0.9008499   0.6266221   1.2950877
0-6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          0.9041441   0.6876582   1.1887831
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          0.9329162   0.8476021   1.0268174
0-6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          0.6653989   0.5295482   0.8361008
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          0.9086413   0.8874141   0.9303762
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          0.7329693   0.6536610   0.8219000
6-24 months   ki0047075b-MAL-ED       PERU           optimal              observed          0.9986460   0.6649469   1.4998098
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          0.8208222   0.6469785   1.0413780
6-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          0.6631361   0.4867435   0.9034522
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          0.9284053   0.7183768   1.1998388
6-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          0.9465819   0.8982719   0.9974902
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          0.8364901   0.7989014   0.8758473
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          0.9894140   0.9405642   1.0408009
