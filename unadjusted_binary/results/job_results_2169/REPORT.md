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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/b2c03db0-5550-4533-826f-a6518186d977/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b2c03db0-5550-4533-826f-a6518186d977/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b2c03db0-5550-4533-826f-a6518186d977/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2c03db0-5550-4533-826f-a6518186d977/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level         baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.5555556   0.3672909   0.7438203
0-24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.6551724   0.4814091   0.8289357
0-24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.6071429   0.4254399   0.7888458
0-24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.6206897   0.4433059   0.7980734
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.3664459   0.3220460   0.4108459
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.3926941   0.3279733   0.4574148
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.4677419   0.3434614   0.5920225
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.5416667   0.3421928   0.7411405
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.5390071   0.4914632   0.5865509
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.6463415   0.5427709   0.7499120
0-24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.7142857   0.5958649   0.8327066
0-24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.5652174   0.3624490   0.7679857
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.4613174   0.4496518   0.4729830
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.5126167   0.4980709   0.5271625
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.5549033   0.5351325   0.5746741
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.5347399   0.5122183   0.5572615
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.5341551   0.5085164   0.5597938
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.5128205   0.4694981   0.5561429
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.1169978   0.0873798   0.1466158
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.1643836   0.1152650   0.2135021
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.1290323   0.0455318   0.2125328
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.3333333   0.1446112   0.5220555
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.2840503   0.2735045   0.2945961
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.3177716   0.3046385   0.3309047
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.3331023   0.3146751   0.3515294
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.2971098   0.2768888   0.3173308
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.2860274   0.2625975   0.3094573
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.2544643   0.2194339   0.2894947
6-24 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.2380952   0.0549213   0.4212691
6-24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.5600000   0.3643419   0.7556581
6-24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.4090909   0.2025023   0.6156796
6-24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.5217391   0.3164610   0.7270173
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.4023669   0.3500329   0.4547008
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.5396825   0.4164739   0.6628912
6-24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.5957447   0.4552944   0.7361950
6-24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.4210526   0.1988115   0.6432938
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.1825822   0.1729251   0.1922393
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.2066344   0.1935233   0.2197456
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.2292899   0.2092219   0.2493580
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.2956204   0.2724461   0.3187948
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.2933071   0.2663308   0.3202834
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.2971530   0.2562475   0.3380586


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


agecat        studyid                 country      intervention_level         baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       1.1793103   0.7669045   1.813489
0-24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       1.0928571   0.6953680   1.717561
0-24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       1.1172414   0.7171773   1.740474
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0716290   0.8733862   1.314869
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.2764283   0.9531722   1.709313
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.4781627   1.0031250   2.178158
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.1991335   0.9986858   1.439813
0-24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.3251880   1.0982970   1.598951
0-24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       1.0486270   0.7247365   1.517267
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.1112017   1.0732861   1.150457
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.2028667   1.1549244   1.252799
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       0.9989064   0.9373509   1.064504
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.9590092   0.8720759   1.054609
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.4050142   0.9497314   2.078551
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.1028606   0.5504746   2.209551
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       2.8490566   1.5323508   5.297171
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.1187160   1.0603898   1.180251
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.1726876   1.0977272   1.252767
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       0.9626992   0.8634914   1.073305
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.8564654   0.7338169   0.999613
6-24 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       2.3520000   1.0103684   5.475136
6-24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       1.7181818   0.6845464   4.312562
6-24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       2.1913043   0.9234812   5.199689
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.3412698   1.0313490   1.744322
6-24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.4806008   1.1311036   1.938088
6-24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       1.0464396   0.6076123   1.802195
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.1317334   1.0470474   1.223269
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.2558174   1.1414417   1.381654
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       0.9921746   0.8791196   1.119768
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       1.0051843   0.8596304   1.175384


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.0550639   -0.1082178   0.2183457
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0214169   -0.0072175   0.0500512
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0329107    0.0084340   0.0573874
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0326703    0.0249804   0.0403602
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0030615   -0.0190268   0.0129038
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0215246    0.0006850   0.0423643
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0193912    0.0119309   0.0268516
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0096000   -0.0238644   0.0046644
6-24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.2014652    0.0324042   0.3705262
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0387466    0.0103468   0.0671464
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0150063    0.0084126   0.0216000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0006228   -0.0164062   0.0151606


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.0901771   -0.2214987   0.3223262
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0552177   -0.0216046   0.1262631
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0575445    0.0134581   0.0996607
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0661358    0.0505008   0.0815134
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0057582   -0.0362433   0.0238301
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1553874   -0.0070702   0.2916378
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0639043    0.0390531   0.0881129
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0333902   -0.0841870   0.0150267
6-24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.4583333   -0.0972589   0.7326039
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0878382    0.0208348   0.1502566
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0759473    0.0422933   0.1084187
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0021111   -0.0570641   0.0499851
