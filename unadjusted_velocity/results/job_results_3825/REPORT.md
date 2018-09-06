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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        nrooms    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            149     237
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2             49     237
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3             28     237
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     237
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              3     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2             19     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3             50     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4+           102     174
0-3 months     ki0047075b-MAL-ED          INDIA                          1             73     194
0-3 months     ki0047075b-MAL-ED          INDIA                          2             68     194
0-3 months     ki0047075b-MAL-ED          INDIA                          3             31     194
0-3 months     ki0047075b-MAL-ED          INDIA                          4+            22     194
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             37     174
0-3 months     ki0047075b-MAL-ED          NEPAL                          2             21     174
0-3 months     ki0047075b-MAL-ED          NEPAL                          3             17     174
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+            99     174
0-3 months     ki0047075b-MAL-ED          PERU                           1             17     260
0-3 months     ki0047075b-MAL-ED          PERU                           2             50     260
0-3 months     ki0047075b-MAL-ED          PERU                           3             60     260
0-3 months     ki0047075b-MAL-ED          PERU                           4+           133     260
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           159     215
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     226
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55     226
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     226
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            95     226
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             33      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             32      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             18      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+             4      87
0-3 months     ki1000108-IRC              INDIA                          1            171     375
0-3 months     ki1000108-IRC              INDIA                          2            154     375
0-3 months     ki1000108-IRC              INDIA                          3             33     375
0-3 months     ki1000108-IRC              INDIA                          4+            17     375
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            452     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            101     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3             59     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+            22     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            344     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            183     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            102     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     720
0-3 months     ki1114097-CONTENT          PERU                           1              6      29
0-3 months     ki1114097-CONTENT          PERU                           2              7      29
0-3 months     ki1114097-CONTENT          PERU                           3              4      29
0-3 months     ki1114097-CONTENT          PERU                           4+            12      29
0-3 months     ki1135781-COHORTS          INDIA                          1           3049    4653
0-3 months     ki1135781-COHORTS          INDIA                          2           1351    4653
0-3 months     ki1135781-COHORTS          INDIA                          3            164    4653
0-3 months     ki1135781-COHORTS          INDIA                          4+            89    4653
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1          24946   40052
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2          10366   40052
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3           3374   40052
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+          1366   40052
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           2222    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2            904    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3            344    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+           140    3610
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            145     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2             48     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3             27     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              4     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2             19     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3             59     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4+           126     208
3-6 months     ki0047075b-MAL-ED          INDIA                          1             83     229
3-6 months     ki0047075b-MAL-ED          INDIA                          2             75     229
3-6 months     ki0047075b-MAL-ED          INDIA                          3             46     229
3-6 months     ki0047075b-MAL-ED          INDIA                          4+            25     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             51     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          2             31     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          3             21     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+           130     233
3-6 months     ki0047075b-MAL-ED          PERU                           1             19     267
3-6 months     ki0047075b-MAL-ED          PERU                           2             49     267
3-6 months     ki0047075b-MAL-ED          PERU                           3             62     267
3-6 months     ki0047075b-MAL-ED          PERU                           4+           137     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             12     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           187     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             12     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             60     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           104     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            161     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             86     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     307
3-6 months     ki1000108-IRC              INDIA                          1            180     395
3-6 months     ki1000108-IRC              INDIA                          2            163     395
3-6 months     ki1000108-IRC              INDIA                          3             35     395
3-6 months     ki1000108-IRC              INDIA                          4+            17     395
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            406     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2             91     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3             56     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+            21     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            328     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            177     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            100     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     695
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1             62     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            194     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3            234     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+           452     942
3-6 months     ki1114097-CONTENT          PERU                           1             44     214
3-6 months     ki1114097-CONTENT          PERU                           2             54     214
3-6 months     ki1114097-CONTENT          PERU                           3             38     214
3-6 months     ki1114097-CONTENT          PERU                           4+            78     214
3-6 months     ki1135781-COHORTS          INDIA                          1           3056    4710
3-6 months     ki1135781-COHORTS          INDIA                          2           1396    4710
3-6 months     ki1135781-COHORTS          INDIA                          3            173    4710
3-6 months     ki1135781-COHORTS          INDIA                          4+            85    4710
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1          14714   25142
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           7046   25142
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3           2374   25142
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+          1008   25142
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           2258    3678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2            932    3678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3            330    3678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+           158    3678
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            139     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2             44     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3             26     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+            11     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              2     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2             18     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3             57     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4+           117     194
6-12 months    ki0047075b-MAL-ED          INDIA                          1             80     224
6-12 months    ki0047075b-MAL-ED          INDIA                          2             72     224
6-12 months    ki0047075b-MAL-ED          INDIA                          3             47     224
6-12 months    ki0047075b-MAL-ED          INDIA                          4+            25     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          1             48     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          2             31     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          3             22     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+           129     230
6-12 months    ki0047075b-MAL-ED          PERU                           1             18     237
6-12 months    ki0047075b-MAL-ED          PERU                           2             45     237
6-12 months    ki0047075b-MAL-ED          PERU                           3             52     237
6-12 months    ki0047075b-MAL-ED          PERU                           4+           122     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           180     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             54     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             56     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           102     223
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            170     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             94     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             45     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     323
6-12 months    ki1000108-IRC              INDIA                          1            181     398
6-12 months    ki1000108-IRC              INDIA                          2            167     398
6-12 months    ki1000108-IRC              INDIA                          3             34     398
6-12 months    ki1000108-IRC              INDIA                          4+            16     398
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            386     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2             86     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3             53     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+            20     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            311     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            178     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3             97     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     676
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1             66     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2            190     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3            232     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+           462     950
6-12 months    ki1114097-CONTENT          PERU                           1             44     213
6-12 months    ki1114097-CONTENT          PERU                           2             53     213
6-12 months    ki1114097-CONTENT          PERU                           3             39     213
6-12 months    ki1114097-CONTENT          PERU                           4+            77     213
6-12 months    ki1135781-COHORTS          INDIA                          1           2408    3815
6-12 months    ki1135781-COHORTS          INDIA                          2           1189    3815
6-12 months    ki1135781-COHORTS          INDIA                          3            141    3815
6-12 months    ki1135781-COHORTS          INDIA                          4+            77    3815
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1          11617   19647
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5453   19647
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3           1793   19647
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           784   19647
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           3679    6222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2           1580    6222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3            647    6222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           316    6222
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            129     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2             39     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              0     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2             15     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3             48     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4+           102     165
12-24 months   ki0047075b-MAL-ED          INDIA                          1             80     225
12-24 months   ki0047075b-MAL-ED          INDIA                          2             74     225
12-24 months   ki0047075b-MAL-ED          INDIA                          3             46     225
12-24 months   ki0047075b-MAL-ED          INDIA                          4+            25     225
12-24 months   ki0047075b-MAL-ED          NEPAL                          1             46     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          2             31     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          3             22     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     226
12-24 months   ki0047075b-MAL-ED          PERU                           1             16     191
12-24 months   ki0047075b-MAL-ED          PERU                           2             30     191
12-24 months   ki0047075b-MAL-ED          PERU                           3             42     191
12-24 months   ki0047075b-MAL-ED          PERU                           4+           103     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           177     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             48     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             53     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            97     207
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            178     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             90     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             42     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     324
12-24 months   ki1000108-IRC              INDIA                          1            180     394
12-24 months   ki1000108-IRC              INDIA                          2            164     394
12-24 months   ki1000108-IRC              INDIA                          3             34     394
12-24 months   ki1000108-IRC              INDIA                          4+            16     394
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            321     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2             76     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3             44     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            17     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            206     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            133     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             75     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            81     495
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1             54     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2            148     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3            176     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+           356     734
12-24 months   ki1114097-CONTENT          PERU                           1              7      38
12-24 months   ki1114097-CONTENT          PERU                           2             12      38
12-24 months   ki1114097-CONTENT          PERU                           3              9      38
12-24 months   ki1114097-CONTENT          PERU                           4+            10      38
12-24 months   ki1135781-COHORTS          INDIA                          1           1935    3166
12-24 months   ki1135781-COHORTS          INDIA                          2           1044    3166
12-24 months   ki1135781-COHORTS          INDIA                          3            121    3166
12-24 months   ki1135781-COHORTS          INDIA                          4+            66    3166
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           5549    9281
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2589    9281
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            785    9281
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           358    9281
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           4193    7125
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           1834    7125
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            730    7125
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           368    7125


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7acaa376-4263-4568-b618-6e5fe0ffe1b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7acaa376-4263-4568-b618-6e5fe0ffe1b8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.5539807   3.4712336   3.6367278
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                3.6091189   3.4718253   3.7464125
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                3.6410025   3.4776860   3.8043190
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                3.4660129   3.2910080   3.6410179
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.5383665   3.4094044   3.6673286
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                3.6162511   3.4958847   3.7366175
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                3.5368031   3.3224719   3.7511343
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                3.5682201   3.3507489   3.7856913
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.7962547   3.6627994   3.9297100
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                3.9384490   3.6928833   4.1840146
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                3.8360932   3.5185353   4.1536511
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                3.7972276   3.6988385   3.8956167
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.0878556   2.7885311   3.3871802
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                3.3693573   3.2322199   3.5064946
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                3.3404120   3.2012136   3.4796103
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                3.3503314   3.2690696   3.4315932
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.2339657   2.9463230   3.5216083
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                3.3458228   3.0686424   3.6230032
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                3.4664085   3.2158892   3.7169277
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                3.4603860   3.3479478   3.5728243
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4605668   3.2031257   3.7180079
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                3.4201221   3.2739030   3.5663411
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                3.5516299   3.3898203   3.7134394
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                3.4633743   3.3452857   3.5814630
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1771047   3.0179112   3.3362982
0-3 months     ki1000108-IRC              INDIA                          2                    NA                3.1724991   2.9881312   3.3568671
0-3 months     ki1000108-IRC              INDIA                          3                    NA                3.2850514   2.9227093   3.6473934
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                2.8216162   2.3216109   3.3216214
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4578242   3.4113055   3.5043429
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.5377847   3.4449992   3.6305702
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                3.5098154   3.3873862   3.6322447
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                3.6673296   3.4195358   3.9151233
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3497052   3.2904036   3.4090069
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                3.2437017   3.1681958   3.3192076
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                3.2932428   3.2035220   3.3829637
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                3.2555654   3.1709950   3.3401358
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4916523   3.4708443   3.5124603
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                3.6048005   3.5737675   3.6358334
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                3.6236264   3.5313697   3.7158831
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                3.6887369   3.5735506   3.8039232
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7068953   3.6945624   3.7192281
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.7287088   3.7115070   3.7459105
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                3.7534124   3.7230032   3.7838216
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                3.7625505   3.7134884   3.8116126
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6356944   3.5939332   3.6774556
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                3.6725784   3.6089600   3.7361968
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                3.5951625   3.5005389   3.6897860
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                3.5725021   3.4187486   3.7262556
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9251944   1.8612520   1.9891369
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.9598455   1.8610539   2.0586370
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.9040974   1.7504830   2.0577118
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                1.8856599   1.7112442   2.0600756
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8635154   1.7584232   1.9686075
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.8684443   1.7730936   1.9637950
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.9416753   1.7952992   2.0880515
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                1.8900475   1.6956753   2.0844196
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9316403   1.8017312   2.0615494
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.8604013   1.7141581   2.0066446
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.9200803   1.7543399   2.0858207
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                2.0158415   1.9424199   2.0892632
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.2533550   2.0466908   2.4600192
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                2.0777118   1.9008880   2.2545356
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                2.0874804   1.9443346   2.2306262
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                1.9331852   1.8502590   2.0161114
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.8074142   1.5860126   2.0288158
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                2.1007251   1.8105959   2.3908544
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.8828571   1.6270277   2.1386865
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.9996065   1.9061300   2.0930831
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7921954   1.4231734   2.1612174
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8027745   1.6533419   1.9522071
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8104426   1.6847114   1.9361739
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.8621236   1.7662340   1.9580132
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8065195   1.6672833   1.9457556
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.7379922   1.5500166   1.9259678
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.8326177   1.5775689   2.0876666
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                2.1233582   1.6123257   2.6343907
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8402307   1.7534304   1.9270309
3-6 months     ki1000108-IRC              INDIA                          2                    NA                1.9232198   1.8173790   2.0290607
3-6 months     ki1000108-IRC              INDIA                          3                    NA                1.8149814   1.5925397   2.0374230
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                1.9259663   1.6390352   2.2128973
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9621701   1.9200660   2.0042743
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9630404   1.8780225   2.0480583
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.9836017   1.8680679   2.0991355
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.9907720   1.8324740   2.1490699
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9566965   1.9080692   2.0053237
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                2.0095019   1.9351114   2.0838924
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                2.1061320   1.9999365   2.2123275
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                2.0659737   1.9594200   2.1725273
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7324117   1.6021829   1.8626406
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.7452970   1.6669204   1.8236737
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.7308926   1.6444782   1.8173069
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.6720859   1.6160709   1.7281009
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                1.9585537   1.8663040   2.0508034
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                2.1984436   2.1050066   2.2918805
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                2.1685325   2.0560500   2.2810150
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                2.0348570   1.9559972   2.1137168
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8327784   1.8155572   1.8499996
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                1.9107301   1.8847666   1.9366937
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                1.8422781   1.7676025   1.9169538
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                1.8985155   1.7904581   2.0065729
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9146873   1.9008365   1.9285381
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9226577   1.9038134   1.9415020
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.9445720   1.9154744   1.9736695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                1.9277336   1.8831541   1.9723131
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8876519   1.8485273   1.9267765
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.8752580   1.8237411   1.9267749
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.9755161   1.8857855   2.0652466
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                2.0357483   1.8805770   2.1909195
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1124738   1.0800176   1.1449300
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.1086821   1.0556197   1.1617445
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.1146286   1.0503576   1.1788996
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                1.1609277   1.0686548   1.2532007
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1692580   1.1205773   1.2179388
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                1.1097630   1.0594978   1.1600281
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                1.1031655   1.0437624   1.1625686
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                1.0329654   0.9647253   1.1012055
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.2182175   1.1552834   1.2811516
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.2614032   1.1967382   1.3260682
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                1.1895096   1.1112152   1.2678040
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                1.2202736   1.1866484   1.2538989
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1881529   1.0655856   1.3107202
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.2155840   1.1212468   1.3099213
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.2016982   1.1471221   1.2562744
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                1.2151519   1.1709269   1.2593768
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0745759   0.9156413   1.2335105
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.2739503   1.1165465   1.4313540
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.0567862   0.9573703   1.1562022
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.2048728   1.1578119   1.2519337
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0326324   0.8214850   1.2437798
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9929076   0.9178317   1.0679835
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.0082823   0.9312810   1.0852837
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.9999568   0.9481345   1.0517791
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0522301   0.9870687   1.1173916
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.0823061   0.9950612   1.1695511
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.0670747   0.9244379   1.2097115
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                1.0383026   0.8526136   1.2239916
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2394891   1.2009215   1.2780567
6-12 months    ki1000108-IRC              INDIA                          2                    NA                1.2821805   1.2322209   1.3321401
6-12 months    ki1000108-IRC              INDIA                          3                    NA                1.1762607   1.0803058   1.2722156
6-12 months    ki1000108-IRC              INDIA                          4+                   NA                1.1740656   1.0291971   1.3189341
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1620330   1.1421592   1.1819069
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.1877675   1.1376986   1.2378363
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.2124164   1.1590928   1.2657400
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.2215108   1.1368911   1.3061305
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2367636   1.2107647   1.2627625
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                1.2027739   1.1675688   1.2379791
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                1.2346027   1.1915807   1.2776248
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                1.2414779   1.1964496   1.2865062
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1725158   1.1075022   1.2375294
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.1430077   1.0992282   1.1867872
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.1978217   1.1541378   1.2415057
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.1629784   1.1360570   1.1898999
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.2701320   1.2133845   1.3268795
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                1.2529111   1.1917912   1.3140310
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                1.3561896   1.2893548   1.4230245
6-12 months    ki1114097-CONTENT          PERU                           4+                   NA                1.3239287   1.2759398   1.3719177
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0586185   1.0462501   1.0709870
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                1.1167418   1.1001335   1.1333500
6-12 months    ki1135781-COHORTS          INDIA                          3                    NA                1.1512642   1.1035033   1.1990250
6-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                1.2148014   1.1547133   1.2748895
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0913651   1.0829674   1.0997627
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.1189628   1.1066593   1.1312663
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.1399765   1.1207293   1.1592238
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                1.1770122   1.1458464   1.2081781
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.1895962   1.1765701   1.2026223
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.2106442   1.1908911   1.2303973
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.2299030   1.1952103   1.2645958
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                1.2688219   1.2206142   1.3170297
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8328929   0.8144292   0.8513565
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8585499   0.8128772   0.9042225
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8638761   0.8181838   0.9095684
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.9108963   0.8722066   0.9495861
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8928651   0.8624620   0.9232683
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8654424   0.8352223   0.8956626
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.8836903   0.8480681   0.9193124
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.8784892   0.8299816   0.9269969
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8304474   0.7977247   0.8631702
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8886968   0.8465410   0.9308525
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8499683   0.7906250   0.9093116
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.8684771   0.8490729   0.8878813
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8359657   0.7709230   0.9010083
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8545907   0.8019307   0.9072508
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8413364   0.7934041   0.8892688
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.8475985   0.8201709   0.8750261
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9211498   0.8589059   0.9833937
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.8804317   0.8000226   0.9608407
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8808015   0.7850440   0.9765589
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.8637183   0.8390147   0.8884219
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8451127   0.6705905   1.0196348
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6970499   0.6500131   0.7440867
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7861653   0.7445208   0.8278097
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7824251   0.7500875   0.8147627
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7208799   0.6863578   0.7554020
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.7527944   0.7014773   0.8041115
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.7757695   0.6855487   0.8659904
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.7866266   0.6980836   0.8751696
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8155867   0.7882611   0.8429123
12-24 months   ki1000108-IRC              INDIA                          2                    NA                0.8562428   0.8258214   0.8866642
12-24 months   ki1000108-IRC              INDIA                          3                    NA                0.7880161   0.7168984   0.8591338
12-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.8229735   0.7221347   0.9238124
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8497961   0.8354812   0.8641109
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8680893   0.8403169   0.8958617
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8587977   0.8270671   0.8905283
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.9536682   0.8717030   1.0356333
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8665850   0.8470128   0.8861572
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.8579166   0.8355751   0.8802581
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.9092139   0.8816007   0.9368271
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.8962732   0.8716336   0.9209128
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7660393   0.7086327   0.8234460
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8460245   0.8142571   0.8777918
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.8488743   0.8182526   0.8794961
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.8399657   0.8172921   0.8626394
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.9127358   0.8516251   0.9738464
12-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.9135542   0.8662145   0.9608939
12-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.9177103   0.8563753   0.9790453
12-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.9574768   0.8723368   1.0426168
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7924980   0.7849051   0.8000910
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.8596110   0.8501622   0.8690599
12-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.8545468   0.8252934   0.8838002
12-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.8990530   0.8552181   0.9428878
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7910060   0.7843108   0.7977011
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.8027954   0.7937145   0.8118763
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.8063808   0.7884411   0.8243205
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.8152100   0.7930050   0.8374150
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8424255   0.8358822   0.8489689
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.8493073   0.8395848   0.8590297
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.8737751   0.8564096   0.8911406
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.8783098   0.8578035   0.8988162


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5715787   3.5085237   3.6346338
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5688019   3.4917177   3.6458861
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8178619   3.7415249   3.8941989
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3345392   3.2720665   3.3970119
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4366827   3.3435842   3.5297813
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4772891   3.3996638   3.5549143
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1685972   3.0563410   3.2808533
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5329262   3.5160350   3.5498174
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7183577   3.7080161   3.7286992
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9877371   1.9066803   2.0687939
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8759294   1.8124309   1.9394280
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8574178   1.8434023   1.8714334
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9202659   1.9098042   1.9307275
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2493708   1.2200516   1.2786900
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0833099   1.0736358   1.0929841
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1068788   1.1001344   1.1136232
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2031561   1.1927695   1.2135427
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8304303   0.8110434   0.8498173
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9259464   0.8927736   0.9591191
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8192215   0.8133282   0.8251148
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7965288   0.7912208   0.8018367
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8492623   0.8438054   0.8547191


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0551382   -0.1051634    0.2154399
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0870218   -0.0960611    0.2701048
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.0879677   -0.2815493    0.1056138
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0778846   -0.0985220    0.2542912
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0015634   -0.2517016    0.2485748
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0298536   -0.2229802    0.2826874
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.1421943   -0.1372924    0.4216809
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0398386   -0.3046224    0.3842995
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0009730   -0.1648303    0.1667762
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.2815016   -0.0477427    0.6107459
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.2525563   -0.0775518    0.5826644
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   1                  0.2624758   -0.0476833    0.5726348
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1118572   -0.2876015    0.5113158
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.2324428   -0.1489994    0.6138851
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.2264204   -0.0824171    0.5352579
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0404447   -0.3365122    0.2556228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0910631   -0.2130065    0.3951326
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                  0.0028075   -0.2804254    0.2860404
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0046056   -0.2481915    0.2389804
0-3 months     ki1000108-IRC              INDIA                          3                    1                  0.1079467   -0.2878239    0.5037172
0-3 months     ki1000108-IRC              INDIA                          4+                   1                 -0.3554886   -0.8802245    0.1692474
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0799605   -0.0238332    0.1837542
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0519912   -0.0789779    0.1829604
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.2095054   -0.0426171    0.4616278
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.1060036   -0.2020131   -0.0099940
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 -0.0564624   -0.1640101    0.0510854
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 -0.0941398   -0.1974299    0.0091503
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                  0.1131482    0.0757849    0.1505115
0-3 months     ki1135781-COHORTS          INDIA                          3                    1                  0.1319741    0.0373999    0.2265483
0-3 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.1970846    0.0800339    0.3141353
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0218135    0.0021332    0.0414938
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0465171    0.0149925    0.0780418
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0556553    0.0059186    0.1053919
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0368840   -0.0409765    0.1147445
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0405319   -0.1448178    0.0637539
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 -0.0631923   -0.2225901    0.0962055
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0346510   -0.0830282    0.1523303
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0210970   -0.1874882    0.1452941
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.0395345   -0.2253018    0.1462327
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0049289   -0.1369729    0.1468307
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0781600   -0.1020353    0.2583552
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0265321   -0.1944315    0.2474957
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0712390   -0.2668494    0.1243715
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0115600   -0.2221455    0.1990255
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0842012   -0.0650205    0.2334229
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.1756432   -0.4476298    0.0963435
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.1658746   -0.4172723    0.0855231
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   1                 -0.3201698   -0.5428508   -0.0974888
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2933110   -0.0716461    0.6582680
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0754429   -0.2628873    0.4137732
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.1921924   -0.0481335    0.4325182
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0105791   -0.3875507    0.4087089
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0182472   -0.3716061    0.4081005
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                  0.0699282   -0.3113487    0.4512051
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0685272   -0.3024536    0.1653991
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0260983   -0.2644815    0.3166781
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.3168387   -0.2128224    0.8464999
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0829891   -0.0538924    0.2198707
3-6 months     ki1000108-IRC              INDIA                          3                    1                 -0.0252493   -0.2640266    0.2135280
3-6 months     ki1000108-IRC              INDIA                          4+                   1                  0.0857356   -0.2140372    0.3855084
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0008703   -0.0940023    0.0957428
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0214316   -0.1015352    0.1443983
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0286018   -0.1351999    0.1924035
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0528055   -0.0360683    0.1416792
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.1494356    0.0326362    0.2662349
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.1092772   -0.0078479    0.2264023
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0128853   -0.1391096    0.1648802
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    1                 -0.0015192   -0.1578106    0.1547722
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0603259   -0.2020906    0.0814388
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                  0.2398899    0.1085869    0.3711928
3-6 months     ki1114097-CONTENT          PERU                           3                    1                  0.2099788    0.0645060    0.3554515
3-6 months     ki1114097-CONTENT          PERU                           4+                   1                  0.0763033   -0.0450592    0.1976658
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0779517    0.0467961    0.1091074
3-6 months     ki1135781-COHORTS          INDIA                          3                    1                  0.0094997   -0.0671359    0.0861354
3-6 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.0657371   -0.0436839    0.1751581
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0079704   -0.0152824    0.0312232
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0298847   -0.0012110    0.0609804
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0130463   -0.0338914    0.0599840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0123939   -0.0759878    0.0511999
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0878641   -0.0094302    0.1851585
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.1480963   -0.0120230    0.3082157
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0037917   -0.0659932    0.0584098
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0021548   -0.0698463    0.0741560
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0484540   -0.0493606    0.1462686
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0594951   -0.1294694    0.0104792
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0660926   -0.1428946    0.0107095
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.1362926   -0.2201170   -0.0524682
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0431857   -0.0470488    0.1334201
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0287079   -0.1291605    0.0717447
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0020561   -0.0692976    0.0734099
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0274311   -0.1272371    0.1820993
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0135453   -0.1206236    0.1477142
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   1                  0.0269989   -0.1033030    0.1573008
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1993743   -0.0243132    0.4230619
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0177897   -0.2052563    0.1696769
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.1302969   -0.0354588    0.2960525
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0397248   -0.2638221    0.1843725
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0243501   -0.2490997    0.2003996
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0326756   -0.2500894    0.1847382
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0300760   -0.0788170    0.1389691
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0148446   -0.1419715    0.1716606
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 -0.0139275   -0.2107178    0.1828628
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0426914   -0.0204229    0.1058058
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0632284   -0.1666441    0.0401872
6-12 months    ki1000108-IRC              INDIA                          4+                   1                 -0.0654235   -0.2153379    0.0844910
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0257345   -0.0281344    0.0796033
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0503834   -0.0065234    0.1072901
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0594778   -0.0274444    0.1463999
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0339897   -0.0777544    0.0097750
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 -0.0021609   -0.0524286    0.0481068
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0047143   -0.0472808    0.0567093
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0295081   -0.1078880    0.0488718
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0253060   -0.0530206    0.1036326
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0095373   -0.0799045    0.0608298
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                 -0.0172209   -0.1006230    0.0661812
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0860576   -0.0016189    0.1737341
6-12 months    ki1114097-CONTENT          PERU                           4+                   1                  0.0537967   -0.0205216    0.1281151
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                  0.0581232    0.0374154    0.0788310
6-12 months    ki1135781-COHORTS          INDIA                          3                    1                  0.0926456    0.0433093    0.1419820
6-12 months    ki1135781-COHORTS          INDIA                          4+                   1                  0.1561829    0.0948350    0.2175307
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0275977    0.0130396    0.0421559
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0486115    0.0284230    0.0688000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0856472    0.0532226    0.1180718
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0210480   -0.0018766    0.0439727
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0403069    0.0023848    0.0782289
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0792257    0.0298017    0.1286498
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0256570   -0.0236066    0.0749206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0309833   -0.0182985    0.0802651
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0780035    0.0351338    0.1208731
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0274227   -0.0702901    0.0154446
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0091749   -0.0560074    0.0376577
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.0143759   -0.0716240    0.0428721
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0582493    0.0048837    0.1116150
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0195209   -0.0482464    0.0872882
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0380297   -0.0000138    0.0760731
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0186251   -0.0650626    0.1023128
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0053708   -0.0754256    0.0861672
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                  0.0116328   -0.0589563    0.0822220
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0407181   -0.1424035    0.0609673
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0403483   -0.1545577    0.0738612
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.0574315   -0.1243984    0.0095354
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.1480628   -0.3288124    0.0326869
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0589474   -0.2383694    0.1204745
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0626876   -0.2401804    0.1148052
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0319144   -0.0299339    0.0937628
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0548896   -0.0417105    0.1514897
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.0657467   -0.0292883    0.1607816
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0406561   -0.0002358    0.0815480
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0275706   -0.1037573    0.0486161
12-24 months   ki1000108-IRC              INDIA                          4+                   1                  0.0073868   -0.0970888    0.1118625
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0182932   -0.0129513    0.0495378
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0090017   -0.0258085    0.0438118
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.1038721    0.0206663    0.1870779
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0086684   -0.0383705    0.0210337
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0426288    0.0087827    0.0764750
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0296882   -0.0017790    0.0611553
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0799851    0.0143750    0.1455953
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0828350    0.0177718    0.1478982
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                  0.0739264    0.0122043    0.1356485
12-24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           2                    1                  0.0008184   -0.0764833    0.0781202
12-24 months   ki1114097-CONTENT          PERU                           3                    1                  0.0049745   -0.0816078    0.0915568
12-24 months   ki1114097-CONTENT          PERU                           4+                   1                  0.0447410   -0.0600604    0.1495425
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0671130    0.0549914    0.0792346
12-24 months   ki1135781-COHORTS          INDIA                          3                    1                  0.0620487    0.0318260    0.0922715
12-24 months   ki1135781-COHORTS          INDIA                          4+                   1                  0.1065549    0.0620673    0.1510426
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0117894    0.0010133    0.0225655
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0153749   -0.0035772    0.0343269
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0242040    0.0012691    0.0471389
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0068817   -0.0042776    0.0180410
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0313496    0.0131470    0.0495521
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0358843    0.0147781    0.0569905
