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
![](/tmp/03ba4ef7-397a-4824-a07b-a5ba58602cb3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03ba4ef7-397a-4824-a07b-a5ba58602cb3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03ba4ef7-397a-4824-a07b-a5ba58602cb3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03ba4ef7-397a-4824-a07b-a5ba58602cb3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5238628   0.3308061   0.7169196
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.6601342   0.5644178   0.7558506
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.6078136   0.5091234   0.7065038
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.6240902   0.5040379   0.7441426
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5036815   0.4416364   0.5657267
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5512583   0.4651526   0.6373640
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.6428571   0.3621822   0.9235321
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.5787671   0.5206376   0.6368967
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.5679107   0.4240853   0.7117362
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.6381985   0.5813047   0.6950922
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.3641870   0.3014219   0.4269521
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.6563420   0.4905772   0.8221067
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2122695   0.1914697   0.2330693
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.2704322   0.2377914   0.3030731
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5989505   0.5585364   0.6393647
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7232600   0.6094763   0.8370437
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.4013629   0.3839143   0.4188114
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4307416   0.4173667   0.4441164
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2491428   0.2140610   0.2842245
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2607855   0.2380783   0.2834927
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.8012434   0.6746369   0.9278499
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.7942604   0.6658887   0.9226321
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6978417   0.6216977   0.7739857
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.7380952   0.6434348   0.8327557
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.3366509   0.3062305   0.3670713
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.3959699   0.3559232   0.4360167
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7489177   0.6935154   0.8043201
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.8367347   0.7280039   0.9454655
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.6630263   0.6425109   0.6835416
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.6904074   0.6748652   0.7059497
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4877229   0.4141617   0.5612841
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.5760203   0.5284642   0.6235764
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.5310235   0.3877103   0.6743367
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.5508372   0.3586393   0.7430351
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2848305   0.2075045   0.3621564
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2272420   0.1323906   0.3220934
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5054986   0.4517794   0.5592178
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.5229027   0.3683089   0.6774965
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1644413   0.1318593   0.1970234
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1434535   0.1229823   0.1639247


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
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.2601280   0.8481283   1.872267
0-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 1.0267790   0.8053238   1.309132
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 1.0944581   0.8973372   1.334881
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.9003044   0.5752332   1.409077
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.1237654   0.8619716   1.465070
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 1.8022116   1.3266376   2.448270
0-24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA         1                    0                 1.2740044   1.0912859   1.487316
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 1.2075454   1.0175337   1.433039
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 1.0731973   1.0178859   1.131514
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 1.0467312   0.8869066   1.235357
0-6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA         1                    0                 0.9912848   0.7885907   1.246078
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 1.0576829   0.8937715   1.251654
0-6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       INDIA         1                    0                 1.1762034   1.0274190   1.346534
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    0                 1.1172585   0.9620873   1.297457
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 1.0412973   1.0026955   1.081385
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 1.1810400   0.9948131   1.402128
6-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 1.0373122   0.6692443   1.607808
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.7978151   0.4825820   1.318965
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 1.0344296   0.7555803   1.416189
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8723689   0.6833033   1.113748


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1125008   -0.0660414   0.2910430
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0098334   -0.0496439   0.0693108
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0165085   -0.0207364   0.0537534
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0611578   -0.3347113   0.2123957
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0607538   -0.0709864   0.1924939
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0146009   -0.0069291   0.0361309
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                 0.0221852    0.0088136   0.0355567
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0145194   -0.0002733   0.0293121
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0214648    0.0066890   0.0362406
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0121675   -0.0184847   0.0428197
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0869577   -0.1777043   0.0037889
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0151628   -0.0306737   0.0609992
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                 0.0199382    0.0013678   0.0385087
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0153680   -0.0063811   0.0371170
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0125866   -0.0042142   0.0293874
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0706712    0.0071772   0.1341653
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0066109   -0.0729788   0.0862006
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0181998   -0.0285694   0.0649691
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0031863   -0.0116722   0.0180447
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0135427   -0.0415058   0.0144203


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1767870   -0.1566097   0.4140809
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0159208   -0.0851799   0.1076025
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0317355   -0.0425616   0.1007380
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1051364   -0.6911138   0.2777975
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0966394   -0.1397270   0.2839861
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0385464   -0.0197970   0.0935519
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                 0.0946245    0.0368490   0.1489344
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0236677   -0.0007212   0.0474623
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0507649    0.0153012   0.0849513
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0465635   -0.0780431   0.1567673
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.1217408   -0.2608596   0.0020282
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0212660   -0.0452626   0.0835602
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                 0.0559138    0.0026633   0.1063211
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0201076   -0.0088778   0.0482603
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0186299   -0.0065250   0.0431561
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.1265616    0.0053901   0.2329710
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0122963   -0.1475629   0.1498866
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0600594   -0.1071523   0.2020174
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0062638   -0.0233906   0.0350588
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0897472   -0.2924794   0.0811854
