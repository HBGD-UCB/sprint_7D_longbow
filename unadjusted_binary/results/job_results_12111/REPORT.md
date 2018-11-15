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
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      151     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      272     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       22     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       60     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       21     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       58     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4447   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     4252   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2625   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     3161   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1214   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1     1682   17381
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     1143    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1     1606    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0      812    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1     1135    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      305    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      397    5398
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
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      313     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      110     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       55     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       27     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       56     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       23     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     5500   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     3171   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     3364   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     2398   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1638   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1     1247   17318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     1662    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1      933    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     1189    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1      636    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      467    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      205    5092
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
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      143     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      162     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       21     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       33     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       21     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       35     415
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4417   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     1081   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2600   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      763   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1195   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      435   10491
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     1137    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1      673    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0      811    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1      499    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      303    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      192    3615


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
![](/tmp/e9dd70ab-fb49-42f0-98c4-7f37f7888137/ed7a7cd6-cde0-4153-976b-7a59328c3ab4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e9dd70ab-fb49-42f0-98c4-7f37f7888137/ed7a7cd6-cde0-4153-976b-7a59328c3ab4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e9dd70ab-fb49-42f0-98c4-7f37f7888137/ed7a7cd6-cde0-4153-976b-7a59328c3ab4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e9dd70ab-fb49-42f0-98c4-7f37f7888137/ed7a7cd6-cde0-4153-976b-7a59328c3ab4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.4887918   0.4768493   0.5007343
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.5463187   0.5318783   0.5607591
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5808011   0.5612647   0.6003375
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.5842124   0.5619313   0.6064935
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.5829481   0.5571869   0.6087093
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.5655271   0.5220325   0.6090216
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
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.1966170   0.1854422   0.2077917
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2268808   0.2113496   0.2424119
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.2668712   0.2435642   0.2901781
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3718232   0.3459419   0.3977045
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3809160   0.3496083   0.4122238
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3878788   0.3400891   0.4356685


### Parameter: E(Y)


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.3671875   0.2833521   0.4510229
0-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.7256637   0.6430317   0.8082957
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.6051502   0.5422501   0.6680504
0-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.6678082   0.6295756   0.7060408
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.5232725   0.5136886   0.5328564
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.5813264   0.5653125   0.5973403
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
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2172338   0.2078312   0.2266365
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3773167   0.3586399   0.3959936


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
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1176920   1.0818060   1.1547684
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1882382   1.1434473   1.2347837
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9978359   0.9409006   1.0582163
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9680161   0.8882113   1.0549914
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
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1539227   1.0611365   1.2548221
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.3573151   1.2338289   1.4931603
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0244547   0.9192985   1.1416394
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       1.0431807   0.9070420   1.1997525


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0374003   -0.0151449   0.0899454
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0521141   -0.1927633   0.0885352
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0293926   -0.0254397   0.0842250
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1277048    0.0360971   0.2193125
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0139964   -0.0152237   0.0432165
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0247822    0.0018711   0.0476933
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0344807    0.0268114   0.0421501
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0028860   -0.0188477   0.0130756
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
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0206169    0.0131975   0.0280363
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0054935   -0.0130533   0.0240403


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.1018560   -0.0533699   0.2342077
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0718157   -0.2852318   0.1061621
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0485708   -0.0467897   0.1352442
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1921682    0.0407818   0.3196624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0293074   -0.0338788   0.0886319
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0371098    0.0019881   0.0709955
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0658944    0.0511389   0.0804204
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0049645   -0.0328048   0.0221252
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
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0949063    0.0604127   0.1281336
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0145595   -0.0358220   0.0624905
