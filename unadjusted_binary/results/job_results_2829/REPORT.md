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

unadjusted

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
![](/tmp/53f6d9ad-eb85-4df0-a6a0-fcb286d6af8e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53f6d9ad-eb85-4df0-a6a0-fcb286d6af8e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53f6d9ad-eb85-4df0-a6a0-fcb286d6af8e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53f6d9ad-eb85-4df0-a6a0-fcb286d6af8e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1657143   0.1105055   0.2209231
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1785714   0.0780434   0.2790994
Birth       ki1101329-Keneba          GAMBIA       0                    NA                0.0577972   0.0426879   0.0729065
Birth       ki1101329-Keneba          GAMBIA       1                    NA                0.0516529   0.0319281   0.0713776
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3786746   0.3625201   0.3948292
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3001062   0.2916639   0.3085484
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3800000   0.2907817   0.4692183
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2917342   0.2520927   0.3313757
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1853933   0.1281815   0.2426050
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1754386   0.0764897   0.2743874
6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4350649   0.3566591   0.5134708
6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5779817   0.5123328   0.6436305
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3157895   0.1014523   0.5301266
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3139842   0.2679102   0.3600581
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1700224   0.1351683   0.2048764
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1323529   0.0753510   0.1893549
6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.1497731   0.1305319   0.1690142
6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.1433447   0.1149651   0.1717244
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2676056   0.1947233   0.3404879
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1905941   0.1522592   0.2289289
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3212748   0.3043665   0.3381830
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2322146   0.2231817   0.2412474
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3148936   0.2808809   0.3489063
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2374209   0.2210009   0.2538409
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4487179   0.3704830   0.5269529
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5094340   0.3745239   0.6443440
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3210162   0.2770039   0.3650285
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3541667   0.2759845   0.4323488
24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3587174   0.3289510   0.3884839
24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2873786   0.2482815   0.3264758
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4916667   0.4021261   0.5812073
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4388889   0.3875731   0.4902047
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5023974   0.4774312   0.5273637
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4874719   0.4729906   0.5019531
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4409800   0.4018535   0.4801064
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3876679   0.3679563   0.4073794


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
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0775863   0.5602190   2.0727469
Birth       ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba          GAMBIA       1                    0                 0.8936925   0.5626071   1.4196164
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7925173   0.7536421   0.8333977
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.7677216   0.5867509   1.0045087
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.9463052   0.4975280   1.7998854
6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN     1                    0                 1.3284951   1.0736062   1.6438983
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9942832   0.4810773   2.0549693
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.7784443   0.4831451   1.2542308
6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba          GAMBIA       1                    0                 0.9570793   0.7558748   1.2118420
6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7122199   0.5076630   0.9992007
6 months    ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5          MALAWI       1                    0                 1.0172872   0.6688622   1.5472145
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7227912   0.6784233   0.7700607
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.7539718   0.6644513   0.8555533
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1353100   0.8268275   1.5588847
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1032674   0.8507945   1.4306615
24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8011282   0.6831156   0.9395282
24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8926554   0.7189426   1.1083411
24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5          MALAWI       1                    0                 1.0333333   0.7106383   1.5025615
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9702913   0.9187251   1.0247518
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8791055   0.7984298   0.9679328


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0031169   -0.0246960    0.0309297
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.0021226   -0.0107077    0.0064624
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0620412   -0.0762548   -0.0478275
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0710039   -0.1489667    0.0069589
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0024145   -0.0301433    0.0253142
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0837523    0.0233987    0.1441058
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0017191   -0.2199177    0.2164795
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0087874   -0.0244270    0.0068522
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0019743   -0.0125058    0.0085571
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0569829   -0.1179813    0.0040154
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0010621   -0.0250685    0.0271927
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0704655   -0.0852478   -0.0556832
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0603738   -0.0895456   -0.0312020
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0153969   -0.0243137    0.0551074
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0082733   -0.0141483    0.0306948
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0242825   -0.0410951   -0.0074699
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0395833   -0.1170125    0.0378459
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0029015   -0.0305815    0.0363845
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0116459   -0.0329197    0.0096280
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0418424   -0.0744912   -0.0091937


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0184616   -0.1608471    0.1700735
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.0381260   -0.2041448    0.1050033
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1959400   -0.2419156   -0.1516664
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.2297890   -0.5085567   -0.0025351
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0131957   -0.1766295    0.1275371
6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.1614292    0.0356493    0.2708037
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0054737   -1.0068383    0.4962338
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0545005   -0.1557574    0.0378853
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0133582   -0.0871685    0.0554409
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2705450   -0.5944671   -0.0124289
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0029782   -0.0730552    0.0736242
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.2809526   -0.3419840   -0.2226968
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.2372066   -0.3568361   -0.1281245
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0331747   -0.0563885    0.1151445
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0251246   -0.0453975    0.0908893
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0726077   -0.1240977   -0.0234762
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0875576   -0.2732548    0.0710567
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0059607   -0.0652660    0.0724250
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0237307   -0.0680186    0.0187208
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1048321   -0.1893628   -0.0263093
