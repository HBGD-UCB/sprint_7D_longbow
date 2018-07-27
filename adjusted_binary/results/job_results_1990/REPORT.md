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

**Outcome Variable:** stunted

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

agecat      studyid                 country        hfoodsec                    stunted   n_cell       n
----------  ----------------------  -------------  -------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      133     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       24     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure          0       19     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure          1        3     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure            0        4     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure            1        1     188
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      128     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       32     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure          0       21     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure          1        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure            0        4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure            1        2     193
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       90     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       71     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        3     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure          0       10     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure          1       13     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure            0        2     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure            1        4     194
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       10     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        1     105
Birth       ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure          0       46     105
Birth       ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure          1        8     105
Birth       ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure            0       38     105
Birth       ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure            1        2     105
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure          0       65     129
6 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure          1        2     129
6 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure            0       48     129
6 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure            1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure          0       65     129
24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure          1        2     129
24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure            0       48     129
24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure            1        0     129
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                       0      133     170
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                       1       21     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        0     170
Birth       ki0047075b-MAL-ED       INDIA          Moderately Food Insecure          0        2     170
Birth       ki0047075b-MAL-ED       INDIA          Moderately Food Insecure          1        1     170
Birth       ki0047075b-MAL-ED       INDIA          Severely Food Insecure            0        9     170
Birth       ki0047075b-MAL-ED       INDIA          Severely Food Insecure            1        2     170
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0      152     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       38     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure          0        4     212
6 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure          1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure            0       10     212
6 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure            1        3     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0      108     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       82     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        5     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure          0        2     212
24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure          1        2     212
24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure            0        8     212
24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure            1        5     212
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                       0       70      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                       1        6      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        9      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        0      98
Birth       ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure          0        8      98
Birth       ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure          1        3      98
Birth       ki0047075b-MAL-ED       NEPAL          Severely Food Insecure            0        2      98
Birth       ki0047075b-MAL-ED       NEPAL          Severely Food Insecure            1        0      98
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0       91     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1        3     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure          0       12     128
6 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure          1        4     128
6 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure            0        3     128
6 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure            1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0       77     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       17     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       13     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        2     128
24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure          0        8     128
24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure          1        8     128
24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure            0        1     128
24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure            1        2     128
Birth       ki0047075b-MAL-ED       PERU           Food Secure                       0       22     107
Birth       ki0047075b-MAL-ED       PERU           Food Secure                       1        5     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       22     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        3     107
Birth       ki0047075b-MAL-ED       PERU           Moderately Food Insecure          0       26     107
Birth       ki0047075b-MAL-ED       PERU           Moderately Food Insecure          1        2     107
Birth       ki0047075b-MAL-ED       PERU           Severely Food Insecure            0       24     107
Birth       ki0047075b-MAL-ED       PERU           Severely Food Insecure            1        3     107
6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0       19     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        8     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       22     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        6     111
6 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure          0       20     111
6 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure          1        8     111
6 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure            0       21     111
6 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure            1        7     111
24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0       14     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1       12     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       20     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        7     107
24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure          0       16     107
24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure          1       11     107
24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure            0       17     107
24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure            1       10     107
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0       94     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       13     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        0     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure          0       60     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure          1        6     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure            0        5     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure            1        0     195
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      104     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       25     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       15     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        3     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure          0       59     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure          1       16     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure            0        6     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure            1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0       88     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       41     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       12     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        6     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure          0       46     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure          1       29     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure            0        3     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure            1        3     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       60     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       20     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      308     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      109     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure          0       23     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure          1       13     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure            0        2     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure            1        2     537
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       46     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       22     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      136     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      192     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure          0        9     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure          1       21     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure            0        0     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure            1        3     429
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0       21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure          0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure          1        1      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       14      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0        5      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1        4      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure          0        2      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure          1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure            0        1      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure            1        1      27
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      342     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       85     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      158     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       46     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure          0       46     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure          1       14     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure            0       19     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure            1        5     715
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      254     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       80     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       91     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       33     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure          0       24     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure          1       14     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure            0       13     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure            1        5     514
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      314     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1       81     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       56     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       20     545
6 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure          0       42     545
6 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure          1       10     545
6 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure            0       18     545
6 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure            1        4     545
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      206     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      143     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       30     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       39     488
24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure          0       25     488
24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure          1       26     488
24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure            0       13     488
24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure            1        6     488
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     4233   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1764   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     2972   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1363   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure          0     1527   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure          1      746   12605
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     6526   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1889   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4125   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1477   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure          0     1918   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure          1      856   16791
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     2153    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1722    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     1370    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1391    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure          0      677    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure          1      901    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     1455    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      944    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1021    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      684    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure          0      388    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure          1      221    4713
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     1828    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      614    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1277    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      452    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure          0      477    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure          1      145    4793
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      276     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      120     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      214     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1       95     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure          0       82     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure          1       32     819


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3ca0fa23-8acc-41bf-bd20-135021ea2828/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ca0fa23-8acc-41bf-bd20-135021ea2828/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3ca0fa23-8acc-41bf-bd20-135021ea2828/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3ca0fa23-8acc-41bf-bd20-135021ea2828/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.2941471   0.2814357   0.3068585
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.3144175   0.2991416   0.3296935
Birth       kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.3282006   0.3079382   0.3484630
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.3030303   0.2493889   0.3566717
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.3074434   0.2507179   0.3641688
Birth       kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.2807018   0.1944590   0.3669445
6 months    ki0047075b-MAL-ED       PERU         Food Secure                NA                0.2962963   0.1232791   0.4693135
6 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.2142857   0.0616124   0.3669590
6 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.2857143   0.1176265   0.4538021
6 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.2500000   0.0888854   0.4111146
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.1990632   0.1611638   0.2369627
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2254902   0.1681031   0.2828773
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.2333333   0.1262386   0.3404281
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.2083333   0.0457422   0.3709245
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.2244801   0.2142903   0.2346699
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.2636558   0.2510168   0.2762948
6 months    kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.3085797   0.2887924   0.3283670
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.2514333   0.2316127   0.2712538
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.2614228   0.2376757   0.2851698
6 months    kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.2331190   0.1966330   0.2696049
24 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.4615385   0.2690159   0.6540610
24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.2592593   0.0931838   0.4253347
24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.4074074   0.2211997   0.5936151
24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.3703704   0.1873641   0.5533766
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2395210   0.1937054   0.2853365
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2661290   0.1882687   0.3439893
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.3684211   0.2149010   0.5219411
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.2777778   0.0706593   0.4848963
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.4097421   0.3580937   0.4613905
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.5652174   0.4481293   0.6823055
24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.5098039   0.3724646   0.6471433
24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.3157895   0.1065660   0.5250130
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.4443871   0.4261256   0.4626486
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.5038030   0.4826672   0.5249388
24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.5709759   0.5435392   0.5984126
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.3934973   0.3701819   0.4168127
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.4011730   0.3739779   0.4283682
24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.3628900   0.3201459   0.4056341


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.3072590   0.2982359   0.3162822
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.3015873   0.2659035   0.3372711
6 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.2612613   0.1791629   0.3433597
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2514442   0.2432971   0.2595914
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2526601   0.2384064   0.2669139
24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.3738318   0.2817277   0.4659358
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4385246   0.3944543   0.4825949
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4886779   0.4752340   0.5021218
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.3923191   0.3753084   0.4093298


### Parameter: RR


agecat      studyid                 country      intervention_level         baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.0689127   1.0032397   1.138885
Birth       kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.1157705   1.0339887   1.204021
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       1.0145631   0.7861440   1.309351
Birth       kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.9263158   0.6510670   1.317930
6 months    ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.7232143   0.2878706   1.816924
6 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.9642857   0.4209368   2.208994
6 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.8437500   0.3536114   2.013267
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.1327566   0.8243345   1.556574
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.1721569   0.7131575   1.926575
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.0465686   0.4686927   2.336938
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.1745177   1.1056736   1.247648
6 months    kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.3746416   1.2714008   1.486266
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       1.0397304   0.9212718   1.173421
6 months    kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.9271605   0.7793360   1.103024
24 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.5617284   0.2615430   1.206451
24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.8827160   0.4754279   1.638918
24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.8024691   0.4203332   1.532015
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.1110887   0.7833260   1.575995
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.5381579   0.9724689   2.432911
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.1597222   0.5370896   2.504155
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.3794466   1.0824103   1.757996
24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.2442068   0.9241050   1.675189
24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.7707030   0.3926340   1.512816
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.1337030   1.0734850   1.197299
24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.2848616   1.2088434   1.365660
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       1.0195064   0.9340605   1.112769
24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.9222172   0.8097941   1.050248


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0131120    0.0038942   0.0223297
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0014430   -0.0380552   0.0351692
6 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0350350   -0.1837366   0.1136665
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0107270   -0.0140254   0.0354794
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0269641    0.0198662   0.0340621
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0012269   -0.0127304   0.0151842
24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0877067   -0.2536441   0.0782307
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0172884   -0.0110010   0.0455777
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0287825    0.0005997   0.0569652
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0442908    0.0320204   0.0565611
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0011782   -0.0168492   0.0144929


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0426739    0.0122092   0.0721991
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0047847   -0.1337581   0.1095171
6 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.1340996   -0.8728000   0.3132305
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0511319   -0.0743775   0.1619793
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1072370    0.0787378   0.1348546
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0048558   -0.0519446   0.0585893
24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.2346154   -0.7713345   0.1394764
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0673199   -0.0494277   0.1710795
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0656348   -0.0010605   0.1278866
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0906339    0.0650309   0.1155358
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0030031   -0.0437518   0.0361548
