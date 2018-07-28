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

**Outcome Variable:** stunted

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
![](/tmp/fe52f92c-f809-44a8-898b-ef2a2fedea22/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe52f92c-f809-44a8-898b-ef2a2fedea22/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe52f92c-f809-44a8-898b-ef2a2fedea22/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe52f92c-f809-44a8-898b-ef2a2fedea22/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.2972106   0.2845538   0.3098674
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.3099165   0.2951932   0.3246398
Birth       kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.3479812   0.3270629   0.3688995
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.3001546   0.2462476   0.3540616
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.3056781   0.2469352   0.3644209
Birth       kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.2324769   0.1550984   0.3098553
6 months    ki0047075b-MAL-ED       PERU         Food Secure                NA                0.2519312   0.1081904   0.3956719
6 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.2178645   0.0788201   0.3569090
6 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.3068743   0.1434286   0.4703201
6 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.2100259   0.0806619   0.3393899
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2026229   0.1659002   0.2393457
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2412874   0.1886306   0.2939442
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.3450789   0.2656943   0.4244634
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.4354307   0.3603348   0.5105265
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.2351543   0.2245508   0.2457578
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.2600387   0.2477186   0.2723588
6 months    kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.3154566   0.2960993   0.3348140
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.2521451   0.2320865   0.2722037
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.2588789   0.2358911   0.2818667
6 months    kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.2317836   0.1978565   0.2657106
24 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.4083078   0.2577527   0.5588629
24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.2320582   0.0973316   0.3667848
24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.3802402   0.2274408   0.5330396
24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.2952896   0.1562512   0.4343279
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2403038   0.1961197   0.2844879
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2508748   0.1868670   0.3148827
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.3754021   0.2863577   0.4644465
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.2440395   0.1581315   0.3299476
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.4150699   0.3660170   0.4641228
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.5994583   0.5244633   0.6744533
24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.4707849   0.3896259   0.5519438
24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.1138674   0.0543505   0.1733843
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                NA                0.4682306   0.4499079   0.4865532
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       NA                0.4983901   0.4777499   0.5190303
24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   NA                0.5863895   0.5608339   0.6119451
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                NA                0.3929478   0.3695297   0.4163659
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       NA                0.3973024   0.3701739   0.4244309
24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   NA                0.3608521   0.3218036   0.3999006


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


agecat      studyid                 country      intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.0427504   0.9802597   1.1092249
Birth       kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.1708236   1.0875603   1.2604616
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       1.0184019   0.7847635   1.3215987
Birth       kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.7745237   0.5314378   1.1288000
6 months    ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.8647780   0.3698093   2.0222341
6 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       1.2180881   0.5615308   2.6423105
6 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.8336639   0.3601216   1.9298913
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.1908198   0.8972517   1.5804393
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.7030591   1.2715648   2.2809772
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       2.1489702   1.6744344   2.7579897
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.1058216   1.0408864   1.1748079
6 months    kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.3414879   1.2443231   1.4462399
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       1.0267062   0.9108903   1.1572477
6 months    kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.9192468   0.7786771   1.0851927
24 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.5683413   0.2890811   1.1173745
24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.9312587   0.5427638   1.5978272
24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.7232033   0.4010031   1.3042868
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0439903   0.7654859   1.4238221
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.5621980   1.1608527   2.1023015
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.0155459   0.6848100   1.5060141
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.4442347   1.2177468   1.7128469
24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.1342304   0.9217407   1.3957056
24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.2743330   0.1607250   0.4682446
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure       Food Secure       1.0644118   1.0096089   1.1221894
24 months   kiGH5241-JiVitA-3       BANGLADESH   Moderately Food Insecure   Food Secure       1.2523520   1.1840813   1.3245590
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure       Food Secure       1.0110819   0.9255424   1.1045270
24 months   kiGH5241-JiVitA-4       BANGLADESH   Moderately Food Insecure   Food Secure       0.9183207   0.8130859   1.0371757


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0100484    0.0006659   0.0194310
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0014327   -0.0365251   0.0393904
6 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.0093301   -0.1140343   0.1326945
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0071673   -0.0168813   0.0312159
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0162899    0.0087215   0.0238583
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0005150   -0.0136537   0.0146838
24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0344760   -0.1624297   0.0934777
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0165055   -0.0104149   0.0434259
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0234547   -0.0034790   0.0503885
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0204473    0.0077619   0.0331327
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0006287   -0.0165042   0.0152468


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0327034    0.0017186   0.0627265
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0047504   -0.1294606   0.1230135
6 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.0357118   -0.5725561   0.4087004
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0341640   -0.0871994   0.1419796
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0647854    0.0343180   0.0942916
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0020385   -0.0556450   0.0565699
24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0922233   -0.4981068   0.2036937
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0642716   -0.0460799   0.1629820
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0534855   -0.0095883   0.1126188
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0418421    0.0155230   0.0674575
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0016025   -0.0428960   0.0380560
