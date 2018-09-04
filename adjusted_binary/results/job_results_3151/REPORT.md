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

**Intervention Variable:** predexfd6

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

agecat      studyid                    country                        predexfd6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       91     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      134     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       14     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       24     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        3     175
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      149     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       26     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       10     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        5     190
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      131     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       16     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       21     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        2     170
Birth       ki0047075b-MAL-ED          PERU                           0                  0      132     256
Birth       ki0047075b-MAL-ED          PERU                           0                  1       18     256
Birth       ki0047075b-MAL-ED          PERU                           1                  0       95     256
Birth       ki0047075b-MAL-ED          PERU                           1                  1       11     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      188     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     211
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4950   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     3022   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    21130   38164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     9062   38164
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      182    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      114    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      878    1534
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      360    1534
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       88     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       24     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      104     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       19     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      169     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      174     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       40     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       13     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        5     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      197     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        9     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        3     235
6 months    ki0047075b-MAL-ED          PERU                           0                  0      114     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1       42     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0       97     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1       16     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      192     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       47     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      185     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       57     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4686   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     2232   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20310   33364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     6136   33364
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1270    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      584    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     5080    8518
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1584    8518
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       59     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       53     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      134     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      123     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       84     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        7     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       10     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      156     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       43     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       22     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        6     227
24 months   ki0047075b-MAL-ED          PERU                           0                  0       70     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       44     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0       57     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1       27     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      145     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       79     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       59     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      151     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1848   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1882   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6852   17084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     6502   17084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      992    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      778    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     4024    8348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     2554    8348


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/a2c733e1-e548-4348-ac94-d741af875a12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2c733e1-e548-4348-ac94-d741af875a12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2c733e1-e548-4348-ac94-d741af875a12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2c733e1-e548-4348-ac94-d741af875a12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1998768   0.1286192   0.2711345
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1561550   0.0926366   0.2196734
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                0.1485714   0.0957370   0.2014058
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                0.3333333   0.0941438   0.5725228
Birth       ki0047075b-MAL-ED         PERU         0                    NA                0.1158110   0.0653656   0.1662564
Birth       ki0047075b-MAL-ED         PERU         1                    NA                0.1151427   0.0520344   0.1782511
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0602159   0.0451888   0.0752430
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0477448   0.0288474   0.0666423
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3166329   0.3090240   0.3242418
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3166222   0.3090127   0.3242317
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3089058   0.2721476   0.3456640
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3089609   0.2722043   0.3457174
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2382412   0.1674035   0.3090789
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1675634   0.1067862   0.2283406
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1869159   0.1345715   0.2392603
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.2777778   0.0704135   0.4851421
6 months    ki0047075b-MAL-ED         PERU         0                    NA                0.2532603   0.1851612   0.3213594
6 months    ki0047075b-MAL-ED         PERU         1                    NA                0.1285444   0.0668694   0.1902194
6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4519707   0.3866482   0.5172932
6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5879768   0.5298832   0.6460705
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1709084   0.1362609   0.2055559
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1302430   0.0740737   0.1864124
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1523893   0.1338795   0.1708990
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1632215   0.1382162   0.1882268
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2697094   0.2041516   0.3352672
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1902979   0.1525994   0.2279964
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3549988   0.2926049   0.4173927
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3542241   0.2279951   0.4804531
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2773939   0.2645856   0.2902021
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2419059   0.2332766   0.2505352
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2874342   0.2597950   0.3150735
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2420520   0.2263620   0.2577421
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5127955   0.4347977   0.5907932
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5171303   0.4401868   0.5940739
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.4057971   0.3387537   0.4728406
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5882353   0.3537610   0.8227096
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2160804   0.1587713   0.2733895
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.2142857   0.0619658   0.3666056
24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.4186343   0.3374613   0.4998073
24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.4513455   0.3633499   0.5393410
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3252144   0.2829353   0.3674935
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3396929   0.2710336   0.4083522
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3565389   0.3279505   0.3851273
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2998016   0.2640379   0.3355653
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4542421   0.3742204   0.5342638
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4377013   0.3872661   0.4881364
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4818809   0.4043416   0.5594202
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5086106   0.3519186   0.6653026
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4762361   0.4560624   0.4964097
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4916047   0.4776799   0.5055294
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3924695   0.3597202   0.4252188
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3887989   0.3695409   0.4080569


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1688312   0.1204189   0.2172434
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                0.1631579   0.1104782   0.2158376
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                0.1132813   0.0743812   0.1521813
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                0.0556745   0.0436637   0.0676854
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3166335   0.3090239   0.3242430
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3089961   0.2722361   0.3457561
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1939655   0.1429760   0.2449551
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                0.2156134   0.1663773   0.2648495
6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3140704   0.2712850   0.3568557
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.1477987   0.1318701   0.1637274
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2106227   0.1763897   0.2448557
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2508093   0.2426385   0.2589801
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2545198   0.2394884   0.2695513
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4641148   0.3963405   0.5318891
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.4196429   0.3548715   0.4844143
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2158590   0.1622206   0.2694975
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.3585859   0.2916158   0.4255559
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
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.7812561   0.4561446   1.3380869
Birth       ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA        1                    0                 2.2435897   1.0072492   4.9974675
Birth       ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         PERU         1                    0                 0.9942297   0.4946331   1.9984362
Birth       ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA       1                    0                 0.7928943   0.5004599   1.2562073
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9999662   0.9999319   1.0000005
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0001782   0.9994356   1.0009214
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.7033352   0.4421234   1.1188740
6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA        1                    0                 1.4861111   0.6695514   3.2985161
6 months    ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         PERU         1                    0                 0.5075584   0.2932418   0.8785091
6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN     1                    0                 1.3009179   1.1123096   1.5215076
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9942832   0.4810773   2.0549693
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.7620633   0.4742690   1.2244959
6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.0710829   0.8883156   1.2914538
6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7055665   0.5158250   0.9651026
6 months    ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       1                    0                 0.9978177   0.6709400   1.4839481
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8720665   0.8291437   0.9172113
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8421127   0.7564662   0.9374560
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0084535   0.8440456   1.2048856
24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.4495798   0.9415618   2.2316981
24 months   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 0.9916944   0.4643883   2.1177486
24 months   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         PERU         1                    0                 1.0781377   0.8245626   1.4096939
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0445198   0.8342773   1.3077445
24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8408664   0.7322375   0.9656107
24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9635859   0.7820907   1.1871998
24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       1                    0                 1.0554695   0.7510502   1.4832775
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0322710   0.9877431   1.0788061
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9906473   0.9068782   1.0821542


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0310457   -0.0800307    0.0179393
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                 0.0145865   -0.0060153    0.0351882
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0025297   -0.0348113    0.0297518
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.0045414   -0.0127508    0.0036681
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0000006   -0.0000077    0.0000089
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0000903   -0.0000918    0.0002723
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0552625   -0.1037204   -0.0068045
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0070496   -0.0098371    0.0239364
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0376469   -0.0767187    0.0014249
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0668465    0.0215978    0.1120952
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0017191   -0.2199177    0.2164795
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0096734   -0.0251396    0.0057928
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0045905   -0.0141883    0.0050073
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0590867   -0.1138137   -0.0043597
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0016189   -0.0243640    0.0276017
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0265846   -0.0370715   -0.0160977
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0329144   -0.0556184   -0.0102104
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0486806   -0.0980095    0.0006483
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0138458   -0.0057185    0.0334100
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0002214   -0.0202957    0.0198530
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0600485   -0.1118523   -0.0082446
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0040750   -0.0151246    0.0232746
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0221040   -0.0374692   -0.0067388
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0021587   -0.0710207    0.0667032
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0048916   -0.0267746    0.0365577
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0145155   -0.0017950    0.0308260
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0066680   -0.0200356    0.0333716


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1838858   -0.5140429    0.0742762
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                 0.0894009   -0.0435793    0.2054358
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0223316   -0.3511580    0.2264695
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.0815700   -0.2393042    0.0560883
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0000018   -0.0000244    0.0000280
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0002922   -0.0002977    0.0008817
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.3020158   -0.6065282   -0.0552228
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0363448   -0.0544615    0.1193312
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.1746038   -0.3673359   -0.0090381
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.1288440    0.0372116    0.2117553
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0054737   -1.0068383    0.4962338
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0599958   -0.1601948    0.0315495
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0310592   -0.0982155    0.0319904
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2805334   -0.5715451   -0.0434099
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0045395   -0.0710470    0.0747916
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1059954   -0.1490197   -0.0645821
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1293196   -0.2222218   -0.0434790
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1048892   -0.2200004   -0.0006391
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0329941   -0.0148853    0.0786148
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0010255   -0.0984795    0.0877826
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.1674591   -0.3279142   -0.0263922
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0123751   -0.0476494    0.0689606
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0660936   -0.1131871   -0.0209924
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0047751   -0.1692783    0.1365845
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0100490   -0.0571740    0.0729975
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0295781   -0.0041818    0.0622030
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0167060   -0.0525442    0.0814000
