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
![](/tmp/fa03942a-dac3-43df-9903-01eaca78e740/2a9d53e3-d993-44dd-a339-225b988a52bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa03942a-dac3-43df-9903-01eaca78e740/2a9d53e3-d993-44dd-a339-225b988a52bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.4622206   0.3418421   0.5825992
0-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                0.8804272   0.8000934   0.9607611
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.4843045   0.2440686   0.7245404
0-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5387369   0.4366237   0.6408501
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.5063508   0.4488297   0.5638719
0-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.6477115   0.6009159   0.6945072
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.5145883   0.5019175   0.5272591
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.5644016   0.5209393   0.6078639
0-6 months    ki0047075b-MAL-ED       PERU           optimal              NA                0.5143839   0.3363356   0.6924323
0-6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.3845205   0.2877750   0.4812659
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.2824159   0.2218389   0.3429929
0-6 months    ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.2953301   0.2372960   0.3533642
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.3773798   0.3640245   0.3907351
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.3065415   0.2683667   0.3447162
6-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                0.6005317   0.4296952   0.7713682
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.3032590   0.2009164   0.4056017
6-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.3682433   0.2382564   0.4982302
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.3271771   0.2501027   0.4042515
6-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.5333267   0.4771178   0.5895357
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.2184312   0.2022358   0.2346265
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.3891043   0.3619348   0.4162737


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
0-24 months   ki0047075b-MAL-ED       NEPAL          observed             optimal           0.7943987   0.6631432   0.9516337
0-24 months   ki0047075b-MAL-ED       PERU           observed             optimal           0.8242177   0.7387474   0.9195766
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.2495242   0.7760011   2.0119954
0-24 months   ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.2335277   1.0362298   1.4683910
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           0.9431654   0.8655481   1.0277430
0-24 months   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0310272   0.9900275   1.0737248
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0168762   0.9990201   1.0350514
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.0299872   0.9603726   1.1046479
0-6 months    ki0047075b-MAL-ED       PERU           observed             optimal           0.8774136   0.6551958   1.1749993
0-6 months    ki1017093-NIH-Birth     BANGLADESH     observed             optimal           0.9096045   0.7223895   1.1453382
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.0697373   0.8865496   1.2907771
0-6 months    ki1113344-GMS-Nepal     NEPAL          observed             optimal           0.9276826   0.7998051   1.0760060
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0429253   1.0156402   1.0709434
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.1365172   1.0116811   1.2767573
6-24 months   ki0047075b-MAL-ED       PERU           observed             optimal           0.8462446   0.6749636   1.0609905
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.2280387   0.9637229   1.5648471
6-24 months   ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.5585160   1.1226795   2.1635490
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           0.8033748   0.6592327   0.9790339
6-24 months   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0391695   0.9846820   1.0966720
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           0.9945183   0.9356509   1.0570895
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           0.9697060   0.9191001   1.0230983


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.0950331   -0.1768604   -0.0132059
0-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                -0.1547635   -0.2404122   -0.0691148
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.1208457   -0.1091436    0.3508350
0-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.1258100    0.0325443    0.2190756
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                -0.0287782   -0.0723122    0.0147558
0-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0200967   -0.0061382    0.0463316
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0086843   -0.0004440    0.0178125
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0169248   -0.0225418    0.0563914
0-6 months    ki0047075b-MAL-ED       PERU           optimal              NA                -0.0630565   -0.2130566    0.0869436
0-6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                -0.0347589   -0.1233589    0.0538410
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0196949   -0.0334466    0.0728364
0-6 months    ki1113344-GMS-Nepal     NEPAL          optimal              NA                -0.0213575   -0.0651913    0.0224763
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0161991    0.0062028    0.0261955
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0418482    0.0061416    0.0775548
6-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                -0.0923350   -0.2234396    0.0387697
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0691548   -0.0043546    0.1426642
6-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.2056698    0.0861685    0.3251710
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                -0.0643313   -0.1289073    0.0002448
6-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0208901   -0.0077463    0.0495266
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                -0.0011974   -0.0145243    0.0121296
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                -0.0117875   -0.0326016    0.0090266


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.2588137   -0.5079700   -0.0508245
0-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                -0.2132717   -0.3536426   -0.0874570
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.1996954   -0.2886579    0.5029810
0-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.1893169    0.0349631    0.3189825
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                -0.0602594   -0.1553373    0.0269941
0-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0300935   -0.0100729    0.0686627
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0165961   -0.0009809    0.0338644
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0291141   -0.0412626    0.0947342
0-6 months    ki0047075b-MAL-ED       PERU           optimal              NA                -0.1397134   -0.5262614    0.1489356
0-6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                -0.0993790   -0.3842948    0.1268954
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0651910   -0.1279685    0.2252729
0-6 months    ki1113344-GMS-Nepal     NEPAL          optimal              NA                -0.0779549   -0.2503046    0.0706371
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0411585    0.0153993    0.0662438
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.1201189    0.0115463    0.2167658
6-24 months   ki0047075b-MAL-ED       PERU           optimal              NA                -0.1816914   -0.4815614    0.0574845
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.1856934   -0.0376427    0.3609599
6-24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.3583640    0.1092739    0.5377965
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                -0.2447490   -0.5169152   -0.0214151
6-24 months   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0376930   -0.0155563    0.0881503
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                -0.0055119   -0.0687747    0.0540063
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                -0.0312404   -0.0880208    0.0225768
