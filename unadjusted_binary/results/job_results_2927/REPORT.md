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

unadjusted

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
![](/tmp/29dbfb6f-103d-4414-838c-5b09248116a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/29dbfb6f-103d-4414-838c-5b09248116a1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/29dbfb6f-103d-4414-838c-5b09248116a1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/29dbfb6f-103d-4414-838c-5b09248116a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.4635762   0.4176246   0.5095277
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4840183   0.4177874   0.5502492
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.5348837   0.4293974   0.6403700
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.6430260   0.5973295   0.6887225
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.7317073   0.6357261   0.8276886
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.7341772   0.6366775   0.8316769
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.4892074   0.4772765   0.5011383
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.5466667   0.5322300   0.5611034
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5808404   0.5613077   0.6003731
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.5875421   0.5651572   0.6099269
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.5855856   0.5597854   0.6113857
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.5665455   0.5234607   0.6096302
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5185185   0.3292108   0.7078262
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.4137931   0.2337418   0.5938445
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4385965   0.3092034   0.5679896
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3157895   0.2222434   0.4093355
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.3495935   0.3074253   0.3917617
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.4285714   0.2787888   0.5783541
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2825607   0.2410716   0.3240498
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.3333333   0.2708583   0.3958084
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3255814   0.2264799   0.4246829
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2600473   0.2182086   0.3018860
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.3292683   0.2274648   0.4310718
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2911392   0.1908770   0.3914015
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.3657018   0.3538648   0.3775387
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4161749   0.4018946   0.4304553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.4322357   0.4126819   0.4517895
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3595376   0.3382237   0.3808515
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3484932   0.3232097   0.3737766
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3050595   0.2670372   0.3430818
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5384615   0.2652198   0.8117033
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.5625000   0.3174088   0.8075912
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4687500   0.2944158   0.6430842
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3037975   0.2020328   0.4055622
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3750000   0.1369619   0.6130381
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4800000   0.3410405   0.6189595
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3750000   0.2480186   0.5019814
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.6029963   0.5442233   0.6617692
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7272727   0.5409010   0.9136444
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2611465   0.2125132   0.3097798
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2462687   0.1732493   0.3192880
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3103448   0.1911652   0.4295244
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.5311475   0.4750753   0.5872198
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.6111111   0.4809300   0.7412922
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.6250000   0.4980497   0.7519503
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.1966092   0.1854596   0.2077589
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2264320   0.2109536   0.2419104
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.2660720   0.2426794   0.2894646
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3676471   0.3414402   0.3938540
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3752000   0.3437630   0.4066370
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3839750   0.3367741   0.4311760


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
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.0440965   0.8817787   1.2362939
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1538206   0.9252933   1.4387892
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.1379125   0.9802064   1.3209920
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1417535   0.9821073   1.3273510
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1174538   1.0816038   1.1544921
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1873091   1.1425416   1.2338307
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9966700   0.9398026   1.0569785
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9642636   0.8855217   1.0500073
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.7980296   0.4522086   1.4083127
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8458647   0.5289894   1.3525544
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.1070461   0.8040047   1.5243082
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.3571429   0.8583327   2.1458308
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1796875   0.9297470   1.4968186
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1522529   0.8218241   1.6155365
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.2661863   0.8935726   1.7941772
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1195627   0.7655430   1.6372963
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1380173   1.0875608   1.1908147
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1819350   1.1190548   1.2483484
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9692816   0.8833753   1.0635421
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.8484775   0.7387865   0.9744547
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
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       0.9430288   0.6644504   1.3384043
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1883936   0.7755412   1.8210244
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.1505487   0.9070950   1.4593426
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1766975   0.9359398   1.4793870
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1516853   1.0591890   1.2522591
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.3533035   1.2296589   1.4893808
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0205440   0.9135276   1.1400970
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       1.0444121   0.9078916   1.2014613


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0374003   -0.0151449   0.0899454
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0521141   -0.1927633   0.0885352
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0293926   -0.0254397   0.0842250
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1277048    0.0360971   0.2193125
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0139964   -0.0152237   0.0432165
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0247822    0.0018711   0.0476933
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0343908    0.0267194   0.0420623
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0034544   -0.0194357   0.0125269
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0671911   -0.2321305   0.0977483
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0339721   -0.0526229   0.1205670
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0195501   -0.0075392   0.0466394
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0139253   -0.0089949   0.0368455
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0278772    0.0197218   0.0360325
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0111479   -0.0259740   0.0036781
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0302648   -0.2728345   0.2123049
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0686163   -0.0042292   0.1414619
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1989130    0.0822062   0.3156198
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0016994   -0.0283609   0.0317596
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0230693   -0.0054807   0.0516193
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0203457    0.0129327   0.0277587
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0049897   -0.0136692   0.0236486


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.1018560   -0.0533699   0.2342077
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0718157   -0.2852318   0.1061621
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0485708   -0.0467897   0.1352442
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1921682    0.0407818   0.3196624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0293074   -0.0338788   0.0886319
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0371098    0.0019881   0.0709955
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0656817    0.0509324   0.0802019
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0059142   -0.0336547   0.0210818
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.1488744   -0.5806847   0.1649743
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0971292   -0.1877192   0.3136629
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0647117   -0.0293366   0.1501671
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0508274   -0.0365454   0.1308354
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0708299    0.0498601   0.0913370
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0319985   -0.0754653   0.0097115
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0595534   -0.6629489   0.3249021
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.1842475   -0.0366419   0.3580695
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.3465909    0.1055065   0.5226981
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0064652   -0.1147404   0.1144922
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0416251   -0.0114815   0.0919434
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0937786    0.0592784   0.1270136
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0133902   -0.0379653   0.0622048
