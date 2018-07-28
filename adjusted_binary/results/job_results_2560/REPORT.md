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
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          ever_stunted
## predexfd6   0   1
##         0  39 145
##         1   0   0
##          ever_stunted
## predexfd6  0  1
##         0  0  0
##         1 14  5
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
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
![](/tmp/ad10b89c-48c4-4cfc-bf17-753c6868065e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad10b89c-48c4-4cfc-bf17-753c6868065e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad10b89c-48c4-4cfc-bf17-753c6868065e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad10b89c-48c4-4cfc-bf17-753c6868065e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4341131   0.3626112   0.5056150
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4952857   0.4239689   0.5666026
0-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                0.1393893   0.0901248   0.1886538
0-24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                0.2077800   0.1033109   0.3122491
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.5267404   0.4605421   0.5929387
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5116977   0.3426580   0.6807374
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2535778   0.1960356   0.3111200
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.2066527   0.1032257   0.3100797
0-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.5702418   0.5109722   0.6295114
0-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.4523584   0.3908068   0.5139101
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.8496862   0.7966622   0.9027101
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.8864591   0.8458641   0.9270540
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5719420   0.4622093   0.6816747
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6149058   0.5538349   0.6759768
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4203763   0.3812622   0.4594904
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3501331   0.3056249   0.3946413
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.4431218   0.4189999   0.4672437
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.3772899   0.3495032   0.4050765
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6332601   0.5608073   0.7057129
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5508100   0.5035300   0.5980900
0-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.6036486   0.5421303   0.6651668
0-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.6971865   0.6190678   0.7753053
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4523002   0.4422225   0.4623779
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4367988   0.4289798   0.4446178
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6126872   0.5839667   0.6414077
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5293277   0.5111735   0.5474818
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1653948   0.1181963   0.2125933
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1739340   0.1252802   0.2225878
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1717205   0.1232258   0.2202153
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.1637701   0.1111392   0.2164010
0-6 months    ki0047075b-MAL-ED         PERU         0                    NA                0.1210154   0.0807021   0.1613287
0-6 months    ki0047075b-MAL-ED         PERU         1                    NA                0.1128876   0.0756903   0.1500849
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.2675907   0.2045610   0.3306203
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.3937760   0.3329066   0.4546454
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3050953   0.2256621   0.3845286
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2641883   0.2380933   0.2902834
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0969158   0.0748930   0.1189387
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0646469   0.0451301   0.0841637
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0967679   0.0830359   0.1105000
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0863799   0.0709835   0.1017763
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1104270   0.0598532   0.1610008
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0970629   0.0686920   0.1254338
0-6 months    ki1148112-LCNI-5          MALAWI       0                    NA                0.3424953   0.2827153   0.4022753
0-6 months    ki1148112-LCNI-5          MALAWI       1                    NA                0.1382550   0.0656923   0.2108178
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3241132   0.3163331   0.3318932
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.3131643   0.3063889   0.3199396
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3172990   0.2946840   0.3399139
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2782175   0.2632871   0.2931479
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.1608521   0.0828830   0.2388212
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.2504807   0.1686972   0.3322641
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.3437897   0.2746168   0.4129625
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.3695556   0.1520622   0.5870489
6-24 months   ki0047075b-MAL-ED         PERU         0                    NA                0.3243423   0.2481023   0.4005822
6-24 months   ki0047075b-MAL-ED         PERU         1                    NA                0.2755004   0.1965354   0.3544654
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.7400564   0.6532875   0.8268252
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.7586930   0.6793055   0.8380804
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2360536   0.1937440   0.2783631
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2497158   0.1802455   0.3191860
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.3020560   0.2773220   0.3267899
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.2584833   0.2298944   0.2870722
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5332270   0.4408521   0.6256020
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4305484   0.3780923   0.4830044
6-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                0.3388468   0.2651406   0.4125530
6-24 months   ki1148112-LCNI-5          MALAWI       1                    NA                0.4899813   0.3814719   0.5984907
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1985648   0.1845554   0.2125742
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1986554   0.1900221   0.2072888
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3668657   0.3325634   0.4011680
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3015345   0.2823647   0.3207043


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
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4559471   0.4100826   0.5018117
6-24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.3296089   0.2605529   0.3986650
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1976216   0.1895303   0.2057128
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3042547   0.2863424   0.3221671


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1409141   0.9634299   1.3510946
0-24 months   ki0047075b-MAL-ED         BRAZIL       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BRAZIL       1                    0                 1.4906451   0.8617383   2.5785353
0-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 0.9714419   0.6933016   1.3611671
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 0.8149478   0.4946859   1.3425487
0-24 months   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         PERU         1                    0                 0.7932748   0.6987533   0.9005824
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.0432782   0.9657705   1.1270063
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.0751191   0.8670756   1.3330800
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8329039   0.7280940   0.9528013
0-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8514360   0.7818486   0.9272169
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8698005   0.7539776   1.0034156
0-24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 1.1549544   0.9999256   1.3340188
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9657276   0.9464311   0.9854176
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8639444   0.8205052   0.9096834
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0516292   0.9667898   1.1439135
0-6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA        1                    0                 0.9537014   0.8179525   1.1119796
0-6 months    ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         PERU         1                    0                 0.9328361   0.8311902   1.0469121
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.4715609   1.1287966   1.9184072
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.8659206   0.6828431   1.0980832
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.6670418   0.5354741   0.8309362
0-6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       1                    0                 0.8926504   0.7408177   1.0756016
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8789777   0.5120155   1.5089424
0-6 months    ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5          MALAWI       1                    0                 0.4036699   0.2353160   0.6924703
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9662189   0.9509904   0.9816914
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8768308   0.8178653   0.9400476
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.5572107   0.8499254   2.8530799
6-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.0749467   0.5886020   1.9631439
6-24 months   ki0047075b-MAL-ED         PERU         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         PERU         1                    0                 0.8494126   0.5934274   1.2158215
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.0251827   0.8822254   1.1913050
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0578776   0.7696999   1.4539497
6-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8557465   0.7494949   0.9770606
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8074391   0.6535304   0.9975938
6-24 months   ki1148112-LCNI-5          MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5          MALAWI       1                    0                 1.4460260   1.0726761   1.9493222
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0004565   0.9271090   1.0796068
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8219206   0.7375166   0.9159840


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0868953    0.0444793    0.1293113
0-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0115541   -0.0070481    0.0301563
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0010994   -0.0151807    0.0129819
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0067693   -0.0212581    0.0077195
0-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.0850566   -0.1172042   -0.0529090
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0315803   -0.0075675    0.0707281
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0406706   -0.0772594    0.1586006
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0446620   -0.0628264   -0.0264977
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0368578   -0.0501852   -0.0235305
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0474194   -0.1109041    0.0160652
0-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0080603   -0.0315129    0.0153923
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0117482   -0.0188904   -0.0046059
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0701205   -0.0932626   -0.0469784
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0026724   -0.0055116    0.0108565
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.0007804   -0.0029252    0.0013645
0-6 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0024969   -0.0080480    0.0030542
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0754172    0.0264434    0.1243911
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0393296   -0.1092023    0.0305432
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0026301   -0.0083976    0.0031373
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0019133   -0.0085554    0.0047288
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0028473   -0.0387980    0.0444926
0-6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0141224   -0.0081431    0.0363878
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0079922   -0.0119320   -0.0040524
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0287396   -0.0450522   -0.0124270
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.2213468    0.1551209    0.2875727
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0017601   -0.0134016    0.0169217
6-24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.0046051   -0.0435571    0.0527673
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0099436   -0.0496526    0.0695399
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0033831   -0.0175072    0.0242733
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0321106   -0.0455044   -0.0187168
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0772799   -0.1572983    0.0027385
6-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0092379   -0.0392565    0.0207808
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0009432   -0.0130684    0.0111820
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0626109   -0.0923796   -0.0328423


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.1667830    0.0814990    0.2441482
0-24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0765458   -0.0541433    0.1910325
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.0020915   -0.0292322    0.0243335
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0274273   -0.0879802    0.0297555
0-24 months   ki0047075b-MAL-ED         PERU         0                    NA                -0.1753075   -0.2530414   -0.1023959
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0358352   -0.0097641    0.0793752
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0663888   -0.1445948    0.2384817
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.1188723   -0.1704375   -0.0695790
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0907239   -0.1244401   -0.0580187
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0809425   -0.1956062    0.0227244
0-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0135334   -0.0537991    0.0251938
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0266669   -0.0430412   -0.0105496
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1292384   -0.1729898   -0.0871189
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0159009   -0.0335950    0.0630266
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.0045651   -0.0171915    0.0079044
0-6 months    ki0047075b-MAL-ED         PERU         0                    NA                -0.0210677   -0.0677918    0.0236118
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.2198703    0.0648678    0.3491804
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1479859   -0.4404783    0.0851154
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0278953   -0.0917512    0.0322257
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.0201713   -0.0927599    0.0475955
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0251364   -0.4220494    0.3316976
0-6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.0396008   -0.0247868    0.0999430
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0252820   -0.0378315   -0.0128842
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0995970   -0.1575163   -0.0445759
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.5791403    0.3702387    0.7187460
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0050936   -0.0397683    0.0480199
6-24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.0139995   -0.1437452    0.1499882
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0132582   -0.0695190    0.0896287
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0141292   -0.0770384    0.0975798
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.1189522   -0.1702122   -0.0699376
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1694931   -0.3597333   -0.0058694
6-24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0280267   -0.1238286    0.0596084
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0047729   -0.0680580    0.0547624
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.2057846   -0.3088866   -0.1108040
