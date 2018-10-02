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

**Outcome Variable:** pers_wast

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

agecat        studyid                 country        hfoodsec                pers_wast   n_cell       n
------------  ----------------------  -------------  ---------------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      152     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1        9     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       27     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        2     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     0      173     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     1       17     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   0       16     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   1        1     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     0       93     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     1        1     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     0       27     112
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     1        0     112
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       29     112
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0     112
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   0       55     112
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   1        1     112
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      131     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        0     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        1     232
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     0       74     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     1        4     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            0      379     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            1       38     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   0       34     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   1        5     534
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     0      425     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     1       13     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            0      197     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            1       10     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   0       82     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   1        3     730
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      716    1148
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     1      112    1148
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0      150    1148
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1       12    1148
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0      120    1148
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1       38    1148
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     0    15022   31300
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     1      768   31300
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            0     9740   31300
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            1      606   31300
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   0     4752   31300
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   1      412   31300
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     0     4827   10229
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     1      399   10229
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            0     3341   10229
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            1      326   10229
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   0     1235   10229
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   1      101   10229
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      156     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1        5     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       28     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        1     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                     0      175     211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                     1       14     211
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3     211
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2     211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                   0       15     211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                   1        2     211
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                     0       91     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                     1        2     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0     127
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                     0       27     112
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                     1        0     112
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       29     112
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0     112
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                   0       56     112
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                   1        0     112
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      129     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        1     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        0     230
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      648    1048
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                     1      104    1048
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0      146    1048
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1        8    1048
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0      130    1048
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1       12    1048
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      147     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1       14     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       26     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        3     194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0     129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     0      167     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     1       23     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   0       15     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   1        2     212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     0       94     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     1        0     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0     128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     0       27     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     1        0     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       28     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   0       55     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   1        1     111
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      130     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        0     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        1     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     0       72     492
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     1        4     492
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            0      332     492
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            1       45     492
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   0       33     492
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   1        6     492
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     0      402     697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     1       22     697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            0      179     697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            1       15     697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   0       74     697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   1        5     697
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      666    1120
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     1      142    1120
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0      136    1120
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1       24    1120
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0      114    1120
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1       38    1120
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     0     4501    9783
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     1      507    9783
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            0     3085    9783
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            1      400    9783
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   0     1149    9783
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   1      141    9783


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2951f42f-cf9a-486f-a32f-412772e51562/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2951f42f-cf9a-486f-a32f-412772e51562/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2951f42f-cf9a-486f-a32f-412772e51562/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2951f42f-cf9a-486f-a32f-412772e51562/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1324957   0.1000714   0.1649199
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.0649608   0.0094800   0.1204416
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2122580   0.1256980   0.2988181
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0481696   0.0428530   0.0534862
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0572369   0.0505279   0.0639458
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0765386   0.0657005   0.0873767
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0762968   0.0647610   0.0878326
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0889638   0.0739944   0.1039332
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0751926   0.0531947   0.0971906
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1382979   0.1033714   0.1732244
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.0519481   0.0023325   0.1015636
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.0845070   0.0197469   0.1492672
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0518868   0.0307599   0.0730137
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0773196   0.0397073   0.1149318
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0632911   0.0095607   0.1170215
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1715617   0.1353151   0.2078084
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1102219   0.0472851   0.1731588
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2155943   0.1313070   0.2998816
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1011126   0.0863323   0.1158929
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1150846   0.0975670   0.1326021
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1087344   0.0811442   0.1363247


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1411150   0.1126097   0.1696202
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0570607   0.0529791   0.0611424
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0807508   0.0720315   0.0894701
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1183206   0.0906395   0.1460017
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1821429   0.1501475   0.2141382
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1071246   0.0962953   0.1179539


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.4902865   0.2015798   1.192485
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.6020000   0.9947852   2.579857
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1882368   1.0148230   1.391284
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.5889404   1.3321788   1.895190
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1660222   0.9328993   1.457400
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9855278   0.7169909   1.354641
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.3756244   0.1398632   1.008798
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.6110509   0.2726833   1.369293
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.4901593   0.7901861   2.810192
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2197929   0.4757539   3.127446
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.6424623   0.3494741   1.181082
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.2566571   0.8052556   1.961100
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1381823   0.9305358   1.392165
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0753798   0.8015267   1.442799


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0086193   -0.0094106    0.0266493
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0088911    0.0049106    0.0128716
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0044540   -0.0035539    0.0124619
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0199773   -0.0353220   -0.0046325
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0083715   -0.0063203    0.0230632
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0105811   -0.0094334    0.0305957
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0060120   -0.0038248    0.0158488


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0610802   -0.0752842    0.1801512
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1558185    0.0837103    0.2222522
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0551570   -0.0492657    0.1491876
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.1688401   -0.3013163   -0.0498502
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1389263   -0.1388657    0.3489594
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0580925   -0.0580003    0.1614466
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0561217   -0.0406417    0.1438876
