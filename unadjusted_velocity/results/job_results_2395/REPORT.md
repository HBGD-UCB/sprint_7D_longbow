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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            452     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            101     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3             59     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+            22     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            344     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            183     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            102     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            91     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1          12473   20026
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           5183   20026
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3           1687   20026
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           683   20026
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1111    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2            452    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3            172    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+            70    1805
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              3     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2             19     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3             50     174
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4+           102     174
0-3 months     ki0047075b-MAL-ED          INDIA                          1             73     194
0-3 months     ki0047075b-MAL-ED          INDIA                          2             68     194
0-3 months     ki0047075b-MAL-ED          INDIA                          3             31     194
0-3 months     ki0047075b-MAL-ED          INDIA                          4+            22     194
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             33      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             32      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             18      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+             4      87
0-3 months     ki1000108-IRC              INDIA                          1            171     375
0-3 months     ki1000108-IRC              INDIA                          2            154     375
0-3 months     ki1000108-IRC              INDIA                          3             33     375
0-3 months     ki1000108-IRC              INDIA                          4+            17     375
0-3 months     ki1135781-COHORTS          INDIA                          1           3049    4653
0-3 months     ki1135781-COHORTS          INDIA                          2           1351    4653
0-3 months     ki1135781-COHORTS          INDIA                          3            164    4653
0-3 months     ki1135781-COHORTS          INDIA                          4+            89    4653
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             37     174
0-3 months     ki0047075b-MAL-ED          NEPAL                          2             21     174
0-3 months     ki0047075b-MAL-ED          NEPAL                          3             17     174
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+            99     174
0-3 months     ki0047075b-MAL-ED          PERU                           1             17     260
0-3 months     ki0047075b-MAL-ED          PERU                           2             50     260
0-3 months     ki0047075b-MAL-ED          PERU                           3             60     260
0-3 months     ki0047075b-MAL-ED          PERU                           4+           133     260
0-3 months     ki1114097-CONTENT          PERU                           1              6      29
0-3 months     ki1114097-CONTENT          PERU                           2              7      29
0-3 months     ki1114097-CONTENT          PERU                           3              4      29
0-3 months     ki1114097-CONTENT          PERU                           4+            12      29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             20     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             23     215
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           159     215
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13     226
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55     226
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     226
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            95     226
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            145     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2             48     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3             27     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11     231
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            406     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2             91     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3             56     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+            21     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            328     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            177     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            100     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           7357   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           3523   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3           1187   12571
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           504   12571
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           1129    1839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2            466    1839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3            165    1839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+            79    1839
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              4     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2             19     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3             59     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4+           126     208
3-6 months     ki0047075b-MAL-ED          INDIA                          1             83     229
3-6 months     ki0047075b-MAL-ED          INDIA                          2             75     229
3-6 months     ki0047075b-MAL-ED          INDIA                          3             46     229
3-6 months     ki0047075b-MAL-ED          INDIA                          4+            25     229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            161     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             86     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            12     307
3-6 months     ki1000108-IRC              INDIA                          1            180     395
3-6 months     ki1000108-IRC              INDIA                          2            163     395
3-6 months     ki1000108-IRC              INDIA                          3             35     395
3-6 months     ki1000108-IRC              INDIA                          4+            17     395
3-6 months     ki1135781-COHORTS          INDIA                          1           3056    4710
3-6 months     ki1135781-COHORTS          INDIA                          2           1396    4710
3-6 months     ki1135781-COHORTS          INDIA                          3            173    4710
3-6 months     ki1135781-COHORTS          INDIA                          4+            85    4710
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             51     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          2             31     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          3             21     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+           130     233
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1             31     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2             97     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3            117     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+           226     471
3-6 months     ki0047075b-MAL-ED          PERU                           1             19     267
3-6 months     ki0047075b-MAL-ED          PERU                           2             49     267
3-6 months     ki0047075b-MAL-ED          PERU                           3             62     267
3-6 months     ki0047075b-MAL-ED          PERU                           4+           137     267
3-6 months     ki1114097-CONTENT          PERU                           1             44     214
3-6 months     ki1114097-CONTENT          PERU                           2             54     214
3-6 months     ki1114097-CONTENT          PERU                           3             38     214
3-6 months     ki1114097-CONTENT          PERU                           4+            78     214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             12     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             19     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           187     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             12     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             60     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           104     239
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            139     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2             44     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3             26     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+            11     220
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            386     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2             86     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3             53     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+            20     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            311     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            178     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3             97     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            90     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           5812    9830
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2           2728    9830
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3            898    9830
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+           392    9830
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           1867    3159
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2            803    3159
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3            328    3159
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+           161    3159
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              2     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2             18     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3             57     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4+           117     194
6-12 months    ki0047075b-MAL-ED          INDIA                          1             80     224
6-12 months    ki0047075b-MAL-ED          INDIA                          2             72     224
6-12 months    ki0047075b-MAL-ED          INDIA                          3             47     224
6-12 months    ki0047075b-MAL-ED          INDIA                          4+            25     224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            170     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             94     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             45     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     323
6-12 months    ki1000108-IRC              INDIA                          1            181     398
6-12 months    ki1000108-IRC              INDIA                          2            167     398
6-12 months    ki1000108-IRC              INDIA                          3             34     398
6-12 months    ki1000108-IRC              INDIA                          4+            16     398
6-12 months    ki1135781-COHORTS          INDIA                          1           2408    3815
6-12 months    ki1135781-COHORTS          INDIA                          2           1189    3815
6-12 months    ki1135781-COHORTS          INDIA                          3            141    3815
6-12 months    ki1135781-COHORTS          INDIA                          4+            77    3815
6-12 months    ki0047075b-MAL-ED          NEPAL                          1             48     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          2             31     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          3             22     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+           129     230
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1             33     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2             95     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3            116     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+           231     475
6-12 months    ki0047075b-MAL-ED          PERU                           1             18     237
6-12 months    ki0047075b-MAL-ED          PERU                           2             45     237
6-12 months    ki0047075b-MAL-ED          PERU                           3             52     237
6-12 months    ki0047075b-MAL-ED          PERU                           4+           122     237
6-12 months    ki1114097-CONTENT          PERU                           1             44     213
6-12 months    ki1114097-CONTENT          PERU                           2             53     213
6-12 months    ki1114097-CONTENT          PERU                           3             39     213
6-12 months    ki1114097-CONTENT          PERU                           4+            77     213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             21     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           180     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             54     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             56     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           102     223
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            129     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2             39     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11     206
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            321     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2             76     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3             44     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            17     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            206     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            133     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             75     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            81     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           2778    4646
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           1295    4646
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3            394    4646
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+           179    4646
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2137    3635
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2            938    3635
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3            373    3635
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+           187    3635
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2             15     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3             48     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4+           102     165
12-24 months   ki0047075b-MAL-ED          INDIA                          1             80     225
12-24 months   ki0047075b-MAL-ED          INDIA                          2             74     225
12-24 months   ki0047075b-MAL-ED          INDIA                          3             46     225
12-24 months   ki0047075b-MAL-ED          INDIA                          4+            25     225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            178     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             90     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             42     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            14     324
12-24 months   ki1000108-IRC              INDIA                          1            180     394
12-24 months   ki1000108-IRC              INDIA                          2            164     394
12-24 months   ki1000108-IRC              INDIA                          3             34     394
12-24 months   ki1000108-IRC              INDIA                          4+            16     394
12-24 months   ki1135781-COHORTS          INDIA                          1           1935    3166
12-24 months   ki1135781-COHORTS          INDIA                          2           1044    3166
12-24 months   ki1135781-COHORTS          INDIA                          3            121    3166
12-24 months   ki1135781-COHORTS          INDIA                          4+            66    3166
12-24 months   ki0047075b-MAL-ED          NEPAL                          1             46     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          2             31     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          3             22     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+           127     226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1             27     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2             74     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3             88     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+           178     367
12-24 months   ki0047075b-MAL-ED          PERU                           1             16     191
12-24 months   ki0047075b-MAL-ED          PERU                           2             30     191
12-24 months   ki0047075b-MAL-ED          PERU                           3             42     191
12-24 months   ki0047075b-MAL-ED          PERU                           4+           103     191
12-24 months   ki1114097-CONTENT          PERU                           1              7      38
12-24 months   ki1114097-CONTENT          PERU                           2             12      38
12-24 months   ki1114097-CONTENT          PERU                           3              9      38
12-24 months   ki1114097-CONTENT          PERU                           4+            10      38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             18     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           177     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             48     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             53     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            97     207


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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e429e58b-85b2-462d-9145-e68e399d336a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e429e58b-85b2-462d-9145-e68e399d336a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0309272   -0.0736127    0.0117584
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0274484   -0.0943193    0.0394225
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0120866   -0.0707002    0.0948734
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1132799   -0.1924119   -0.0341479
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0362808   -0.1015267    0.0289651
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0057556   -0.0637406    0.0522295
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0364654   -0.1451228    0.0721919
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0329005   -0.1501950    0.0843941
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0751781    0.0168770    0.1334792
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0954754   -0.0100950    0.2010458
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0870677   -0.0567585    0.2308939
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0660720    0.0187184    0.1134256
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.2897656   -0.4456493   -0.1338819
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.1305385   -0.2042017   -0.0568753
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.1395899   -0.2085450   -0.0706349
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.1432147   -0.1844532   -0.1019762
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2276660   -0.3849071   -0.0704248
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.1333257   -0.2777088    0.0110575
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0684817   -0.1927541    0.0557908
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.1015007   -0.1558693   -0.0471321
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0696271   -0.2145424    0.0752882
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0495011   -0.1164578    0.0174556
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0338245   -0.1160280    0.0483789
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0559630   -0.1155099    0.0035838
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2540056   -0.3329908   -0.1750205
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.2583088   -0.3512234   -0.1653942
0-3 months     ki1000108-IRC              INDIA                          3                    NA                -0.2092535   -0.3857284   -0.0327785
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                -0.4798070   -0.7269498   -0.2326642
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0525976   -0.0742296   -0.0309656
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0110123   -0.0539039    0.0318793
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0307651   -0.0867516    0.0252214
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0231021   -0.0901344    0.1363386
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1028523   -0.1301222   -0.0755824
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.1432459   -0.1798593   -0.1066326
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.1189675   -0.1654535   -0.0724815
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.1557059   -0.1982961   -0.1131156
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0857622   -0.0959337   -0.0755907
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0413286   -0.0564928   -0.0261644
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0319417   -0.0789448    0.0150615
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0050505   -0.0613976    0.0512967
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0639247    0.0580254    0.0698240
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0770102    0.0686778    0.0853425
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0891613    0.0745024    0.1038203
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0951178    0.0720299    0.1182057
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0668991    0.0468704    0.0869279
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.0845749    0.0532168    0.1159329
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0326524   -0.0089470    0.0742518
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0545439   -0.0148903    0.1239780
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0207897   -0.0505840    0.0090045
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0142490   -0.0627226    0.0342245
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0332824   -0.1037311    0.0371663
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0550245   -0.1337145    0.0236654
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0487294   -0.0968859   -0.0005728
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0489409   -0.0941252   -0.0037566
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0121538   -0.0802255    0.0559178
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0365787   -0.1246834    0.0515259
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0342929   -0.0975494    0.0289636
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0813177   -0.1503873   -0.0122481
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0455568   -0.1232589    0.0321453
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0017513   -0.0326111    0.0361136
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.1411060    0.0432016    0.2390103
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0550007   -0.0283783    0.1383798
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0590966   -0.0097933    0.1279866
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0126241   -0.0512581    0.0260098
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0828090   -0.1856526    0.0200346
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0600639   -0.0759839    0.1961117
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0379570   -0.1551532    0.0792393
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0076761   -0.0364619    0.0518142
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0945621   -0.2631339    0.0740098
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0768439   -0.1464518   -0.0072360
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0864201   -0.1462841   -0.0265562
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0545228   -0.1008285   -0.0082170
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0949378   -0.1607326   -0.0291431
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1274187   -0.2173253   -0.0375121
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0921747   -0.2119007    0.0275513
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0494340   -0.1790715    0.2779394
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0686707   -0.1094584   -0.0278831
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.0310690   -0.0809505    0.0188126
3-6 months     ki1000108-IRC              INDIA                          3                    NA                -0.0891806   -0.1948970    0.0165359
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0466595   -0.1872388    0.0939199
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0273723   -0.0470764   -0.0076681
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0295755   -0.0691432    0.0099921
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0218020   -0.0781260    0.0345221
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0291405   -0.1008088    0.0425279
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0026288   -0.0197613    0.0250189
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0324830   -0.0020649    0.0670310
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0728704    0.0243596    0.1213811
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0523241    0.0027668    0.1018814
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1443921   -0.2070691   -0.0817150
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1500305   -0.1874442   -0.1126167
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.1519451   -0.1929817   -0.1109085
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.1830874   -0.2094918   -0.1566830
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0475998   -0.0906160   -0.0045835
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                 0.0655201    0.0220347    0.1090055
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                 0.0525661    0.0009417    0.1041905
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0091201   -0.0468412    0.0286010
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0712123   -0.0791358   -0.0632889
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0441903   -0.0562339   -0.0321467
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0755831   -0.1094083   -0.0417579
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0523930   -0.1029125   -0.0018735
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0054713   -0.0119392    0.0009967
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0016394   -0.0103863    0.0071076
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0048726   -0.0088565    0.0186016
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0051133   -0.0255313    0.0153047
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0131761   -0.0311695    0.0048174
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0190758   -0.0429689    0.0048172
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0207855   -0.0206201    0.0621911
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0514668   -0.0160633    0.1189969
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0800924   -0.0934096   -0.0667753
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0846480   -0.1076567   -0.0616393
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0837240   -0.1117585   -0.0556895
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0662242   -0.1073926   -0.0250558
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0595115   -0.0807762   -0.0382468
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0778407   -0.0991608   -0.0565207
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0877324   -0.1131596   -0.0623053
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1163895   -0.1450116   -0.0877673
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0510278   -0.0771284   -0.0249272
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0303686   -0.0560636   -0.0046736
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0602496   -0.0919992   -0.0285000
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0504701   -0.0644575   -0.0364827
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0406111   -0.0951547    0.0139326
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0348575   -0.0751139    0.0053990
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0418684   -0.0649300   -0.0188069
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0357898   -0.0548249   -0.0167548
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0946419   -0.1612653   -0.0280186
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0229211   -0.0906464    0.0448043
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.1047348   -0.1450355   -0.0644341
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0479602   -0.0678751   -0.0280453
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1142726   -0.2100316   -0.0185136
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1249096   -0.1574315   -0.0923876
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1241663   -0.1562027   -0.0921298
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1245074   -0.1459264   -0.1030884
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1038569   -0.1316670   -0.0760468
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0891458   -0.1267563   -0.0515353
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0985301   -0.1609439   -0.0361163
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1155293   -0.1970393   -0.0340193
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0292951   -0.0463880   -0.0122021
6-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0113769   -0.0332971    0.0105433
6-12 months    ki1000108-IRC              INDIA                          3                    NA                -0.0592961   -0.1017417   -0.0168506
6-12 months    ki1000108-IRC              INDIA                          4+                   NA                -0.0568860   -0.1209470    0.0071749
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0660889   -0.0740202   -0.0581576
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0590442   -0.0792079   -0.0388805
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0483328   -0.0702349   -0.0264307
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0487745   -0.0844581   -0.0130908
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0257674   -0.0367128   -0.0148219
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0413922   -0.0559111   -0.0268733
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0346206   -0.0525795   -0.0166617
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0288757   -0.0477850   -0.0099664
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0551340   -0.0819039   -0.0283642
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0700412   -0.0882739   -0.0518085
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0517015   -0.0702037   -0.0331993
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0638091   -0.0751000   -0.0525183
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0265603   -0.0522285   -0.0008921
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0469425   -0.0718644   -0.0220206
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                -0.0028396   -0.0307838    0.0251045
6-12 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0139182   -0.0350954    0.0072589
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1027824   -0.1079861   -0.0975787
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0881263   -0.0950691   -0.0811836
6-12 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.0756684   -0.0950692   -0.0562675
6-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.0543264   -0.0789290   -0.0297238
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0805241   -0.0840953   -0.0769529
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0695541   -0.0748306   -0.0642777
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0642433   -0.0725170   -0.0559697
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0519200   -0.0651437   -0.0386964
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0426111   -0.0481060   -0.0371162
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0361977   -0.0445594   -0.0278360
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0305148   -0.0452280   -0.0158015
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0160141   -0.0350740    0.0030459
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0211438   -0.0274408   -0.0148468
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0139559   -0.0289174    0.0010056
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0153255   -0.0312647    0.0006138
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0007925   -0.0145830    0.0161681
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0166066   -0.0523599    0.0191467
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0051581   -0.0211828    0.0108665
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   NA                 0.0027640   -0.0116448    0.0171728
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0102511   -0.0188409   -0.0016613
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0086340   -0.0181534    0.0008855
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0103825   -0.0211139    0.0003489
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0114856   -0.0254669    0.0024957
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0362029   -0.0483769   -0.0240288
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0187406   -0.0329537   -0.0045276
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0340652   -0.0529790   -0.0151515
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0289278   -0.0350424   -0.0228132
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0048657   -0.0253942    0.0156629
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0070103   -0.0263981    0.0123774
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0127359   -0.0282706    0.0027988
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0091730   -0.0184877    0.0001416
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0107891   -0.0120308    0.0336091
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0203672   -0.0459597    0.0052254
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0110209   -0.0426733    0.0206315
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0172906   -0.0256920   -0.0088891
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0086182   -0.0606016    0.0433652
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0605176   -0.0761605   -0.0448747
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0347005   -0.0490665   -0.0203345
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0342170   -0.0451560   -0.0232781
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0496840   -0.0629908   -0.0363771
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0415943   -0.0607899   -0.0223986
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0402681   -0.0741596   -0.0063767
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0335336   -0.0667787   -0.0002885
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0366906   -0.0461867   -0.0271945
12-24 months   ki1000108-IRC              INDIA                          2                    NA                -0.0228219   -0.0341265   -0.0115173
12-24 months   ki1000108-IRC              INDIA                          3                    NA                -0.0457459   -0.0726528   -0.0188390
12-24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0272250   -0.0660178    0.0115677
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0100497   -0.0146187   -0.0054808
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0053805   -0.0146495    0.0038885
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0104648   -0.0203292   -0.0006004
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0207454   -0.0053915    0.0468823
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0098618   -0.0161826   -0.0035409
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0085998   -0.0166700   -0.0005296
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0035120   -0.0059301    0.0129541
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0009170   -0.0078338    0.0096678
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0333849   -0.0502144   -0.0165554
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0084131   -0.0188017    0.0019755
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0138029   -0.0245822   -0.0030237
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0167062   -0.0239806   -0.0094318
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0285446   -0.0528655   -0.0042237
12-24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0334369   -0.0475985   -0.0192752
12-24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.0227293   -0.0475833    0.0021247
12-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0110624   -0.0436738    0.0215490
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0401566   -0.0427006   -0.0376126
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.0287837   -0.0318764   -0.0256911
12-24 months   ki1135781-COHORTS          INDIA                          3                    NA                -0.0347190   -0.0444764   -0.0249615
12-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.0243273   -0.0383031   -0.0103516
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0195260   -0.0219212   -0.0171307
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0168308   -0.0199556   -0.0137060
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0197261   -0.0259546   -0.0134976
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0198258   -0.0273168   -0.0123347
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0152057   -0.0174680   -0.0129434
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0158583   -0.0193968   -0.0123197
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0099403   -0.0161610   -0.0037195
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0103910   -0.0166276   -0.0041544


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0289484   -0.0610285    0.0031317
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0252274   -0.0639359    0.0134811
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0736083    0.0383692    0.1088475
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1495227   -0.1815151   -0.1175302
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1085575   -0.1542119   -0.0629030
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0490051   -0.0875863   -0.0104238
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2620709   -0.3181499   -0.2059919
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0694201   -0.0776758   -0.0611645
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705012    0.0655483    0.0754541
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0675829    0.0526455    0.0825202
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0032881   -0.0348581    0.0414343
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0540241   -0.0839855   -0.0240627
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0630242   -0.0694797   -0.0565686
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034063   -0.0082720    0.0014593
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0254487   -0.0383717   -0.0125257
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0962345   -0.1002756   -0.0921934
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748518   -0.0776971   -0.0720064
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383693   -0.0427362   -0.0340025
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0313149   -0.0383463   -0.0242835
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0241116   -0.0366136   -0.0116097
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0358686   -0.0377969   -0.0339402
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188032   -0.0206523   -0.0169542
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0145861   -0.0164603   -0.0127119


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0034788   -0.0758545    0.0828121
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0430138   -0.0501297    0.1361573
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.0823527   -0.1722633    0.0075580
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0305252   -0.0567633    0.1178137
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0001846   -0.1269263    0.1265570
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0033803   -0.1308398    0.1376005
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0202973   -0.1003017    0.1408963
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0118896   -0.1433038    0.1670831
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                 -0.0091060   -0.0842152    0.0660031
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.1592270   -0.0131852    0.3316393
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.1501756   -0.0202783    0.3206295
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   1                  0.1465509   -0.0146954    0.3077971
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0943403   -0.1191340    0.3078146
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1591843   -0.0412363    0.3596049
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.1261653   -0.0402099    0.2925406
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0201261   -0.1395099    0.1797621
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0358026   -0.1308043    0.2024095
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                  0.0136641   -0.1430084    0.1703366
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0043032   -0.1262530    0.1176467
0-3 months     ki1000108-IRC              INDIA                          3                    1                  0.0447521   -0.1485923    0.2380965
0-3 months     ki1000108-IRC              INDIA                          4+                   1                 -0.2258014   -0.4852589    0.0336561
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0415853   -0.0064525    0.0896231
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0218325   -0.0381877    0.0818528
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0756997   -0.0395845    0.1909839
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0403937   -0.0860465    0.0052592
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 -0.0161152   -0.0700095    0.0377791
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 -0.0528536   -0.1034261   -0.0022811
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0444336    0.0261741    0.0626932
0-3 months     ki1135781-COHORTS          INDIA                          3                    1                  0.0538206    0.0057294    0.1019117
0-3 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.0807118    0.0234539    0.1379696
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0130855    0.0034834    0.0226875
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0252366    0.0100872    0.0403861
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0311931    0.0079044    0.0544818
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0176757   -0.0202064    0.0555579
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0342468   -0.0809065    0.0124129
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 -0.0123553   -0.0846365    0.0599260
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0065407   -0.0503573    0.0634387
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0124927   -0.0889826    0.0639973
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.0342348   -0.1183764    0.0499068
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0002115   -0.0662470    0.0658239
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0365755   -0.0468079    0.1199590
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0121506   -0.0882559    0.1125572
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0470248   -0.1406837    0.0466341
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0112639   -0.1114587    0.0889309
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0360442   -0.0359430    0.1080313
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0861053   -0.2147028    0.0424923
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0820093   -0.2017218    0.0377032
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   1                 -0.1537301   -0.2589815   -0.0484788
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1428728   -0.0276728    0.3134185
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0448520   -0.1110703    0.2007743
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.0904851   -0.0214299    0.2024002
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0177182   -0.1646598    0.2000961
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0081419   -0.1707439    0.1870277
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                  0.0400393   -0.1347768    0.2148554
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0324809   -0.1438907    0.0789289
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0027632   -0.1338504    0.1393768
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.1443718   -0.0934174    0.3821610
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0376018   -0.0268327    0.1020362
3-6 months     ki1000108-IRC              INDIA                          3                    1                 -0.0205098   -0.1338218    0.0928022
3-6 months     ki1000108-IRC              INDIA                          4+                   1                  0.0220113   -0.1243656    0.1683882
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0022033   -0.0464057    0.0419991
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0055703   -0.0541009    0.0652415
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 -0.0017682   -0.0760959    0.0725595
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0298542   -0.0113147    0.0710231
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0702416    0.0168130    0.1236701
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0496952   -0.0046853    0.1040758
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0056384   -0.0786329    0.0673562
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    1                 -0.0075530   -0.0824691    0.0673630
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0386953   -0.1067071    0.0293165
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                  0.1131199    0.0519531    0.1742867
3-6 months     ki1114097-CONTENT          PERU                           3                    1                  0.1001659    0.0329686    0.1673632
3-6 months     ki1114097-CONTENT          PERU                           4+                   1                  0.0384796   -0.0187329    0.0956922
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0270220    0.0126057    0.0414383
3-6 months     ki1135781-COHORTS          INDIA                          3                    1                 -0.0043708   -0.0391116    0.0303701
3-6 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.0188194   -0.0323177    0.0699564
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0038319   -0.0070349    0.0146987
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0103438   -0.0042868    0.0249745
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0003579   -0.0212300    0.0219459
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0058998   -0.0352758    0.0234763
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0339616   -0.0109327    0.0788559
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0646429   -0.0053578    0.1346436
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0045556   -0.0311403    0.0220291
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0036315   -0.0346683    0.0274052
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0138682   -0.0294005    0.0571369
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0183292   -0.0484412    0.0117828
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0282209   -0.0613680    0.0049262
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.0568780   -0.0925349   -0.0212211
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0206592   -0.0159669    0.0572854
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0092218   -0.0503226    0.0318790
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0005577   -0.0290546    0.0301700
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0057536   -0.0620372    0.0735444
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.0012573   -0.0604759    0.0579613
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   1                  0.0048212   -0.0529485    0.0625910
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0717208   -0.0232812    0.1667229
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0100929   -0.0879570    0.0677712
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.0466817   -0.0228544    0.1162179
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0106369   -0.1117679    0.0904940
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0098936   -0.1108695    0.0910822
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0102348   -0.1083600    0.0878905
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0147111   -0.0320644    0.0614866
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0053268   -0.0630024    0.0736561
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 -0.0116724   -0.0977960    0.0744512
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0179182   -0.0098786    0.0457150
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0300011   -0.0757591    0.0157569
6-12 months    ki1000108-IRC              INDIA                          4+                   1                 -0.0275910   -0.0938931    0.0387111
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0070447   -0.0146228    0.0287122
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0177561   -0.0055378    0.0410500
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0173144   -0.0192400    0.0538689
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0156248   -0.0338073    0.0025576
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 -0.0088532   -0.0298847    0.0121783
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 -0.0031083   -0.0249570    0.0187404
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0149072   -0.0472963    0.0174820
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0034325   -0.0291091    0.0359741
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0086751   -0.0377287    0.0203784
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                 -0.0203822   -0.0561587    0.0153943
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0237207   -0.0142232    0.0616645
6-12 months    ki1114097-CONTENT          PERU                           4+                   1                  0.0126421   -0.0206345    0.0459186
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                  0.0146561    0.0059797    0.0233325
6-12 months    ki1135781-COHORTS          INDIA                          3                    1                  0.0271140    0.0070274    0.0472006
6-12 months    ki1135781-COHORTS          INDIA                          4+                   1                  0.0484560    0.0233091    0.0736029
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0109700    0.0047137    0.0172262
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0162808    0.0075645    0.0249971
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0286041    0.0148660    0.0423422
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0064134   -0.0032583    0.0160851
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0120963   -0.0039377    0.0281304
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0265970    0.0069662    0.0462279
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0071879   -0.0090448    0.0234205
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0058183   -0.0113198    0.0229563
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0219363    0.0053213    0.0385513
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    2                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    2                  0.0114485   -0.0277318    0.0506287
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   2                  0.0193706   -0.0191769    0.0579182
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0016171   -0.0112049    0.0144392
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0001314   -0.0138772    0.0136145
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.0012345   -0.0176437    0.0151747
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0174622   -0.0012519    0.0361763
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0021376   -0.0203555    0.0246307
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0072751   -0.0063483    0.0208984
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.0021447   -0.0303813    0.0260920
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0078702   -0.0336141    0.0178737
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 -0.0043074   -0.0268503    0.0182356
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0311563   -0.0654452    0.0031325
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0218100   -0.0608308    0.0172108
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.0280797   -0.0523971   -0.0037624
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0518995   -0.1061855    0.0023866
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0260823   -0.0800143    0.0278496
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0255989   -0.0787208    0.0275230
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0080897   -0.0152672    0.0314467
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0094158   -0.0269944    0.0458260
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.0161504   -0.0196590    0.0519598
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0138687   -0.0008951    0.0286325
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0090553   -0.0375887    0.0194781
12-24 months   ki1000108-IRC              INDIA                          4+                   1                  0.0094656   -0.0304725    0.0494037
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0046693   -0.0056646    0.0150031
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0004151   -0.0112862    0.0104561
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0307952    0.0042619    0.0573284
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0012619   -0.0089890    0.0115129
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0133738    0.0020112    0.0247363
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0107788   -0.0000161    0.0215737
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0249718    0.0051942    0.0447494
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0195819   -0.0004036    0.0395675
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                  0.0166787   -0.0016557    0.0350130
12-24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           2                    1                 -0.0048923   -0.0330358    0.0232513
12-24 months   ki1114097-CONTENT          PERU                           3                    1                  0.0058153   -0.0289586    0.0405892
12-24 months   ki1114097-CONTENT          PERU                           4+                   1                  0.0174822   -0.0231996    0.0581640
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0113729    0.0073683    0.0153774
12-24 months   ki1135781-COHORTS          INDIA                          3                    1                  0.0054376   -0.0046460    0.0155213
12-24 months   ki1135781-COHORTS          INDIA                          4+                   1                  0.0158293    0.0016239    0.0300347
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0026952   -0.0011267    0.0065171
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0002001   -0.0068109    0.0064107
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 -0.0002998   -0.0081155    0.0075159
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0006526   -0.0047125    0.0034074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0052654   -0.0012476    0.0117784
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0048147   -0.0016781    0.0113074
