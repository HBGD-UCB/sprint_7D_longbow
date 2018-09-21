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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country                        impsan    wast_rec90d   n_cell       n
------------  ----------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0       10     121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1       11     121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       34     121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       66     121
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0      23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        1      23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        6      23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1       16      23
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       40     170
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       64     170
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       25     170
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       41     170
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0      92
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0      92
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       19      92
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       73      92
0-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3      32
0-24 months   ki0047075b-MAL-ED       PERU                           0                   1       20      32
0-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3      32
0-24 months   ki0047075b-MAL-ED       PERU                           1                   1        6      32
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0       11      76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       63      76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1      76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1      76
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        8      44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       36      44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0      44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0      44
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0      136     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1      138     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       66     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       81     421
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        5     306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        9     306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0      123     306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1      169     306
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       18     307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       23     307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       96     307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      170     307
0-24 months   ki1114097-CONTENT       PERU                           0                   0        0       9
0-24 months   ki1114097-CONTENT       PERU                           0                   1        0       9
0-24 months   ki1114097-CONTENT       PERU                           1                   0        2       9
0-24 months   ki1114097-CONTENT       PERU                           1                   1        7       9
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                   0      154     264
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                   1       86     264
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                   0       10     264
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                   1       14     264
0-24 months   ki1135781-COHORTS       INDIA                          0                   0     1050    1962
0-24 months   ki1135781-COHORTS       INDIA                          0                   1      282    1962
0-24 months   ki1135781-COHORTS       INDIA                          1                   0      452    1962
0-24 months   ki1135781-COHORTS       INDIA                          1                   1      178    1962
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   0      242     683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   1      361     683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   0       22     683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   1       58     683
0-24 months   ki1148112-LCNI-5        MALAWI                         0                   0       65      77
0-24 months   ki1148112-LCNI-5        MALAWI                         0                   1       12      77
0-24 months   ki1148112-LCNI-5        MALAWI                         1                   0        0      77
0-24 months   ki1148112-LCNI-5        MALAWI                         1                   1        0      77
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     2923   15122
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1     1932   15122
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     5805   15122
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     4462   15122
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      811    4045
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      282    4045
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     2177    4045
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      775    4045
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   0        1      59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   1        7      59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   0       11      59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   1       40      59
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   0        0      14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   1        1      14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   0        1      14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   1       12      14
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   0       11      77
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   1       31      77
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   0       11      77
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   1       24      77
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   0        0      42
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   1        0      42
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   0        8      42
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   1       34      42
0-6 months    ki0047075b-MAL-ED       PERU                           0                   0        0       9
0-6 months    ki0047075b-MAL-ED       PERU                           0                   1        8       9
0-6 months    ki0047075b-MAL-ED       PERU                           1                   0        0       9
0-6 months    ki0047075b-MAL-ED       PERU                           1                   1        1       9
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        3      26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       23      26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        0      26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0      26
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        1      12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       11      12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0      12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0      12
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   0       42     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   1       97     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   0       22     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   1       62     223
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   0        1     183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   1        6     183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   0       38     183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   1      138     183
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   0        4     196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       22     196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       16     196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      154     196
0-6 months    ki1114097-CONTENT       PERU                           0                   0        0       4
0-6 months    ki1114097-CONTENT       PERU                           0                   1        0       4
0-6 months    ki1114097-CONTENT       PERU                           1                   0        0       4
0-6 months    ki1114097-CONTENT       PERU                           1                   1        4       4
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                   0       30     125
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                   1       80     125
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                   0        1     125
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                   1       14     125
0-6 months    ki1135781-COHORTS       INDIA                          0                   0      561    1290
0-6 months    ki1135781-COHORTS       INDIA                          0                   1      282    1290
0-6 months    ki1135781-COHORTS       INDIA                          1                   0      269    1290
0-6 months    ki1135781-COHORTS       INDIA                          1                   1      178    1290
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                   0       58     280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                   1      173     280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                   0        8     280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                   1       41     280
0-6 months    ki1148112-LCNI-5        MALAWI                         0                   0        4       4
0-6 months    ki1148112-LCNI-5        MALAWI                         0                   1        0       4
0-6 months    ki1148112-LCNI-5        MALAWI                         1                   0        0       4
0-6 months    ki1148112-LCNI-5        MALAWI                         1                   1        0       4
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   0     1108    9464
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   1     1932    9464
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   0     1962    9464
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   1     4462    9464
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   0      140    1096
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   1      146    1096
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   0      344    1096
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   1      466    1096
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0        9      62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1        4      62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       23      62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       26      62
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0       9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        0       9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        5       9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1        4       9
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       29      93
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       33      93
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       14      93
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       17      93
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0      50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0      50
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       11      50
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       39      50
6-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3      23
6-24 months   ki0047075b-MAL-ED       PERU                           0                   1       12      23
6-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3      23
6-24 months   ki0047075b-MAL-ED       PERU                           1                   1        5      23
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        8      50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       40      50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1      50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1      50
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        7      32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       25      32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0      32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0      32
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0       94     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1       41     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       44     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       19     198
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        4     123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        3     123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0       85     123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1       31     123
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       14     111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1        1     111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       80     111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       16     111
6-24 months   ki1114097-CONTENT       PERU                           0                   0        0       5
6-24 months   ki1114097-CONTENT       PERU                           0                   1        0       5
6-24 months   ki1114097-CONTENT       PERU                           1                   0        2       5
6-24 months   ki1114097-CONTENT       PERU                           1                   1        3       5
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                   0      124     139
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                   1        6     139
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                   0        9     139
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                   1        0     139
6-24 months   ki1135781-COHORTS       INDIA                          0                   0      489     672
6-24 months   ki1135781-COHORTS       INDIA                          0                   1        0     672
6-24 months   ki1135781-COHORTS       INDIA                          1                   0      183     672
6-24 months   ki1135781-COHORTS       INDIA                          1                   1        0     672
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   0      184     403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   1      188     403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   0       14     403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   1       17     403
6-24 months   ki1148112-LCNI-5        MALAWI                         0                   0       61      73
6-24 months   ki1148112-LCNI-5        MALAWI                         0                   1       12      73
6-24 months   ki1148112-LCNI-5        MALAWI                         1                   0        0      73
6-24 months   ki1148112-LCNI-5        MALAWI                         1                   1        0      73
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     1815    5658
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1        0    5658
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     3843    5658
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1        0    5658
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      671    2949
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      136    2949
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     1833    2949
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      309    2949


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5ceb86b7-a6b8-46ed-93d5-5f6fdff0fea8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ceb86b7-a6b8-46ed-93d5-5f6fdff0fea8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ceb86b7-a6b8-46ed-93d5-5f6fdff0fea8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ceb86b7-a6b8-46ed-93d5-5f6fdff0fea8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5226385   0.3292190   0.7160580
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.6602222   0.5644891   0.7559553
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.6114220   0.5104755   0.7123685
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.6226312   0.4982238   0.7470386
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5036496   0.4414527   0.5658466
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5510204   0.4645738   0.6374670
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.6428571   0.3621822   0.9235321
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.5787671   0.5206376   0.6368967
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.5670474   0.4213853   0.7127094
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.6383104   0.5813725   0.6952483
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.3613918   0.2987102   0.4240734
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.6016691   0.4249658   0.7783724
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2132155   0.1923829   0.2340481
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.2713547   0.2386151   0.3040944
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5975448   0.5571743   0.6379153
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.6648199   0.5576780   0.7719618
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.4014341   0.3840234   0.4188448
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4307350   0.4173736   0.4440963
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2494844   0.2142109   0.2847579
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2607575   0.2380430   0.2834719
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.7993941   0.6719347   0.9268536
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.7914626   0.6615046   0.9214206
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6978441   0.6217005   0.7739878
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.7380916   0.6434316   0.8327516
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.3359027   0.3054813   0.3663240
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.3957034   0.3556230   0.4357839
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7489177   0.6935154   0.8043201
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.8367347   0.7280039   0.9454655
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.6630287   0.6425050   0.6835524
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.6903671   0.6748267   0.7059075
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4884357   0.4153963   0.5614752
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.5763621   0.5288512   0.6238730
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.5309053   0.3876477   0.6741630
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.5510709   0.3589226   0.7432192
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2857110   0.2082788   0.3631432
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2290989   0.1314947   0.3267032
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5055684   0.4518231   0.5593137
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.5263355   0.3712983   0.6813728
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1647654   0.1320702   0.1974606
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1434737   0.1229830   0.1639643


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.6363636   0.5494154   0.7233119
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.6176471   0.5365376   0.6987565
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.5816993   0.5247676   0.6386311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.6286645   0.5746609   0.6826681
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.3787879   0.3179432   0.4396325
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2344546   0.2156201   0.2532892
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6134700   0.5751620   0.6517779
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4228277   0.4116994   0.4339560
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2613103   0.2419607   0.2806599
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.7142857   0.6098683   0.8187031
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.3565891   0.3304405   0.3827378
0-6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7642857   0.7146210   0.8139505
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.6756128   0.6622741   0.6889516
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5376344   0.4216441   0.6536248
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.5086849   0.4571562   0.5602135
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1508986   0.1332882   0.1685090


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.2632482   0.8489739   1.879676
0-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 1.0183330   0.7896897   1.313176
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 1.0940550   0.8959643   1.335942
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.9003044   0.5752332   1.409077
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.1256738   0.8600925   1.473262
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 1.6648666   1.1842361   2.340564
0-24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA         1                    0                 1.2726784   1.0902265   1.485664
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 1.1125859   0.9341236   1.325143
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 1.0729904   1.0178485   1.131120
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 1.0451854   0.8851407   1.234168
0-6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA         1                    0                 0.9900780   0.7858995   1.247303
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 1.0576739   0.8937651   1.251642
0-6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       INDIA         1                    0                 1.1780301   1.0286901   1.349050
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    0                 1.1172585   0.9620873   1.297457
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 1.0412327   1.0026253   1.081327
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 1.1800164   0.9952054   1.399147
6-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 1.0379834   0.6699197   1.608267
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8018555   0.4818848   1.334286
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 1.0410768   0.7612005   1.423857
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8707754   0.6818459   1.112054


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1137251   -0.0651501   0.2926003
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0062251   -0.0553822   0.0678323
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0165404   -0.0209030   0.0539838
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0611578   -0.3347113   0.2123957
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0616171   -0.0719597   0.1951939
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0173961   -0.0042925   0.0390847
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                 0.0212392    0.0078514   0.0346270
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0159252    0.0010257   0.0308247
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0213935    0.0066668   0.0361203
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0118259   -0.0190489   0.0427006
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0851084   -0.1758471   0.0056303
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0151603   -0.0306757   0.0609963
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                 0.0206865    0.0020858   0.0392872
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0153680   -0.0063811   0.0371170
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0125842   -0.0042187   0.0293870
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0699584    0.0068874   0.1330295
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0067291   -0.0728133   0.0862714
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0173193   -0.0288678   0.0635064
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0031165   -0.0118033   0.0180362
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0138668   -0.0419791   0.0142455


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1787109   -0.1555936   0.4163036
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0100787   -0.0948475   0.1049491
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0317968   -0.0429151   0.1011566
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1051364   -0.6911138   0.2777975
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0980127   -0.1421262   0.2876610
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0459256   -0.0128669   0.1013056
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                 0.0905896    0.0327079   0.1450078
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0259592    0.0013982   0.0499161
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0505964    0.0152527   0.0846715
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0452560   -0.0803086   0.1562262
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.1191518   -0.2579343   0.0043195
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0212626   -0.0452652   0.0835562
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                 0.0580121    0.0046775   0.1084888
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0201076   -0.0088778   0.0482603
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0186263   -0.0065320   0.0431557
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.1252851    0.0050375   0.2309999
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0125161   -0.1472454   0.1500297
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0571537   -0.1079142   0.1976282
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0061265   -0.0236518   0.0350386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0918947   -0.2957999   0.0799242
