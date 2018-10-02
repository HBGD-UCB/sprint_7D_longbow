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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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
0-24 months   ki1000109-EE               PAKISTAN                       0                     0      268     744
0-24 months   ki1000109-EE               PAKISTAN                       0                     1       26     744
0-24 months   ki1000109-EE               PAKISTAN                       1                     0      420     744
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       30     744
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      176    1056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       30    1056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      732    1056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1      118    1056
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     4586   25626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      476   25626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    19600   25626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      964   25626
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1768    8940
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      204    8940
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     6468    8940
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      500    8940
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
0-6 months    ki1000109-EE               PAKISTAN                       0                     0      264     732
0-6 months    ki1000109-EE               PAKISTAN                       0                     1       30     732
0-6 months    ki1000109-EE               PAKISTAN                       1                     0      414     732
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       24     732
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0      454     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       13     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      168     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1        1     636
0-6 months    ki1101329-Keneba           GAMBIA                         0                     0     1216    1786
0-6 months    ki1101329-Keneba           GAMBIA                         0                     1       35    1786
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      525    1786
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       10    1786
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0      170    1018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       32    1018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      728    1018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       88    1018
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
6-24 months   ki1000109-EE               PAKISTAN                       0                     0      258     728
6-24 months   ki1000109-EE               PAKISTAN                       0                     1       34     728
6-24 months   ki1000109-EE               PAKISTAN                       1                     0      384     728
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       52     728
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      160    1038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       42    1038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      688    1038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1      148    1038
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      171     216
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     216
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1638    8544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      230    8544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     5992    8544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      684    8544


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
![](/tmp/05f18d56-5103-42af-a014-64e758c47f87/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05f18d56-5103-42af-a014-64e758c47f87/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/05f18d56-5103-42af-a014-64e758c47f87/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05f18d56-5103-42af-a014-64e758c47f87/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0879863   0.0421128   0.1338598
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0668945   0.0342567   0.0995323
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0591090   0.0464471   0.0717708
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0321819   0.0180046   0.0463592
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1355249   0.0688704   0.2021794
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1384519   0.1056011   0.1713028
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0823013   0.0728860   0.0917166
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0483399   0.0438014   0.0528783
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0837784   0.0676901   0.0998667
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0731938   0.0629698   0.0834179
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1104696   0.0615640   0.1593752
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0566297   0.0264704   0.0867890
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0268887   0.0179576   0.0358198
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0191641   0.0076052   0.0307230
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1265818   0.0579271   0.1952366
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1063717   0.0763014   0.1364420
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0643275   0.0274769   0.1011781
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0967742   0.0230238   0.1705246
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1073111   0.0587618   0.1558604
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1189619   0.0767813   0.1611426
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0696629   0.0459900   0.0933358
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0389610   0.0083741   0.0695480
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0992686   0.0829324   0.1156047
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0501751   0.0320748   0.0682754
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1960858   0.1232248   0.2689469
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1778855   0.1414837   0.2142873
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1120439   0.0916598   0.1324280
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1040461   0.0915975   0.1164946


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
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.7602835   0.3724533   1.5519557
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.5444501   0.3336402   0.8884598
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0215977   0.5918278   1.7634554
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5873523   0.5090146   0.6777462
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8736602   0.6944704   1.0990852
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.5126270   0.2564261   1.0248039
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.7127200   0.3581967   1.4181307
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8403393   0.4560983   1.5482848
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.5043988   0.5798463   3.9031305
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.1085709   0.6278455   1.9573757
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.5592795   0.2377437   1.3156759
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.5054483   0.3410104   0.7491793
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9071819   0.5950972   1.3829321
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9286189   0.7593376   1.1356387


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0127175   -0.0467584    0.0213235
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0082527   -0.0141268   -0.0023786
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0046266   -0.0549332    0.0641864
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0261084   -0.0340214   -0.0181954
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0050312   -0.0189541    0.0088917
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0366991   -0.0712386   -0.0021597
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0016927   -0.0059856    0.0026002
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0087037   -0.0683322    0.0509249
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0086339   -0.0133816    0.0306493
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0108208   -0.0268085    0.0484501
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0078933   -0.0178952    0.0021085
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0104913   -0.0180122   -0.0029705
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0130415   -0.0775759    0.0514928
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0050682   -0.0221114    0.0119750


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1689607   -0.7161523    0.2037600
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1622750   -0.2794733   -0.0558120
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0330117   -0.5008030    0.3769559
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4646200   -0.6137632   -0.3292606
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0638902   -0.2571233    0.0996409
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.4974771   -1.0307201   -0.1042574
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0671809   -0.2501130    0.0889823
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0738360   -0.7173260    0.3285353
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1183351   -0.2355235    0.3708472
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0915993   -0.2890444    0.3598421
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.1277862   -0.2970176    0.0193644
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1181761   -0.2046268   -0.0379295
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0712479   -0.4889342    0.2292661
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0473774   -0.2196686    0.1005759
