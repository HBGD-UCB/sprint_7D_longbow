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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        exclfeed36    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      173     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       10     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       61     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        3     247
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      197     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        2     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       18     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      213     241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       21     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        7     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      219     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       15     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      265     282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1        1     282
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       16     282
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0     282
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      271     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      252     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        1     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        9       9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        0       9
0-24 months   ki1000108-IRC              INDIA                          0                     0        3       4
0-24 months   ki1000108-IRC              INDIA                          0                     1        1       4
0-24 months   ki1000108-IRC              INDIA                          1                     0        0       4
0-24 months   ki1000108-IRC              INDIA                          1                     1        0       4
0-24 months   ki1000109-EE               PAKISTAN                       0                     0      134     372
0-24 months   ki1000109-EE               PAKISTAN                       0                     1       13     372
0-24 months   ki1000109-EE               PAKISTAN                       1                     0      210     372
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       15     372
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     166
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0      455     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       13     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      168     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1        2     638
0-24 months   ki1101329-Keneba           GAMBIA                         0                     0     1255    1927
0-24 months   ki1101329-Keneba           GAMBIA                         0                     1       79    1927
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      574    1927
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1       19    1927
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       88     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      366     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       59     528
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2293   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      238   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     9800   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      482   12813
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      884    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      102    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3234    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      250    4470
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      177     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        6     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       63     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        1     247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      198     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       18     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      214     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       19     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0        7     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      217     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1        5     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       15     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      266     282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        0     282
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       16     282
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        0     282
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      269     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      252     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        1     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        8       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        1       9
0-6 months    ki1000108-IRC              INDIA                          0                     0        4       4
0-6 months    ki1000108-IRC              INDIA                          0                     1        0       4
0-6 months    ki1000108-IRC              INDIA                          1                     0        0       4
0-6 months    ki1000108-IRC              INDIA                          1                     1        0       4
0-6 months    ki1000109-EE               PAKISTAN                       0                     0      132     366
0-6 months    ki1000109-EE               PAKISTAN                       0                     1       15     366
0-6 months    ki1000109-EE               PAKISTAN                       1                     0      207     366
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       12     366
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0      454     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       13     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      168     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1        1     636
0-6 months    ki1101329-Keneba           GAMBIA                         0                     0     1216    1786
0-6 months    ki1101329-Keneba           GAMBIA                         0                     1       35    1786
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      525    1786
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       10    1786
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       85     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       16     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      364     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       44     509
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      160     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       11     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       56     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        6     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      178     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        2     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       17     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     197
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      198     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       27     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        6     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      215     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        2     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       14     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0      232     250
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1        2     250
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0       16     250
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0     250
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      253     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      237     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        1     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     238
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        9       9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        0       9
6-24 months   ki1000108-IRC              INDIA                          0                     0        3       4
6-24 months   ki1000108-IRC              INDIA                          0                     1        1       4
6-24 months   ki1000108-IRC              INDIA                          1                     0        0       4
6-24 months   ki1000108-IRC              INDIA                          1                     1        0       4
6-24 months   ki1000109-EE               PAKISTAN                       0                     0      129     364
6-24 months   ki1000109-EE               PAKISTAN                       0                     1       17     364
6-24 months   ki1000109-EE               PAKISTAN                       1                     0      192     364
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       26     364
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      130     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       23     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     153
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0      414     599
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       31     599
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      148     599
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1        6     599
6-24 months   ki1101329-Keneba           GAMBIA                         0                     0     1132    1791
6-24 months   ki1101329-Keneba           GAMBIA                         0                     1      127    1791
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0      500    1791
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       32    1791
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       80     519
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       21     519
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      344     519
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       74     519
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      171     216
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     216
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      819    4272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      115    4272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2996    4272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      342    4272


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b7af74e6-b714-42be-a567-d227f73197f5/a0d16796-ad5f-46e2-b17b-f3142830cb41/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b7af74e6-b714-42be-a567-d227f73197f5/a0d16796-ad5f-46e2-b17b-f3142830cb41/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b7af74e6-b714-42be-a567-d227f73197f5/a0d16796-ad5f-46e2-b17b-f3142830cb41/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b7af74e6-b714-42be-a567-d227f73197f5/a0d16796-ad5f-46e2-b17b-f3142830cb41/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0884354   0.0424753   0.1343954
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0666667   0.0340294   0.0993040
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0592204   0.0465508   0.0718900
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0320405   0.0178626   0.0462184
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1456311   0.0774457   0.2138164
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1388235   0.1059200   0.1717271
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0940340   0.0823021   0.1057659
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0468780   0.0422443   0.0515118
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1034483   0.0839379   0.1229587
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0717566   0.0613752   0.0821380
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1020408   0.0530405   0.1510411
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0547945   0.0246123   0.0849768
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0279776   0.0188368   0.0371184
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0186916   0.0072122   0.0301710
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1584158   0.0871367   0.2296950
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1078431   0.0777157   0.1379706
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0643275   0.0274769   0.1011781
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0967742   0.0230238   0.1705246
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1164384   0.0643386   0.1685381
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1192661   0.0761838   0.1623483
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0696629   0.0459900   0.0933358
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0389610   0.0083741   0.0695480
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1008737   0.0842336   0.1175138
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0601504   0.0399406   0.0803602
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2079208   0.1286999   0.2871416
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1770335   0.1404068   0.2136602
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1231263   0.1005074   0.1457452
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1024566   0.0897776   0.1151355


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0752688   0.0484230   0.1021146
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0508563   0.0410442   0.0606683
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1401515   0.1105133   0.1697898
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0561929   0.0517926   0.0605933
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0787472   0.0695071   0.0879873
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0251960   0.0179257   0.0324663
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1178782   0.0898370   0.1459194
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0729614   0.0394957   0.1064270
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.1181319   0.0849287   0.1513351
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0617696   0.0424748   0.0810644
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0887772   0.0756012   0.1019533
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1830443   0.1497431   0.2163456
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1069757   0.0954392   0.1185121


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.7538462   0.3691541   1.5394220
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.5410378   0.3309561   0.8844738
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9532549   0.5640272   1.6110834
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.4985223   0.4254920   0.5840875
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6936471   0.5482857   0.8775468
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.5369863   0.2585829   1.1151328
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.6680908   0.3332121   1.3395231
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6807598   0.4008504   1.1561267
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.5043988   0.5798463   3.9031305
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.0242849   0.5763364   1.8203946
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.5592795   0.2377437   1.3156759
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.5962939   0.4101139   0.8669943
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8514468   0.5519045   1.3135637
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8321255   0.6745071   1.0265759


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0131666   -0.0472782    0.0209451
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0083641   -0.0142421   -0.0024862
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0054796   -0.0664202    0.0554610
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0378410   -0.0479211   -0.0277610
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0247011   -0.0417967   -0.0076054
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0282703   -0.0627878    0.0062472
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0027816   -0.0071817    0.0016184
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0405376   -0.1025918    0.0215165
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0086339   -0.0133816    0.0306493
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0016935   -0.0387956    0.0421826
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0078933   -0.0178952    0.0021085
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0120965   -0.0199203   -0.0042727
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0248765   -0.0951777    0.0454247
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0161507   -0.0354529    0.0031515


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1749271   -0.7228204    0.1987245
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1644662   -0.2817022   -0.0579537
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0390973   -0.5789517    0.3161771
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.6734130   -0.8603511   -0.5052594
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3136755   -0.5529887   -0.1112402
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.3832200   -0.9170506    0.0019578
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.1104006   -0.2962906    0.0488326
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.3438944   -0.9822754    0.0888995
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1183351   -0.2355235    0.3708472
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0143358   -0.3955274    0.3038231
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.1277862   -0.2970176    0.0193644
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1362567   -0.2259218   -0.0531497
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1359041   -0.5923325    0.1896930
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1509753   -0.3469269    0.0164692
