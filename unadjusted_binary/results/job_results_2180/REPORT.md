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
      W: []
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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        predexfd6    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0       92     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       21     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0      106     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0      159     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       17     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0       32     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        4     212
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0      181     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       34     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0       13     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        6     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0      181     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       25     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0       27     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        2     235
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0      135     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1       21     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0      103     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1       11     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      221     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        1     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      208     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       38     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       14      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        5      19
0-6 months    ki1000108-IRC              INDIA                          0                       0       13      14
0-6 months    ki1000108-IRC              INDIA                          0                       1        1      14
0-6 months    ki1000109-EE               PAKISTAN                       0                       0      114     379
0-6 months    ki1000109-EE               PAKISTAN                       0                       1       42     379
0-6 months    ki1000109-EE               PAKISTAN                       1                       0      135     379
0-6 months    ki1000109-EE               PAKISTAN                       1                       1       88     379
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                       0       14     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                       1        8     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                       0      312     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                       1      110     444
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       88     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       0      430     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0      204     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1       15     700
0-6 months    ki1101329-Keneba           GAMBIA                         0                       0     1272    2235
0-6 months    ki1101329-Keneba           GAMBIA                         0                       1      137    2235
0-6 months    ki1101329-Keneba           GAMBIA                         1                       0      751    2235
0-6 months    ki1101329-Keneba           GAMBIA                         1                       1       75    2235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0      124     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       22     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0      377     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1       42     565
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0      145     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1       80     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0       30     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1       17     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     3535   26512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1     2207   26512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    14596   26512
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     6174   26512
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      675    4720
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1      341    4720
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2683    4720
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1021    4720
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       59     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       29     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       59     191
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       44     191
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0      163     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        5     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0       32     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        3     203
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0      117     191
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       61     191
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        8     191
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        5     191
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0      163     223
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       33     223
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0       24     223
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        3     223
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0       82     228
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       44     228
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0       71     228
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1       31     228
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      156     213
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       55     213
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        1     213
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     213
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       67     185
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      116     185
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     185
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        5      13
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        8      13
6-24 months   ki1000108-IRC              INDIA                          0                       0        7      11
6-24 months   ki1000108-IRC              INDIA                          0                       1        4      11
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       23     188
6-24 months   ki1000109-EE               PAKISTAN                       0                       1       66     188
6-24 months   ki1000109-EE               PAKISTAN                       1                       0       24     188
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       75     188
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                       0        8     280
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                       1        2     280
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                       0      174     280
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                       1       96     280
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       37      88
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       51      88
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0      280     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1       85     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       98     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       34     497
6-24 months   ki1101329-Keneba           GAMBIA                         0                       0      836    1830
6-24 months   ki1101329-Keneba           GAMBIA                         0                       1      350    1830
6-24 months   ki1101329-Keneba           GAMBIA                         1                       0      500    1830
6-24 months   ki1101329-Keneba           GAMBIA                         1                       1      144    1830
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       52     454
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       60     454
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      195     454
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      147     454
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       98     179
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1       48     179
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0       22     179
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1       11     179
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1998   13202
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      497   13202
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     8595   13202
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2112   13202
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      498    3737
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      239    3737
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2102    3737
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      898    3737
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       56     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       57     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       58     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       67     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0      151     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       25     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0       29     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        7     212
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0      103     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1      112     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        8     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1       11     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0      154     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       52     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0       23     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        6     235
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0       70     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       86     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0       69     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1       45     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      139     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      106     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        1     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       70     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      176     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        5      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       14      19
0-24 months   ki1000108-IRC              INDIA                          0                       0        7      14
0-24 months   ki1000108-IRC              INDIA                          0                       1        7      14
0-24 months   ki1000109-EE               PAKISTAN                       0                       0       21     379
0-24 months   ki1000109-EE               PAKISTAN                       0                       1      135     379
0-24 months   ki1000109-EE               PAKISTAN                       1                       0       24     379
0-24 months   ki1000109-EE               PAKISTAN                       1                       1      199     379
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                       1       13     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                       0      163     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                       1      259     444
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       39     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1      145     184
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0      284     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1      197     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0      153     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       66     700
0-24 months   ki1101329-Keneba           GAMBIA                         0                       0      786    2235
0-24 months   ki1101329-Keneba           GAMBIA                         0                       1      623    2235
0-24 months   ki1101329-Keneba           GAMBIA                         1                       0      541    2235
0-24 months   ki1101329-Keneba           GAMBIA                         1                       1      285    2235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       48     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       98     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      186     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      233     565
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       91     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1      134     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0       19     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1       28     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2853   26519
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     2894   26519
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11983   26519
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     8789   26519
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      404    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      613    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1756    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1949    4722


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## predexfd6  0  1
##         0  0  0
##         1  5 14
##          ever_stunted
## predexfd6 0 1
##         0 7 7
##         1 0 0
##          ever_stunted
## predexfd6   0   1
##         0  39 145
##         1   0   0
##          ever_stunted
## predexfd6  0  1
##         0  0  0
##         1 14  5
##          ever_stunted
## predexfd6  0  1
##         0 95 88
##         1  0  0
##          ever_stunted
## predexfd6 0 1
##         0 0 0
##         1 5 8
##          ever_stunted
## predexfd6  0  1
##         0 37 51
##         1  0  0
```




# Results Detail

## Results Plots
![](/tmp/b83536cf-c28a-44b9-a120-15fc71994891/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b83536cf-c28a-44b9-a120-15fc71994891/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b83536cf-c28a-44b9-a120-15fc71994891/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b83536cf-c28a-44b9-a120-15fc71994891/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5044248   0.4120452   0.5968044
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5360000   0.4483910   0.6236090
0-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.1420455   0.0903486   0.1937423
0-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.1944444   0.0648552   0.3240337
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.5209302   0.4540115   0.5878490
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5789474   0.3564684   0.8014264
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2524272   0.1929795   0.3118749
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.2068966   0.0591502   0.3546429
0-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.5512821   0.4730895   0.6294746
0-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.3947368   0.3048435   0.4846301
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.8653846   0.8117542   0.9190151
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.8923767   0.8516483   0.9331050
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5909091   0.4229580   0.7588602
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6137441   0.5514348   0.6760534
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4095634   0.3655856   0.4535412
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3013699   0.2405550   0.3621848
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.4421576   0.4162197   0.4680954
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.3450363   0.3126101   0.3774625
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6712329   0.5949658   0.7475000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5560859   0.5084707   0.6037012
0-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.5955556   0.5313094   0.6598017
0-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.5957447   0.4551862   0.7363031
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5035671   0.4892503   0.5178838
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4231177   0.4146378   0.4315975
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6027532   0.5659813   0.6395251
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5260459   0.5070452   0.5450465
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1858407   0.1139706   0.2577108
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1520000   0.0889294   0.2150706
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1581395   0.1092631   0.2070159
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.3157895   0.1063324   0.5252465
0-6 months    ki0047075b-MAL-ED         PERU         0                    NA                0.1346154   0.0809563   0.1882745
0-6 months    ki0047075b-MAL-ED         PERU         1                    NA                0.0964912   0.0421898   0.1507927
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.2692308   0.1995341   0.3389274
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.3946188   0.3303837   0.4588540
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3636364   0.1815491   0.5457236
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2606635   0.2390351   0.2822919
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1060291   0.0784957   0.1335625
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0684932   0.0350156   0.1019707
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0972321   0.0817588   0.1127054
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0907990   0.0712004   0.1103977
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1506849   0.0926051   0.2087648
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1002387   0.0714576   0.1290197
0-6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
0-6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3843608   0.3706498   0.3980719
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2972557   0.2899054   0.3046060
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3356299   0.3029290   0.3683309
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2756479   0.2597651   0.2915308
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.3295455   0.2310788   0.4280121
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4271845   0.3314023   0.5229666
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.3426966   0.2727904   0.4126028
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.3846154   0.1194585   0.6497723
6-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.3492063   0.2657845   0.4326282
6-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.3039216   0.2144650   0.3933782
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.7415730   0.6503810   0.8327651
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.7575758   0.6729330   0.8422185
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2328767   0.1894722   0.2762812
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2575758   0.1829004   0.3322511
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.2951096   0.2691453   0.3210739
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2236025   0.1914137   0.2557912
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5357143   0.4432493   0.6281792
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4298246   0.3772998   0.4823493
6-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.3287671   0.2523538   0.4051804
6-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.3333333   0.1720456   0.4946211
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1991984   0.1827399   0.2156569
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1972541   0.1884577   0.2060506
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3242877   0.2845790   0.3639963
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2993333   0.2798945   0.3187721


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5210084   0.4574079   0.5846089
0-24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                0.1509434   0.1026395   0.1992473
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.5256410   0.4615247   0.5897573
0-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2468085   0.1915661   0.3020510
0-24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.4851852   0.4254609   0.5449095
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.8812665   0.8486571   0.9138759
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6126126   0.5552216   0.6700036
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.4062640   0.3858979   0.4266301
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5858407   0.5451887   0.6264927
0-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.5955882   0.5371566   0.6540199
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4405521   0.4330109   0.4480933
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.5425667   0.5251549   0.5599785
0-6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1680672   0.1204615   0.2156730
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1709402   0.1226026   0.2192778
0-6 months    ki0047075b-MAL-ED         PERU         NA                   NA                0.1185185   0.0798932   0.1571438
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.3430079   0.2951521   0.3908637
0-6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2657658   0.2387383   0.2927933
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0948546   0.0827041   0.1070051
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1132743   0.0871185   0.1394302
0-6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.3161210   0.3094208   0.3228212
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2885593   0.2738711   0.3032475
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.3821990   0.3131049   0.4512930
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.3455497   0.2779313   0.4131681
6-24 months   ki0047075b-MAL-ED         PERU         NA                   NA                0.3289474   0.2678283   0.3900664
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.7500000   0.6879377   0.8120623
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.2699454   0.2496004   0.2902903
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4559471   0.4100826   0.5018116
6-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.3296089   0.2605529   0.3986650
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1976216   0.1895303   0.2057128
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3042547   0.2863424   0.3221671


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0625965   0.8313083   1.3582341
0-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 1.3688889   0.6405946   2.9251838
0-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.1113722   0.7411226   1.6665907
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 0.8196286   0.3864154   1.7385206
0-24 months   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         PERU         1                    0                 0.7160343   0.5475422   0.9363755
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.0311908   0.9548021   1.1136910
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.0386438   0.7501278   1.4381295
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.7358320   0.5854712   0.9248085
0-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.7803470   0.6985129   0.8717683
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8284545   0.7185880   0.9551187
0-24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 1.0003176   0.7717366   1.2966021
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.8402409   0.8127485   0.8686633
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8727384   0.8152015   0.9343363
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.8179048   0.4638356   1.4422527
0-6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA        1                    0                 1.9969040   0.9606380   4.1510179
0-6 months    ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         PERU         1                    0                 0.7167920   0.3596587   1.4285510
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.4657271   1.0795607   1.9900280
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.7168246   0.4502328   1.1412708
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.6459844   0.3714091   1.1235477
0-6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       1                    0                 0.9338382   0.7141797   1.2210566
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.6652202   0.4113683   1.0757220
0-6 months    ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5          MALAWI       1                    0                 1.0172872   0.6688622   1.5472145
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7733765   0.7419166   0.8061705
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8212854   0.7362494   0.9161429
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.2962839   0.8922000   1.8833803
6-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.1223203   0.5468637   2.3033213
6-24 months   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         PERU         1                    0                 0.8703209   0.5957240   1.2714922
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.0215794   0.8651970   1.2062276
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1060606   0.7836013   1.5612149
6-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.7576930   0.6400624   0.8969417
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8023392   0.6494012   0.9912951
6-24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 1.0138889   0.5927411   1.7342659
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9902396   0.9055239   1.0828808
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9230488   0.8068294   1.0560090


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0165836   -0.0503141    0.0834813
0-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0088979   -0.0149425    0.0327383
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0047108   -0.0142626    0.0236842
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0056187   -0.0253652    0.0141278
0-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0660969   -0.1172429   -0.0149508
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0158819   -0.0237645    0.0555282
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0217035   -0.1624328    0.2058399
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0338491   -0.0576217   -0.0100765
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0358936   -0.0513624   -0.0204248
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0853922   -0.1521987   -0.0185856
0-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0000327   -0.0266718    0.0267372
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0630150   -0.0755716   -0.0504585
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0601865   -0.0917080   -0.0286649
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0177735   -0.0680402    0.0324933
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0128006   -0.0055178    0.0311190
0-6 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0160969   -0.0484082    0.0162145
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0737771    0.0176620    0.1298923
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0978706   -0.2614168    0.0656756
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0117434   -0.0253656    0.0018788
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0023775   -0.0116069    0.0068519
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0374106   -0.0855151    0.0106939
0-6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0010621   -0.0250685    0.0271927
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0682398   -0.0799987   -0.0564810
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0470706   -0.0748287   -0.0193125
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0526535   -0.0217469    0.1270539
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0028531   -0.0158712    0.0215774
6-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0202590   -0.0750585    0.0345406
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0084270   -0.0571022    0.0739561
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0065599   -0.0164004    0.0295202
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0251643   -0.0398016   -0.0105269
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0797671   -0.1599852    0.0004509
6-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0008418   -0.0320621    0.0337457
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0015768   -0.0159981    0.0128445
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0200329   -0.0545724    0.0145066


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0318299   -0.1055484    0.1521371
0-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0589489   -0.1121334    0.2037131
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0089620   -0.0278197    0.0444275
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0227653   -0.1059274    0.0541433
0-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.1362302   -0.2483506   -0.0341799
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0180216   -0.0280829    0.0620587
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0354278   -0.3153416    0.2926556
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0900927   -0.1554316   -0.0284487
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0883504   -0.1272304   -0.0508114
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1457600   -0.2667696   -0.0363101
0-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0000549   -0.0458028    0.0439017
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1430365   -0.1721304   -0.1146647
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1109292   -0.1704978   -0.0543921
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1057522   -0.4481070    0.1556646
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0748837   -0.0372716    0.1749123
0-6 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.1358173   -0.4407617    0.1045841
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.2150888    0.0338059    0.3623583
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.3682589   -1.1090142    0.1123188
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1245511   -0.2762358    0.0091053
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0250646   -0.1270869    0.0677228
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.3302654   -0.8243093    0.0299858
0-6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0029782   -0.0730552    0.0736242
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.2158662   -0.2537837   -0.1790955
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1631228   -0.2628770   -0.0712481
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.1377646   -0.0807586    0.3121037
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0082567   -0.0474390    0.0609910
6-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0615873   -0.2419793    0.0926036
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0112360   -0.0801395    0.0948814
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0273973   -0.0733410    0.1186807
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0932198   -0.1487188   -0.0404022
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1749482   -0.3657296   -0.0108175
6-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                 0.0025540   -0.1024396    0.0975482
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0079790   -0.0836643    0.0624203
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0658425   -0.1854842    0.0417247
