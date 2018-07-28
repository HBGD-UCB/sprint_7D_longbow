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

**Intervention Variable:** impfloor

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
* impsan
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
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        impfloor    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0       17     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0      186     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       37     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0      187     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1       21     210
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       14     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1        1     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0      182     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1       38     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0      117     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1        9     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0       86     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1       17     229
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0      190     272
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       23     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0       48     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1       11     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       20     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      211     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       25     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      198     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       36     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       11     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        3     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      195     257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       62     257
0-6 months    ki1000108-IRC              INDIA                          1                      0      270     306
0-6 months    ki1000108-IRC              INDIA                          1                      1       36     306
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                      0       60     626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                      1       14     626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                      0      469     626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                      1       83     626
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       55     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1        7     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      579     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       59     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      152     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       26     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      501     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       79     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0      342     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       47     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       79     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1        6     474
0-6 months    ki1114097-CONTENT          PERU                           0                      0       13     215
0-6 months    ki1114097-CONTENT          PERU                           0                      1        1     215
0-6 months    ki1114097-CONTENT          PERU                           1                      0      184     215
0-6 months    ki1114097-CONTENT          PERU                           1                      1       17     215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    16722   27100
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     8262   27100
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1651   27100
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      465   27100
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     3164    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1334    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      487    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      132    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0        9     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0      113     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       65     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0      193     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        8     203
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0        9     194
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1        2     194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0      119     194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       64     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       98     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       22     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0       85     218
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       13     218
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0      125     229
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       60     229
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0       29     229
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1       15     229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        6     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      151     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       52     221
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       67     185
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      107     185
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        4     185
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        7     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       68     196
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1      128     196
6-24 months   ki1000108-IRC              INDIA                          1                      0      199     261
6-24 months   ki1000108-IRC              INDIA                          1                      1       62     261
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                      0       17     418
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                      1       20     418
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                      0      214     418
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                      1      167     418
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       21     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1        9     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      357     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      110     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      121     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       32     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      382     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       85     620
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0      173     383
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1      136     383
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0       45     383
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1       29     383
6-24 months   ki1114097-CONTENT          PERU                           0                      0       11     200
6-24 months   ki1114097-CONTENT          PERU                           0                      1        1     200
6-24 months   ki1114097-CONTENT          PERU                           1                      0      170     200
6-24 months   ki1114097-CONTENT          PERU                           1                      1       18     200
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     9513   13275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2440   13275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1151   13275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      171   13275
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     2590    4305
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1144    4305
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      444    4305
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      127    4305
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0        9     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       10     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0      108     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1      115     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0      176     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1       32     210
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0        8     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1        7     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0      104     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1      116     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       95     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       31     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0       78     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       25     229
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0      111     272
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1      102     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0       28     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1       31     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       11     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       10     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      134     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1      102     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       66     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      168     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        6     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       51     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1      210     261
0-24 months   ki1000108-IRC              INDIA                          1                      0      169     306
0-24 months   ki1000108-IRC              INDIA                          1                      1      137     306
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                      0       28     626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                      1       46     626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                      0      258     626
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                      1      294     626
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       33     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       29     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      404     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      234     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      106     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       72     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      358     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      222     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0      164     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1      225     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0       45     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1       40     474
0-24 months   ki1114097-CONTENT          PERU                           0                      0       10     215
0-24 months   ki1114097-CONTENT          PERU                           0                      1        4     215
0-24 months   ki1114097-CONTENT          PERU                           1                      0      156     215
0-24 months   ki1114097-CONTENT          PERU                           1                      1       45     215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    13660   27166
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1    11379   27166
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1450   27166
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      677   27166
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     2155    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1     2622    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      383    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      265    5425


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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         ever_stunted
## impfloor   0   1
##        0   0   0
##        1  51 210
##         ever_stunted
## impfloor   0   1
##        0   0   0
##        1 169 137
##         ever_stunted
## impfloor   0   1
##        0   0   0
##        1 195  62
##         ever_stunted
## impfloor   0   1
##        0   0   0
##        1 270  36
##         ever_stunted
## impfloor   0   1
##        0   0   0
##        1  68 128
##         ever_stunted
## impfloor   0   1
##        0   0   0
##        1 199  62
```




# Results Detail

## Results Plots
![](/tmp/fabf5c01-0d0a-412b-8970-ca817a826895/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fabf5c01-0d0a-412b-8970-ca817a826895/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fabf5c01-0d0a-412b-8970-ca817a826895/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fabf5c01-0d0a-412b-8970-ca817a826895/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.4166036    0.2338842   0.5993231
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.5195665    0.4543784   0.5847546
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.9536775    0.9089025   0.9984525
0-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.5346413    0.4700384   0.5992442
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.2975257    0.2320361   0.3630154
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.2961204    0.2289840   0.3632569
0-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.4374929    0.3726274   0.5023584
0-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.1536997    0.0714190   0.2359804
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9337561    0.8702095   0.9973026
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.4381035    0.3763328   0.4998741
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7202605    0.6630190   0.7775021
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9632317    0.8831871   1.0432763
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.5657470    0.4953066   0.6361873
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.5349072    0.4939303   0.5758840
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.4751362    0.3640943   0.5861781
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.3688304    0.3316380   0.4060228
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.4778145    0.4281041   0.5275248
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.3868948    0.3493109   0.4244787
0-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.5848685    0.5367565   0.6329805
0-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.5712306    0.4985584   0.6439028
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.4471513    0.4394338   0.4548688
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.3669751    0.3423244   0.3916259
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.5481175    0.5310538   0.5651811
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.4271285    0.3772716   0.4769854
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                0.0769715    0.0368156   0.1171274
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1781386    0.1152143   0.2410628
0-6 months    ki0047075b-MAL-ED       PERU                           0                    NA                0.0989356    0.0592109   0.1386603
0-6 months    ki0047075b-MAL-ED       PERU                           1                    NA                0.0924649    0.0253107   0.1596190
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.1500523    0.0833404   0.2167641
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.1509647    0.1213285   0.1806009
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.0820178    0.0146787   0.1493569
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.0926278    0.0702562   0.1149993
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1614079    0.1224614   0.2003543
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1365385    0.1096671   0.1634100
0-6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.1188588    0.0874442   0.1502733
0-6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.0669582    0.0258232   0.1080933
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.3245448    0.3175427   0.3315470
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.2333364    0.2117051   0.2549677
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.2958990    0.2810859   0.3107122
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.2171075    0.1740324   0.2601827
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.3075362    0.2538838   0.3611885
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.3597724    0.2914734   0.4280715
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.2251473    0.1587087   0.2915859
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1743488    0.1119494   0.2367482
6-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.2778253    0.2134259   0.3422246
6-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.0685334   -0.0022204   0.1392873
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.7549907    0.6108784   0.8991029
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.2626443    0.2027134   0.3225751
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7579989    0.6454436   0.8705542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.4441026    0.3945479   0.4936573
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8082081    0.7376120   0.8788041
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.2383766    0.2001374   0.2766159
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.2523047    0.2112413   0.2933680
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1823552    0.1498011   0.2149093
6-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.4485975    0.3944039   0.5027910
6-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.4989738    0.4158526   0.5820950
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.1981419    0.1897049   0.2065790
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.1818158    0.1594540   0.2041775
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.3065102    0.2890356   0.3239849
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.2514280    0.2038854   0.2989706


### Parameter: E(Y)


agecat        studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.5165289   0.4534372   0.5796206
0-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.5234043   0.4594110   0.5873975
0-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2445415   0.1887507   0.3003322
0-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.4889706   0.4294554   0.5484858
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.4357977   0.3750558   0.4965395
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7096774   0.6530704   0.7662845
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.5431310   0.5040778   0.5821842
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.5590717   0.5143277   0.6038158
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                0.4437900   0.4362765   0.4513035
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.5321659   0.5159814   0.5483504
0-6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1135371   0.0723577   0.1547165
0-6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                0.1250000   0.0856248   0.1643752
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1549521   0.1265829   0.1833213
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.1118143   0.0834144   0.1402143
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                0.3220295   0.3152463   0.3288127
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.2864960   0.2726657   0.3003263
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.3743590   0.3062579   0.4424600
6-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1605505   0.1117053   0.2093956
6-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.3275109   0.2665942   0.3884276
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2624434   0.2043065   0.3205804
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.4473684   0.3996451   0.4950917
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.4308094   0.3811516   0.4804672
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                0.1966855   0.1886595   0.2047115
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.2952381   0.2788899   0.3115863


### Parameter: RR


agecat        studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                 1.2471482   0.7969240   1.9517276
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA                          1                    0                 0.5606102   0.4923911   0.6382808
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                 0.9952767   0.7369847   1.3440926
0-24 months   ki0047075b-MAL-ED       PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       PERU                           1                    0                 0.3513194   0.2011425   0.6136214
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 0.4691841   0.4032096   0.5459535
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3373379   1.1920223   1.5003684
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 0.9454883   0.8201446   1.0899886
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                 0.7762624   0.6037740   0.9980280
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 0.8097175   0.7047529   0.9303154
0-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                 0.9766821   0.8392977   1.1365550
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                 0.8206957   0.7662380   0.8790239
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 0.7792645   0.6917464   0.8778553
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                    0                 2.3143435   1.2496989   4.2859811
0-6 months    ki0047075b-MAL-ED       PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       PERU                           1                    0                 0.9345966   0.4091013   2.1350971
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0                 1.0060807   0.6194553   1.6340135
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                 1.1293616   0.4829892   2.6407581
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 0.8459225   0.6212571   1.1518337
0-6 months    ki1113344-GMS-Nepal     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL                          1                    0                 0.5633428   0.2886820   1.0993241
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0                 0.7189650   0.6537169   0.7907256
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 0.7337217   0.5993041   0.8982878
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                 1.1698541   0.9195295   1.4883249
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                 0.7743765   0.4961180   1.2087022
6-24 months   ki0047075b-MAL-ED       PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       PERU                           1                    0                 0.2466782   0.0848005   0.7175680
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 0.3478775   0.2589598   0.4673264
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 0.5858882   0.4878183   0.7036738
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                 0.2949446   0.2459380   0.3537165
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 0.7227578   0.5748703   0.9086900
6-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                 1.1122974   0.9056752   1.3660587
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                 0.9176036   0.8051073   1.0458190
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 0.8202923   0.6739496   0.9984122


### Parameter: PAR


agecat        studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.0999253   -0.0738266    0.2736771
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -0.4302733   -0.4990156   -0.3615309
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0529843   -0.0949802   -0.0109884
0-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0514777    0.0200394    0.0829161
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.4979584   -0.5726276   -0.4232892
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105831   -0.0262098    0.0050436
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0226160   -0.0898249    0.0445930
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0994219   -0.2044216    0.0055778
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0899517   -0.1341243   -0.0457791
0-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0257968   -0.0474368   -0.0041567
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0033612   -0.0051836   -0.0015389
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0159516   -0.0219596   -0.0099436
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0365656    0.0013989    0.0717323
0-6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 0.0260644    0.0030843    0.0490446
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                 0.0048998   -0.0571827    0.0669823
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.0122679   -0.0512201    0.0757559
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0228854   -0.0570632    0.0112924
0-6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0070444   -0.0181247    0.0040358
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0025153   -0.0041971   -0.0008335
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0094030   -0.0145369   -0.0042692
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.0668228   -0.0016190    0.1352646
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0645968   -0.1055116   -0.0236820
6-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0496857    0.0186062    0.0807652
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.4925472   -0.6304489   -0.3546455
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.3106305   -0.4189476   -0.2023134
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.5687715   -0.6404065   -0.4971364
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0635950   -0.0985410   -0.0286491
6-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0177881   -0.0415915    0.0060153
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0014564   -0.0036837    0.0007709
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0112722   -0.0171901   -0.0053542


### Parameter: PAF


agecat        studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.1934553   -0.2239130    0.4684963
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -0.8220668   -1.0543675   -0.6160339
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.2166678   -0.4159663   -0.0454207
0-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.1052778    0.0384326    0.1674761
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.1426367   -1.4572403   -0.8683122
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0149126   -0.0373231    0.0070139
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0416400   -0.1737667    0.0756137
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.2646211   -0.5787302   -0.0130081
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.2319163   -0.3582165   -0.1173606
0-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0461422   -0.0860621   -0.0076896
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0075739   -0.0116917   -0.0034730
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0299748   -0.0413961   -0.0186787
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.3220584   -0.0197564    0.5492994
0-6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 0.2085153    0.0097937    0.3673561
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                 0.0316214   -0.4641809    0.3595346
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                 0.1301139   -0.8886751    0.5993478
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.1652111   -0.4476318    0.0621117
0-6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0630012   -0.1666741    0.0314591
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0078108   -0.0130481   -0.0026006
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0328209   -0.0509476   -0.0150068
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                 0.1784993   -0.0006835    0.3255975
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.4023459   -0.7034402   -0.1544721
6-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.1517069    0.0510209    0.2417102
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.8767747   -2.6723086   -1.2535778
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.6943505   -0.9779571   -0.4514085
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -2.3754573   -2.9624537   -1.8754183
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.3369992   -0.5582346   -0.1471744
6-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0412899   -0.0984524    0.0128979
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0074049   -0.0187816    0.0038447
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0381799   -0.0584986   -0.0182511
