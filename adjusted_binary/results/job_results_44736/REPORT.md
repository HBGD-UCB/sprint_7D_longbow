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

**Outcome Variable:** ever_swasted

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

agecat        studyid                 country        hfoodsec                ever_swasted   n_cell      n
------------  ----------------------  -------------  ---------------------  -------------  -------  -----
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0      146    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       15    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        4    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        0    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       26    194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1        3    194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0       11    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0      113    129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        2    129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0      171    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1       19    212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        3    212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        2    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      0       16    212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      1        1    212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        0       92    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        1        2    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0       14    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        1    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      0       18    128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        1    128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        0       26    113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        1        1    113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0       29    113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1        0    113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      0       55    113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      1        2    113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0      125    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1        7    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       18    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        1    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       78    233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        4    233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       83    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       11    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      409    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1       79    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       34    624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1        8    624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      409    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       44    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      202    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       17    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       81    758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1        5    758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      316    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      107    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       60    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       22    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       59    584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       20    584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4070   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1      264   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2647   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      189   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1302   8599
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      127   8599
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0      689   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1       51   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0      453   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1       32   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      183   1419
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1       11   1419
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0      151    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       10    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        4    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        0    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       26    194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1        3    194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0       11    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0      114    129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        1    129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                        0      174    212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                        1       16    212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        3    212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        2    212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                      0       16    212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                      1        1    212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                        0       93    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                        1        1    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0       14    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        1    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                      0       18    128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        1    128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                        0       26    113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                        1        1    113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0       29    113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1        0    113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                      0       57    113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                      1        0    113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0      129    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1        3    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       19    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        0    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       81    233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        1    233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       87    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1        7    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      442    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1       44    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       37    622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1        5    622
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      417    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       36    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      208    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       11    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       83    758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1        3    758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      380    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        1       43    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       78    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1        4    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       72    584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1        7    584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4162   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1      150   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2724   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1       94   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1356   8553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1       67   8553
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0      669   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1       18   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0      437   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1        9   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      180   1318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1        5   1318
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0      156    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1        5    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        4    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        0    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       29    194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1        0    194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0       11    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0      114    129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        1    129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0      186    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1        4    212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        5    212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        0    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      0       17    212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      1        0    212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        0       93    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        1        1    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0       15    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        0    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      0       19    128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        0    128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        0       27    111
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        1        0    111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0       28    111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1        0    111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      0       54    111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      1        2    111
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0      126    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1        4    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       18    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        1    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       79    231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        3    231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       77    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1        4    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      382    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1       38    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       35    541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1        5    541
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      428    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       10    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      199    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1        8    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       83    730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1        2    730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      341    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1       73    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       62    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       19    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       63    573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       15    573
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4187   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1      117   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2718   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1       98   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1341   8526
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1       65   8526
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0      703   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1       35   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0      461   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1       23   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      188   1416
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1        6   1416


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/83019713-2ded-4744-a88f-c6a954d29dad/2dab6a40-adcb-4932-9584-1315ea4d841f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/83019713-2ded-4744-a88f-c6a954d29dad/2dab6a40-adcb-4932-9584-1315ea4d841f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/83019713-2ded-4744-a88f-c6a954d29dad/2dab6a40-adcb-4932-9584-1315ea4d841f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/83019713-2ded-4744-a88f-c6a954d29dad/2dab6a40-adcb-4932-9584-1315ea4d841f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1170213    0.0519874   0.1820552
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.1618852    0.1291782   0.1945923
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.1904762    0.0716241   0.3093283
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0971302    0.0698420   0.1244185
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0776256    0.0421631   0.1130880
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0581395    0.0086499   0.1076292
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2529551    0.2114936   0.2944166
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2682927    0.1723114   0.3642739
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2531646    0.1571978   0.3491313
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0609137    0.0530277   0.0687997
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0666432    0.0563983   0.0768880
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0888733    0.0733062   0.1044404
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0689189    0.0500955   0.0877423
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0659794    0.0417587   0.0902001
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0567010    0.0173291   0.0960729
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.0744681    0.0213534   0.1275827
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.0905350    0.0650032   0.1160667
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.1190476    0.0210288   0.2170664
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0347866    0.0288166   0.0407566
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0333570    0.0258661   0.0408479
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0470836    0.0368116   0.0573556
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0262009    0.0140751   0.0383267
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0201794    0.0037215   0.0366372
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0270270   -0.0063360   0.0603900
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1763285    0.1395863   0.2130707
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2345679    0.1422103   0.3269255
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1923077    0.1047687   0.2798467
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0271840    0.0219738   0.0323943
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0348011    0.0267618   0.0428405
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0462304    0.0339131   0.0585478
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0474255    0.0320491   0.0628019
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0475207    0.0248980   0.0701433
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0309278    0.0062730   0.0555827


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2551370   0.2197504   0.2905236
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0674497   0.0614870   0.0734124
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0662438   0.0525571   0.0799306
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0363615   0.0319423   0.0407807
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0242792   0.0149005   0.0336579
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1867365   0.1548005   0.2186725
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0328407   0.0285663   0.0371151
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0451977   0.0339025   0.0564930


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.3833830   0.7658275   2.498929
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.6277056   0.7058100   3.753738
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.7991905   0.4674468   1.366370
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.5985729   0.2442425   1.466942
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0606337   0.7155934   1.572043
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.0008281   0.6622183   1.512578
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0940585   0.8955090   1.336630
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4590040   1.1825030   1.800158
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9573479   0.6035856   1.518451
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8227208   0.3905594   1.733077
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2157554   0.5646124   2.617834
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.5986395   0.5378468   4.751628
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9589023   0.7326752   1.254981
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.3534973   1.0274028   1.783093
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.7701794   0.2952447   2.009101
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0315315   0.2717353   3.915786
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.3302892   0.8520779   2.076887
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.0906217   0.6610798   1.799262
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.2802059   0.9499635   1.725253
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.7006480   1.2323354   2.346929
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0020071   0.5532775   1.814674
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.6521355   0.2780853   1.529318


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0400300   -0.0213823   0.1014423
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0100590   -0.0261209   0.0060029
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0021819   -0.0197496   0.0241134
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0065360    0.0008618   0.0122102
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0026751   -0.0159891   0.0106389
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0155641   -0.0341879   0.0653160
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0015749   -0.0024376   0.0055873
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0019217   -0.0115748   0.0077314
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0104080   -0.0100646   0.0308805
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0056567    0.0015289   0.0097846
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0022277   -0.0136989   0.0092435


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.2548849   -0.2559687   0.5579536
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.1155261   -0.3143298   0.0532068
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0085519   -0.0812414   0.0908881
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0969018    0.0090289   0.1769827
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0403824   -0.2625878   0.1427166
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1728723   -0.6105727   0.5752193
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0433114   -0.0737962   0.1476474
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0791485   -0.5698340   0.2581627
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0557362   -0.0602515   0.1590352
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1722467    0.0402590   0.2860830
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0492886   -0.3381690   0.1772291
