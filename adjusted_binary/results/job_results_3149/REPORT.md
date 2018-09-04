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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid                    country                        exclfeed6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      146     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       29     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       46     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       10     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      148     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       15     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       10     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        2     175
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      157     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       28     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        2     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        3     190
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      141     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       18     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       11     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     170
Birth       ki0047075b-MAL-ED          PERU                           0                  0      219     256
Birth       ki0047075b-MAL-ED          PERU                           0                  1       27     256
Birth       ki0047075b-MAL-ED          PERU                           1                  0        8     256
Birth       ki0047075b-MAL-ED          PERU                           1                  1        2     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      189     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       22     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      102     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       ki1000108-IRC              INDIA                          0                  0       13      14
Birth       ki1000108-IRC              INDIA                          0                  1        1      14
Birth       ki1000108-IRC              INDIA                          1                  0        0      14
Birth       ki1000108-IRC              INDIA                          1                  1        0      14
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       4
Birth       ki1000109-EE               PAKISTAN                       0                  1        2       4
Birth       ki1000109-EE               PAKISTAN                       1                  0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       4
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       42      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        6      50
Birth       ki1101329-Keneba           GAMBIA                         0                  0      864    1401
Birth       ki1101329-Keneba           GAMBIA                         0                  1       53    1401
Birth       ki1101329-Keneba           GAMBIA                         1                  0      459    1401
Birth       ki1101329-Keneba           GAMBIA                         1                  1       25    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4988   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     3040   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    21092   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     9044   38164
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      186    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      114    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      874    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      360    1534
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      145     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       33     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       47     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       10     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      187     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      183     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       43     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        4     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        2     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      208     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       12     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                  0      203     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1       55     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0        8     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1        3     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      194     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       48     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      186     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       57     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        7      19
6 months    ki1000108-IRC              INDIA                          0                  0       11      14
6 months    ki1000108-IRC              INDIA                          0                  1        3      14
6 months    ki1000108-IRC              INDIA                          1                  0        0      14
6 months    ki1000108-IRC              INDIA                          1                  1        0      14
6 months    ki1000109-EE               PAKISTAN                       0                  0      174     744
6 months    ki1000109-EE               PAKISTAN                       0                  1      134     744
6 months    ki1000109-EE               PAKISTAN                       1                  0      184     744
6 months    ki1000109-EE               PAKISTAN                       1                  1      252     744
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       13     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        6     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      260     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1      119     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      371     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       76     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      118     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       18     583
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1124    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1      198    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  0      502    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1       84    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      208    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       76    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      654    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1      154    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4728   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     2238   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20268   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     6130   33364
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1288    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      592    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     5062    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1576    8518
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       86     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       70     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       26     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       27     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      129     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       90     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        1     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      165     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       47     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       13     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2     227
24 months   ki0047075b-MAL-ED          PERU                           0                  0      124     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       66     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0        3     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1        5     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      148     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       79     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       60     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      151     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       12      19
24 months   ki1000108-IRC              INDIA                          0                  0        5      14
24 months   ki1000108-IRC              INDIA                          0                  1        9      14
24 months   ki1000108-IRC              INDIA                          1                  0        0      14
24 months   ki1000108-IRC              INDIA                          1                  1        0      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      294     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      139     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       93     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       51     577
24 months   ki1101329-Keneba           GAMBIA                         0                  0      640    1513
24 months   ki1101329-Keneba           GAMBIA                         0                  1      358    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  0      367    1513
24 months   ki1101329-Keneba           GAMBIA                         1                  1      148    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      122     960
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      118     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      404     960
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      316     960
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1868   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1886   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6832   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     6498   17084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1004    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      792    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     4012    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     2540    8348


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f9c54d88-06e5-46f8-a358-1889ea73fd1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f9c54d88-06e5-46f8-a358-1889ea73fd1a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f9c54d88-06e5-46f8-a358-1889ea73fd1a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f9c54d88-06e5-46f8-a358-1889ea73fd1a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1936246   0.1382319   0.2490173
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4065988   0.3115691   0.5016284
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0602136   0.0451641   0.0752632
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0477162   0.0287072   0.0667252
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3166358   0.3090268   0.3242447
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3166224   0.3090129   0.3242319
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3090917   0.2723210   0.3458625
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3089723   0.2722150   0.3457296
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1895965   0.1332794   0.2459136
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1754118   0.0899265   0.2608971
6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4587465   0.3940999   0.5233931
6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5944228   0.5362162   0.6526293
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1706969   0.1362051   0.2051886
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1313688   0.0767513   0.1859864
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1519641   0.1332988   0.1706294
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1616933   0.1357968   0.1875899
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2677796   0.1995946   0.3359646
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1902474   0.1522789   0.2282159
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3547803   0.2924021   0.4171585
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3532494   0.2225022   0.4839967
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2751152   0.2622958   0.2879347
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2421482   0.2334981   0.2507984
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2667224   0.2399178   0.2935269
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2400933   0.2243489   0.2558377
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4555554   0.3833231   0.5277877
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4636088   0.3730202   0.5541974
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3250422   0.2825747   0.3675097
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3406147   0.2704989   0.4107305
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3564922   0.3282031   0.3847814
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2995778   0.2653397   0.3338159
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4557649   0.3770326   0.5344972
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4381410   0.3878286   0.4884535
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4831711   0.4046791   0.5616632
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5031152   0.3367523   0.6694781
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4761221   0.4560440   0.4962003
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4917958   0.4777990   0.5057926
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4001278   0.3676404   0.4326153
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3887639   0.3694841   0.4080437


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1688312   0.1204189   0.2172434
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.0556745   0.0436637   0.0676854
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3166335   0.3090239   0.3242430
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3089961   0.2722361   0.3457561
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2106227   0.1763897   0.2448557
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2508093   0.2426385   0.2589801
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2545198   0.2394884   0.2695513
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4641148   0.3963405   0.5318891
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.3344349   0.3106543   0.3582155
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4520833   0.4075129   0.4966538
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4907516   0.4775997   0.5039035
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3991375   0.3806098   0.4176653


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    0                 2.0999335   1.4343723   3.0743210
Birth       ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA       1                    0                 0.7924485   0.4986964   1.2592324
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9999578   0.9999234   0.9999921
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9996138   0.9987856   1.0004426
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.9251846   0.5258325   1.6278312
6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN     1                    0                 1.2957543   1.1081952   1.5150573
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9942832   0.4810773   2.0549693
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.7696030   0.4867845   1.2167372
6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.0640233   0.8760796   1.2922863
6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7104627   0.5141699   0.9816935
6 months    ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       1                    0                 0.9956851   0.6623055   1.4968753
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8801702   0.8367442   0.9258499
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9001618   0.8054923   1.0059578
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0176781   0.8094711   1.2794389
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0479092   0.8324116   1.3191956
24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8403488   0.7350549   0.9607256
24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9613313   0.7827841   1.1806039
24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       1                    0                 1.0412775   0.7221495   1.5014326
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0329193   0.9883866   1.0794586
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9715993   0.8913870   1.0590296


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0247934   -0.0540979    0.0045111
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.0045391   -0.0127830    0.0037048
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0000023   -0.0000106    0.0000060
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0000956   -0.0003007    0.0001095
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0066178   -0.0332632    0.0200276
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0600707    0.0143516    0.1057897
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0017191   -0.2199177    0.2164795
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0094619   -0.0247127    0.0057889
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0041653   -0.0138945    0.0055639
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0571569   -0.1140735   -0.0002403
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0018374   -0.0237976    0.0274723
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0243060   -0.0347405   -0.0138714
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0122025   -0.0341038    0.0096988
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0085594   -0.0243881    0.0415069
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0042472   -0.0153647    0.0238591
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0220573   -0.0373056   -0.0068091
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0036815   -0.0714629    0.0640999
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0036014   -0.0292973    0.0365001
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0146295   -0.0016272    0.0308861
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0009903   -0.0274791    0.0254985


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1468533   -0.3423708    0.0201869
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.0815296   -0.2399628    0.0566602
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0000072   -0.0000334    0.0000189
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0003094   -0.0009726    0.0003532
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0361669   -0.1928634    0.0999457
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.1157839    0.0236531    0.1992210
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0054737   -1.0068383    0.4962338
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0586838   -0.1574678    0.0316695
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0281825   -0.0962374    0.0356476
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2713711   -0.5735889   -0.0271961
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0051522   -0.0693916    0.0744997
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0969102   -0.1396533   -0.0557703
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0479433   -0.1376149    0.0346600
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0184424   -0.0549331    0.0867143
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0128981   -0.0484563    0.0706622
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0659540   -0.1127732   -0.0211047
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0081435   -0.1698588    0.1312172
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0073985   -0.0625438    0.0727368
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0298103   -0.0038317    0.0623248
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0024812   -0.0710910    0.0617338
