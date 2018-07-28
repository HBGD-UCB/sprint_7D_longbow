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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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

agecat        studyid                 country        hfoodsec                    ever_stunted   n_cell       n
------------  ----------------------  -------------  -------------------------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                            0      137     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                            1       24     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                   0        3     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                   1        1     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure               0       20     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure               1        3     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure                 0        4     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure                 1        2     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                            0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                            1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                   0       10     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                   1        1     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure               0       57     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure               1       10     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure                 0       46     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure                 1        2     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                            0      161     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                            1       29     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                   0        5     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                   1        0     212
0-6 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure               0        3     212
0-6 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure               1        1     212
0-6 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure                 0       11     212
0-6 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure                 1        2     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                            0       86     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                            1        8     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                   0       13     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                   1        2     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure               0       12     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure               1        4     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure                 0        3     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure                 1        0     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                            0       22     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                            1        5     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure                   0       25     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure                   1        4     113
0-6 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure               0       26     113
0-6 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure               1        2     113
0-6 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure                 0       25     113
0-6 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure                 1        4     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                            0      116     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                            1       16     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                   0       18     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                   1        1     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure               0       70     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure               1        6     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure                 0        6     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure                 1        0     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                            0       83     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                            1       12     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                   0      416     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                   1       76     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure               0       26     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure               1       10     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure                 0        5     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure                 1        1     629
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                            0      400     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                            1       53     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                   0      183     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                   1       36     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure               0       54     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure               1        8     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure                 0       16     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure                 1        8     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                            0      381     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                            1       42     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                   0       71     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                   1       11     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure               0       50     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure               1        6     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure                 0       19     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure                 1        4     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                            0     6208   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                            1     2463   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                   0     3931   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                   1     1831   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure               0     1924   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure               1      961   17318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                            0     1824    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                            1      771    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                   0     1303    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                   1      522    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure               0      501    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure               1      171    5092
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                            0       81     157
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                            1       52     157
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                   0        2     157
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                   1        0     157
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure               0       10     157
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure               1        9     157
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure                 0        1     157
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure                 1        2     157
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                            0        3     127
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                            1        0     127
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                   0       10     127
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                   1        1     127
6-24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure               0       62     127
6-24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure               1        3     127
6-24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure                 0       48     127
6-24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure                 1        0     127
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                            0       97     175
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                            1       59     175
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                   0        5     175
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                   1        0     175
6-24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure               0        2     175
6-24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure               1        2     175
6-24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure                 0        8     175
6-24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure                 1        2     175
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                            0       78     120
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                            1       12     120
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                   0       11     120
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                   1        4     120
6-24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure               0        8     120
6-24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure               1        4     120
6-24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure                 0        1     120
6-24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure                 1        2     120
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                            0       16      91
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                            1        5      91
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure                   0       11      91
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure                   1       14      91
6-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure               0       13      91
6-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure               1        9      91
6-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure                 0       11      91
6-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure                 1       12      91
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                            0       88     198
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                            1       24     198
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                   0       12     198
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                   1        3     198
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure               0       45     198
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure               1       20     198
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure                 0        3     198
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure                 1        3     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                            0       48     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                            1       23     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                   0      175     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                   1      149     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure               0        7     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure               1       16     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure                 0        1     420
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure                 1        1     420
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                            0      308     620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                            1       69     620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                   0      145     620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                   1       30     620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure               0       34     620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure               1       14     620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure                 0       16     620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure                 1        4     620
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                            0      202     467
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                            1      136     467
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                   0       29     467
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                   1       34     467
6-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure               0       19     467
6-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure               1       28     467
6-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure                 0       11     467
6-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure                 1        8     467
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                            0     5641   13270
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                            1     1260   13270
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                   0     3444   13270
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                   1      897   13270
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure               0     1563   13270
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure               1      465   13270
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                            0     1544    4278
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                            1      648    4278
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                   0     1077    4278
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                   1      447    4278
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure               0      395    4278
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure               1      167    4278
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                            0       76     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                            1       85     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                   0        2     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                   1        2     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure               0       10     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure               1       13     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure                 0        1     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure                 1        5     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                            0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                            1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                   0        9     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                   1        2     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure               0       52     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure               1       15     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure                 0       46     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure                 1        2     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                            0       85     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                            1      105     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                   0        5     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                   1        0     212
0-24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure               0        2     212
0-24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure               1        2     212
0-24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure                 0        8     212
0-24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure                 1        5     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                            0       74     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                            1       20     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                   0       10     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                   1        5     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure               0        8     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure               1        8     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure                 0        1     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure                 1        2     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                            0       12     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                            1       15     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure                   0       10     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure                   1       19     113
0-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure               0       11     113
0-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure               1       17     113
0-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure                 0       11     113
0-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure                 1       18     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                            0       78     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                            1       54     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                   0       12     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                   1        7     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure               0       41     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure               1       35     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure                 0        1     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure                 1        5     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                            0       54     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                            1       41     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                   0      222     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                   1      270     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure               0        7     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure               1       29     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure                 0        3     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure                 1        3     629
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                            0      287     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                            1      166     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                   0      133     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                   1       86     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure               0       33     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure               1       29     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure                 0       11     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure                 1       13     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                            0      195     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                            1      228     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                   0       29     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                   1       53     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure               0       16     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure               1       40     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure                 0       10     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure                 1       13     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                            0     4686   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                            1     4013   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                   0     2820   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                   1     2966   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure               0     1289   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure               1     1607   17381
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                            0     1279    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                            1     1470    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                   0      907    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                   1     1040    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure               0      342    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure               1      360    5398


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

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```




# Results Detail

## Results Plots
![](/tmp/7dce1196-ea5e-435c-91ff-28cc59e9c5bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7dce1196-ea5e-435c-91ff-28cc59e9c5bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7dce1196-ea5e-435c-91ff-28cc59e9c5bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7dce1196-ea5e-435c-91ff-28cc59e9c5bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level         baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.4254314   0.2434275   0.6074353
0-24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.5470121   0.3704586   0.7235656
0-24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.5168808   0.3384472   0.6953144
0-24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.5167407   0.3418579   0.6916235
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.3624398   0.3198889   0.4049906
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.3801985   0.3221417   0.4382554
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.4637222   0.3780242   0.5494203
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.4857612   0.4014189   0.5701035
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.5369403   0.4917589   0.5821218
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.7030144   0.6366714   0.7693575
0-24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.8125252   0.7538728   0.8711777
0-24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.2415010   0.1747047   0.3082973
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.4762054   0.4644186   0.4879922
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.5059489   0.4914489   0.5204489
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.5594699   0.5395654   0.5793744
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.5353467   0.5128740   0.5578194
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.5284667   0.5030937   0.5538398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.5064897   0.4658250   0.5471543
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.1178569   0.0888130   0.1469008
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.1695867   0.1238111   0.2153623
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.1681193   0.0958324   0.2404063
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.6588835   0.5671465   0.7506206
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.2901879   0.2795519   0.3008240
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.3139195   0.3009828   0.3268562
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.3561259   0.3371315   0.3751204
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.2986191   0.2779667   0.3192714
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.2855526   0.2622540   0.3088513
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.2587132   0.2255840   0.2918424
6-24 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.2293760   0.0673223   0.3914297
6-24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.6000548   0.4264996   0.7736101
6-24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.4159050   0.2283561   0.6034539
6-24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.5170540   0.3296020   0.7045059
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.3962188   0.3467057   0.4457318
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.6026251   0.5246573   0.6805930
6-24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.5436392   0.4692762   0.6180023
6-24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.1221950   0.0611521   0.1832379
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.1936982   0.1833739   0.2040225
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.2005471   0.1877043   0.2133899
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.2179286   0.1989349   0.2369224
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.2966878   0.2733039   0.3200718
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.2919382   0.2646382   0.3192381
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.2938322   0.2554602   0.3322043


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.6106195   0.5203145   0.7009244
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5719178   0.5317531   0.6120825
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4939877   0.4845041   0.5034712
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5316784   0.5154699   0.5478869
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.3034415   0.2954544   0.3114286
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2875098   0.2736314   0.3013882
6-24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.4395604   0.3370187   0.5421021
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4411135   0.3960326   0.4861943
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1975885   0.1894938   0.2056833
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2949977   0.2786041   0.3113912


### Parameter: RR


agecat        studyid                 country      intervention_level         baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       1.2857821   0.7526512   2.1965494
0-24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       1.2149569   0.6993762   2.1106241
0-24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       1.2146276   0.7030362   2.0984982
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0489979   0.8672737   1.2687996
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.2794463   1.0298726   1.5895003
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.3402536   1.0877161   1.6514231
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.3092971   1.1542065   1.4852272
0-24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.5132505   1.3548464   1.6901746
0-24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.4497725   0.3370269   0.6002349
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.0624594   1.0262076   1.0999918
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.1748499   1.1282285   1.2233979
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       0.9871485   0.9265734   1.0516838
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.9460965   0.8635087   1.0365831
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.4389205   0.9983492   2.0739157
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.4264701   0.8689852   2.3416012
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       5.5905385   4.2115003   7.4211370
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.0817801   1.0256687   1.1409612
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.2272252   1.1512805   1.3081797
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       0.9562437   0.8570004   1.0669798
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.8663652   0.7478968   1.0035993
6-24 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       2.6160316   1.2222186   5.5993428
6-24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       1.8132018   0.7858271   4.1837456
6-24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       2.2541765   1.0197693   4.9828049
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.5209403   1.2712636   1.8196537
6-24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.3720683   1.1405308   1.6506099
6-24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.3084029   0.1842184   0.5163020
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.0353584   0.9565248   1.1206893
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.1250937   1.0207744   1.2400742
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       0.9839910   0.8705185   1.1122548
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.9903751   0.8513292   1.1521312


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.1851881    0.0264306   0.3439456
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0254230   -0.0017733   0.0526193
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0349775    0.0113286   0.0586264
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0177823    0.0096144   0.0259501
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0036683   -0.0197029   0.0123663
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0206655    0.0001156   0.0412155
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0132536    0.0054222   0.0210850
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0111093   -0.0258370   0.0036185
6-24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.2101845    0.0583226   0.3620463
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0448947    0.0174270   0.0723624
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0038903   -0.0034583   0.0112389
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0016902   -0.0178823   0.0145019


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.3032790   -0.0169350   0.5226636
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0655464   -0.0070856   0.1329402
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0611582    0.0189606   0.1015407
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0359974    0.0193862   0.0523273
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0068995   -0.0375211   0.0228183
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1491854   -0.0099325   0.2832338
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0436776    0.0176048   0.0690584
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0386396   -0.0911031   0.0113014
6-24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.4781696    0.0042303   0.7265362
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.1017759    0.0378779   0.1614302
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0196891   -0.0181348   0.0561078
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0057294   -0.0621347   0.0476805
