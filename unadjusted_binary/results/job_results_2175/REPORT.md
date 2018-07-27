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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

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
![](/tmp/97a2d2ce-8d89-416c-bf1b-c7f3dabb809f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/97a2d2ce-8d89-416c-bf1b-c7f3dabb809f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/97a2d2ce-8d89-416c-bf1b-c7f3dabb809f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/97a2d2ce-8d89-416c-bf1b-c7f3dabb809f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.5263158   0.3013388   0.7512928
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.5156951   0.4499670   0.5814231
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.4666667   0.2136604   0.7196729
0-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.5272727   0.4611599   0.5933856
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.2460317   0.1706640   0.3213994
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.2427184   0.1597410   0.3256959
0-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.4788732   0.4116623   0.5460842
0-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.5254237   0.3977711   0.6530764
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.4761905   0.2621667   0.6902143
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.4322034   0.3688778   0.4955290
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7179487   0.6601753   0.7757222
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5714286   0.3116795   0.8311777
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.6216216   0.5110342   0.7322090
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.5326087   0.4909534   0.5742640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.4677419   0.3434546   0.5920293
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.3667712   0.3293492   0.4041931
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.4044944   0.3323464   0.4766423
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.3827586   0.3431754   0.4223418
0-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.5784062   0.5292820   0.6275304
0-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.4705882   0.3643662   0.5768103
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.4544511   0.4467644   0.4621377
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.3182887   0.2963211   0.3402562
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.5488801   0.5319742   0.5657859
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.4089506   0.3659535   0.4519478
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                0.0714286   0.0263618   0.1164954
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1650485   0.0932003   0.2368968
0-6 months    ki0047075b-MAL-ED       PERU                           0                    NA                0.1079812   0.0662252   0.1497373
0-6 months    ki0047075b-MAL-ED       PERU                           1                    NA                0.1864407   0.0868802   0.2860011
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.1891892   0.0998818   0.2784966
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.1503623   0.1205214   0.1802032
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.1129032   0.0340714   0.1917350
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.0924765   0.0699811   0.1149718
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.1460674   0.0941500   0.1979848
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1362069   0.1082734   0.1641404
0-6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.1208226   0.0884003   0.1532450
0-6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.0705882   0.0160793   0.1250971
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.3306916   0.3237024   0.3376808
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.2197543   0.2004373   0.2390713
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.2965763   0.2818172   0.3113353
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.2132472   0.1792183   0.2472761
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.4705882   0.2327085   0.7084679
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.3651685   0.2942548   0.4360823
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.1833333   0.1139430   0.2527237
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.1326531   0.0653417   0.1999644
6-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.3243243   0.2567205   0.3919282
6-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.3409091   0.2005424   0.4812758
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.3333333   0.1150652   0.5516015
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.2561576   0.1959739   0.3163413
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.5405405   0.3797705   0.7013106
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.4383202   0.3884380   0.4882024
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.3000000   0.1358524   0.4641476
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.2355460   0.1970212   0.2740709
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.2091503   0.1446549   0.2736458
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.1820128   0.1469890   0.2170367
6-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.4401294   0.3847089   0.4955500
6-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.3918919   0.2805205   0.5032632
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                0.2041329   0.1955276   0.2127381
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                0.1293495   0.1100173   0.1486816
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.3063739   0.2887280   0.3240198
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.2224168   0.1832700   0.2615636


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
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                 0.9798206   0.6272317   1.5306121
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA                          1                    0                 1.1298701   0.6476765   1.9710558
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                 0.9865330   0.6233835   1.5612338
0-24 months   ki0047075b-MAL-ED       PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       PERU                           1                    0                 1.0972084   0.8287726   1.4525893
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 0.9076271   0.5657230   1.4561667
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7959184   0.5016326   1.2628487
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 0.8568053   0.7054788   1.0405917
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                 0.7841314   0.5898942   1.0423261
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 0.9462644   0.7699647   1.1629316
0-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                 0.8135948   0.6392473   1.0354936
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                 0.7003805   0.6528057   0.7514225
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 0.7450637   0.6690577   0.8297042
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                    0                 2.3106796   1.0735860   4.9732766
0-6 months    ki0047075b-MAL-ED       PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       PERU                           1                    0                 1.7266028   0.8930079   3.3383325
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    0                 0.7947723   0.4762680   1.3262762
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    0                 0.8190775   0.3910337   1.7156781
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 0.9324934   0.6186291   1.4055982
0-6 months    ki1113344-GMS-Nepal     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL                          1                    0                 0.5842303   0.2579558   1.3231917
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    0                 0.6645292   0.6075463   0.7268567
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 0.7190298   0.6093204   0.8484926
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    0                 0.7759831   0.4515193   1.3336083
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                    0                 0.7235622   0.3841946   1.3627005
6-24 months   ki0047075b-MAL-ED       PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       PERU                           1                    0                 1.0511364   0.6625714   1.6675752
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0                 0.7684729   0.3832648   1.5408422
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    0                 0.8108924   0.5897402   1.1149766
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    0                 0.7851535   0.4435448   1.3898618
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0                 0.8702489   0.6050419   1.2517038
6-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    0                 0.8904014   0.6525166   1.2150107
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    0                 0.6336534   0.5422560   0.7404558
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    0                 0.7259654   0.6039628   0.8726128


### Parameter: PAR


agecat        studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0097869   -0.2257671    0.2061934
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                 0.0567376   -0.1880797    0.3015549
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0014903   -0.0519095    0.0489290
0-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0100973   -0.0212788    0.0414735
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0403928   -0.2453560    0.1645704
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0082713   -0.0238736    0.0073310
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0784906   -0.1827182    0.0257369
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0920276   -0.2103492    0.0262939
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0166316   -0.0796033    0.0463402
0-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0193344   -0.0406495    0.0019806
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0106610   -0.0125200   -0.0088021
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0167142   -0.0223286   -0.0110997
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0421085    0.0034853    0.0807318
0-6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 0.0170188   -0.0067139    0.0407514
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0342371   -0.1172730    0.0487988
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0186175   -0.0933364    0.0561014
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0075450   -0.0526567    0.0375667
0-6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0090083   -0.0205134    0.0024968
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0086621   -0.0103151   -0.0070092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0100803   -0.0146299   -0.0055306
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0962293   -0.3228525    0.1303940
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0227829   -0.0663710    0.0208053
6-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0031866   -0.0267604    0.0331336
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0708899   -0.2788812    0.1371014
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.0931721   -0.2466281    0.0602838
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.0605634   -0.2189994    0.0978726
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0204406   -0.0757288    0.0348475
6-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0093201   -0.0334310    0.0147909
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0074474   -0.0095959   -0.0052988
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0111358   -0.0167556   -0.0055160


### Parameter: PAF


agecat        studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.0189474   -0.5359359    0.3240254
0-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                 0.1084011   -0.5069254    0.4724698
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.0060941   -0.2349170    0.1803293
0-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0206502   -0.0457122    0.0828012
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.0926871   -0.6806394    0.2895769
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0116550   -0.0339598    0.0101686
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.1445151   -0.3540147    0.0325697
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.2449405   -0.6038372    0.0336445
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0428801   -0.2185728    0.1074814
0-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0345831   -0.0735890    0.0030056
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0240227   -0.0282518   -0.0198110
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0314078   -0.0420961   -0.0208291
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.3708791   -0.0414207    0.6199489
0-6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 0.1361502   -0.0716116    0.3036317
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.2209529   -0.8923978    0.2122555
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.1974585   -1.3191077    0.3816989
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0544676   -0.4358940    0.2256379
0-6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0805646   -0.1868775    0.0162255
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0268985   -0.0320730   -0.0217500
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0351847   -0.0511994   -0.0194138
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.2570508   -1.0361623    0.2239437
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.1419048   -0.4459293    0.0981948
6-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0097297   -0.0860624    0.0970729
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.2701149   -1.3700481    0.3193421
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.2082671   -0.6058441    0.0908773
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.2529412   -1.1242384    0.2609768
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.1083180   -0.4433352    0.1489373
6-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.0216338   -0.0791940    0.0328563
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.0378643   -0.0487283   -0.0271128
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.0377179   -0.0569000   -0.0188840
