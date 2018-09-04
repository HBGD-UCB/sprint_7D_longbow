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
![](/tmp/23ea8c1b-de94-4531-9cf1-7810104dfe28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/23ea8c1b-de94-4531-9cf1-7810104dfe28/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/23ea8c1b-de94-4531-9cf1-7810104dfe28/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/23ea8c1b-de94-4531-9cf1-7810104dfe28/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.3297872   0.2343736   0.4252009
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.4000000   0.1511078   0.6488922
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.5263158   0.3009219   0.7517096
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.7777778   0.6202642   0.9352913
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.7241379   0.5607440   0.8875319
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.7017544   0.5824599   0.8210489
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.5757576   0.4912643   0.6602508
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.4736842   0.2486892   0.6986792
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.6829268   0.5819918   0.7838619
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.5368421   0.4364916   0.6371926
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.6768293   0.6354706   0.7181879
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.8095238   0.6906725   0.9283752
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.4674932   0.4225061   0.5124802
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4847334   0.4217234   0.5477434
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.5530556   0.4632185   0.6428927
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.6390396   0.5953048   0.6827743
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.7287614   0.6633056   0.7942172
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.6986779   0.6331457   0.7642101
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.5038867   0.4920136   0.5157598
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.5395253   0.5252005   0.5538501
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5840084   0.5650731   0.6029437
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.5878970   0.5656307   0.6101633
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.5853025   0.5596425   0.6109625
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.5661047   0.5237020   0.6085074
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5053516   0.3264115   0.6842917
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.4077851   0.2331511   0.5824191
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4380417   0.3106395   0.5654439
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3309735   0.2395443   0.4224027
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.3505887   0.3084468   0.3927306
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.4500445   0.3077404   0.5923486
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2814415   0.2400131   0.3228700
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.3358119   0.2734544   0.3981693
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3258166   0.2261266   0.4255066
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2634198   0.2232591   0.3035805
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.3928073   0.3227271   0.4628876
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.3320136   0.2664746   0.3975526
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.3762622   0.3643759   0.3881486
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4101215   0.3962504   0.4239926
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.4489296   0.4300573   0.4678019
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3599212   0.3387729   0.3810694
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3478911   0.3228179   0.3729642
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3058109   0.2683436   0.3432782
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5384615   0.2652198   0.8117033
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.5625000   0.3174088   0.8075912
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4687500   0.2944158   0.6430842
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3037975   0.2020328   0.4055622
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3750000   0.1369619   0.6130381
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4800000   0.3410405   0.6189595
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3750000   0.2480186   0.5019814
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.6029963   0.5442233   0.6617692
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7272727   0.5409010   0.9136444
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2584643   0.2099410   0.3069876
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2338826   0.1611725   0.3065927
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2714137   0.1551324   0.3876949
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.5188704   0.4653256   0.5724152
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.5843317   0.5016754   0.6669879
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.5730968   0.4935176   0.6526759
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2070264   0.1955019   0.2185508
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2206542   0.2056535   0.2356550
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.2485104   0.2278096   0.2692111
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3682051   0.3419768   0.3944334
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3766953   0.3454392   0.4079513
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3849836   0.3380573   0.4319100


### Parameter: E(Y)


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.3671875   0.2833521   0.4510229
0-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.7256637   0.6430317   0.8082957
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.6051502   0.5422501   0.6680504
0-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.6678082   0.6295756   0.7060408
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.5235982   0.5140267   0.5331697
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.5840877   0.5680928   0.6000826
0-6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.4513274   0.3591676   0.5434872
0-6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2739726   0.2377697   0.3101755
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3935789   0.3847652   0.4023927
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3483896   0.3331073   0.3636720
6-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.5081967   0.3816986   0.6346949
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3724138   0.2934521   0.4513755
6-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5542169   0.5063374   0.6020964
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2169550   0.2075652   0.2263448
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3726367   0.3538544   0.3914191


### Parameter: RR


agecat        studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       1.2129032   0.6106769   2.4090222
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       1.5959253   0.9518332   2.6758654
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.9310345   0.6875281   1.2607852
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.9022556   0.6926259   1.1753317
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       0.8227147   0.5004294   1.3525572
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.1861361   0.9631193   1.4607939
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.2607604   1.0356748   1.5347643
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.5079365   1.1889272   1.9125414
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.0368781   0.8833748   1.2170556
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1830239   0.9809280   1.4267566
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.1404011   1.0187275   1.2766070
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.0933249   0.9734034   1.2280207
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0707273   1.0367323   1.1058369
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1590074   1.1166630   1.2029575
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9955869   0.9391910   1.0553691
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9629318   0.8852710   1.0474054
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.8069334   0.4637120   1.4041937
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8668059   0.5484226   1.3700247
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.0592651   0.7836435   1.4318278
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.3597599   0.8938040   2.0686271
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1931852   0.9417406   1.5117654
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1576707   0.8243035   1.6258591
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.4911837   1.1791115   1.8858513
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.2603972   0.9826387   1.6166686
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0899885   1.0426650   1.1394599
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1931296   1.1337787   1.2555873
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9665758   0.8818961   1.0593864
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.8496608   0.7414540   0.9736591
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       1.0446429   0.5351702   2.0391245
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8705357   0.4640367   1.6331303
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.2343750   0.6021990   2.5301963
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.5800000   1.0147938   2.4600071
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.6079900   1.1304540   2.2872508
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.9393939   1.2683556   2.9654529
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       0.9048932   0.6297509   1.3002469
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.0501011   0.6573105   1.6776125
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.1261611   0.9453222   1.3415942
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1045084   0.9286931   1.3136083
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0658268   0.9803330   1.1587764
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.2003803   1.0920090   1.3195065
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0230582   0.9164189   1.1421066
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       1.0455684   0.9095148   1.2019742


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0374003   -0.0151449   0.0899454
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0521141   -0.1927633   0.0885352
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0293926   -0.0254397   0.0842250
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1277048    0.0360971   0.2193125
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0100794   -0.0181008   0.0382596
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0287687    0.0065101   0.0510272
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0197115    0.0117454   0.0276776
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0038094   -0.0197013   0.0120825
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0540242   -0.2099902   0.1019419
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0187880   -0.0659234   0.1034994
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0206693   -0.0063873   0.0477259
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0105528   -0.0118169   0.0329225
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0173167    0.0089253   0.0257081
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0115315   -0.0262107   0.0031477
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0302648   -0.2728345   0.2123049
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0686163   -0.0042292   0.1414619
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1989130    0.0822062   0.3156198
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0043815   -0.0256672   0.0344303
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0353464    0.0074212   0.0632717
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0099286    0.0019968   0.0178605
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0044316   -0.0142070   0.0230703


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.1018560   -0.0533699   0.2342077
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0718157   -0.2852318   0.1061621
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0485708   -0.0467897   0.1352442
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1921682    0.0407818   0.3196624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0211055   -0.0397085   0.0783623
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0430792    0.0091334   0.0758621
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0376462    0.0223601   0.0526933
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0065219   -0.0341062   0.0203266
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.1197006   -0.5266351   0.1787629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0537166   -0.2221425   0.2673094
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0684163   -0.0255312   0.1537573
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0385177   -0.0461923   0.1163687
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0439980    0.0224610   0.0650606
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0330995   -0.0761370   0.0082168
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0595534   -0.6629489   0.3249021
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.1842475   -0.0366419   0.3580695
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.3465909    0.1055065   0.5226981
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0166696   -0.1045645   0.1245974
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0637773    0.0121383   0.1127169
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0457635    0.0086913   0.0814492
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0118926   -0.0394059   0.0606594
