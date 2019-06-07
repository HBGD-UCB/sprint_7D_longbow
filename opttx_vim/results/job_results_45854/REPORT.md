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
![](/tmp/699f73f4-a9f6-4c43-a473-dc2a4594f5c0/4c3f32fb-7d90-41b5-8073-21e71d66433f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/699f73f4-a9f6-4c43-a473-dc2a4594f5c0/4c3f32fb-7d90-41b5-8073-21e71d66433f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.3299795   0.2341141   0.4258449
0-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                0.8042812   0.6838810   0.9246813
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.4796013   0.2412410   0.7179616
0-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5409356   0.4382532   0.6436181
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.5430536   0.4916091   0.5944982
0-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.6672758   0.6134078   0.7211438
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.5097499   0.4961787   0.5233211
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.5646171   0.5211992   0.6080349
0-6 months    ki0047075b-MAL-ED       PERU           optimal              NA                0.4948784   0.3077330   0.6820238
0-6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.4039008   0.3094946   0.4983070
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.2724487   0.2117034   0.3331939
0-6 months    ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.2622974   0.2192945   0.3053003
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.3775175   0.3643140   0.3907210
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.3181866   0.2800264   0.3563468
6-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                0.6035047   0.3690738   0.8379357
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.2986965   0.1960669   0.4013261
6-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.3774022   0.2447334   0.5100711
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.2786363   0.2049569   0.3523157
6-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.5325742   0.4715189   0.5936295
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.2189274   0.2032632   0.2345916
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.3854084   0.3583395   0.4124772


### Parameter: E(Y)


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          observed             NA                0.3671875   0.2833521   0.4510229
0-24 months   ki0047075b-MAL-ED       PERU           observed             NA                0.7256637   0.6430317   0.8082957
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.6051502   0.5422501   0.6680504
0-24 months   ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal     NEPAL          observed             NA                0.6678082   0.6295756   0.7060408
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.5232725   0.5136886   0.5328564
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.5813264   0.5653125   0.5973403
0-6 months    ki0047075b-MAL-ED       PERU           observed             NA                0.4513274   0.3591676   0.5434872
0-6 months    ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1113344-GMS-Nepal     NEPAL          observed             NA                0.2739726   0.2377697   0.3101755
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.3935789   0.3847652   0.4023927
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.3483896   0.3331073   0.3636720
6-24 months   ki0047075b-MAL-ED       PERU           observed             NA                0.5081967   0.3816986   0.6346949
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.3724138   0.2934521   0.4513755
6-24 months   ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1113344-GMS-Nepal     NEPAL          observed             NA                0.5542169   0.5063374   0.6020964
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.2172338   0.2078312   0.2266365
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.3773167   0.3586399   0.3959936


### Parameter: RR


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          observed             optimal           1.1127585   0.9466915   1.3079567
0-24 months   ki0047075b-MAL-ED       PERU           observed             optimal           0.9022513   0.7972958   1.0210231
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.2617776   0.7829031   2.0335629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.2285138   1.0317321   1.4628276
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           0.8794206   0.8198616   0.9433062
0-24 months   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0007979   0.9495407   1.0548219
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0265279   1.0067229   1.0467226
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.0295941   0.9600875   1.1041328
0-6 months    ki0047075b-MAL-ED       PERU           observed             optimal           0.9119967   0.6662782   1.2483342
0-6 months    ki1017093-NIH-Birth     BANGLADESH     observed             optimal           0.8659590   0.6988032   1.0730991
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.1088725   0.9137135   1.3457153
0-6 months    ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0445112   0.9520283   1.1459783
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0425449   1.0147575   1.0710932
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.0949224   0.9795278   1.2239112
6-24 months   ki0047075b-MAL-ED       PERU           observed             optimal           0.8420758   0.6347013   1.1172052
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.2467968   0.9742616   1.5955696
6-24 months   ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.5206934   1.0967349   2.1085390
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           0.9433296   0.7553879   1.1780313
6-24 months   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0406378   0.9695804   1.1169028
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           0.9922642   0.9370381   1.0507453
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           0.9790051   0.9314099   1.0290323


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.0372080   -0.0160933    0.0905093
0-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                -0.0786174   -0.1766132    0.0193783
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.1255489   -0.1026131    0.3537109
0-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.1236113    0.0298097    0.2174128
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                -0.0654811   -0.1031768   -0.0277854
0-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0005324   -0.0345468    0.0356116
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0135226    0.0035865    0.0234587
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0167094   -0.0227254    0.0561441
0-6 months    ki0047075b-MAL-ED       PERU           optimal              NA                -0.0435510   -0.1993530    0.1122511
0-6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                -0.0541393   -0.1406101    0.0323316
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0296622   -0.0231373    0.0824616
0-6 months    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0116752   -0.0126395    0.0359898
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0160614    0.0058540    0.0262688
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0302030   -0.0052500    0.0656560
6-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                -0.0953080   -0.2690666    0.0784506
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0737173    0.0002175    0.1472171
6-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.1965108    0.0744188    0.3186028
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                -0.0157904   -0.0777144    0.0461335
6-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0216426   -0.0159668    0.0592521
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                -0.0016936   -0.0142303    0.0108431
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                -0.0080916   -0.0273034    0.0111202


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.1013324   -0.0563103    0.2354487
0-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                -0.1083387   -0.2542397    0.0205902
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.2074673   -0.2772973    0.5082523
0-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.1860083    0.0307561    0.3163925
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                -0.1371123   -0.2197180   -0.0601012
0-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0007972   -0.0531407    0.0519727
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0258424    0.0066780    0.0446371
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0287435   -0.0415717    0.0943118
0-6 months    ki0047075b-MAL-ED       PERU           optimal              NA                -0.0964953   -0.5008745    0.1989324
0-6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                -0.1547891   -0.4310181    0.0681196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0981831   -0.0944350    0.2569008
0-6 months    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0426144   -0.0503890    0.1273832
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0408087    0.0145429    0.0663744
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0866933   -0.0209001    0.1829473
6-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                -0.1875416   -0.5755443    0.1049093
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.1979447   -0.0264184    0.3732646
6-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.3424052    0.0882026    0.5257380
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                -0.0600749   -0.3238231    0.1511261
6-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0390509   -0.0313740    0.1046669
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                -0.0077961   -0.0671925    0.0482946
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                -0.0214452   -0.0736411    0.0282132
