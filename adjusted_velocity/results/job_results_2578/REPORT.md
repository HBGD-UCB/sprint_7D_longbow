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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nchldlt5
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
* delta_W_nchldlt5
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



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```




# Results Detail

## Results Plots
![](/tmp/7eb2457b-a187-4547-9b04-d14bcce3b9c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7eb2457b-a187-4547-9b04-d14bcce3b9c5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.5537147   3.4730086   3.6344208
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                3.6088801   3.4897518   3.7280084
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                3.6549637   3.5308432   3.7790843
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                3.3584420   3.2544677   3.4624164
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.5339169   3.4074982   3.6603355
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                3.6095914   3.4923833   3.7267994
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                3.5514591   3.3370923   3.7658259
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                3.5827554   3.3684968   3.7970140
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.1165014   3.0416566   3.1913463
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                3.0115207   2.9291459   3.0938955
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                2.9745359   2.8875413   3.0615305
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                3.5940298   3.5120175   3.6760421
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.9381076   3.7352566   4.1409586
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                3.7035348   3.5872415   3.8198281
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                3.5852259   3.4586742   3.7117776
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                3.4252167   3.3458450   3.5045885
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                4.4638649   4.3224061   4.6053237
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                4.1632674   3.9933301   4.3332047
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                4.2314240   4.0718130   4.3910351
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                3.4947542   3.3875280   3.6019804
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                4.2404207   4.0921945   4.3886468
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                3.5860838   3.4546666   3.7175009
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                3.6682761   3.5176770   3.8188752
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                3.5311780   3.4179572   3.6443987
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.2415225   3.0997432   3.3833018
0-3 months     ki1000108-IRC              INDIA                          2                    NA                3.1855292   3.0195343   3.3515241
0-3 months     ki1000108-IRC              INDIA                          3                    NA                3.3741318   3.1458269   3.6024368
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                2.7200318   2.5221058   2.9179579
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4585460   3.4121566   3.5049354
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.5469822   3.4575254   3.6364390
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                3.5236414   3.4088863   3.6383965
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                3.7301861   3.5213028   3.9390693
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3894246   3.3333521   3.4454971
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                3.3233653   3.2577400   3.3889906
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                3.4289745   3.3568713   3.5010778
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                3.4237289   3.3613881   3.4860696
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4925348   3.4724504   3.5126193
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                3.6022213   3.5730097   3.6314328
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                3.6263548   3.5618031   3.6909066
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                3.7030791   3.6472281   3.7589301
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7085206   3.6958149   3.7212263
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.7346431   3.7174109   3.7518752
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                3.7316248   3.7046376   3.7586121
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                3.7325256   3.6951355   3.7699157
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6357833   3.5943431   3.6772235
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                3.6805782   3.6192125   3.7419440
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                3.5959741   3.5086362   3.6833120
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                3.6096020   3.4714263   3.7477777
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9212401   1.8609188   1.9815615
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.9669040   1.8936649   2.0401431
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.9065400   1.7986471   2.0144329
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                1.8270662   1.7597764   1.8943559
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8351327   1.7490344   1.9212310
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.8192207   1.7425546   1.8958869
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.8831432   1.7801609   1.9861254
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                1.7362209   1.6163477   1.8560941
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.2925494   2.2361853   2.3489134
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                2.2555276   2.2092089   2.3018462
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                2.3568835   2.3103432   2.4034238
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                2.1386507   2.0819213   2.1953800
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.8971930   1.7973256   1.9970604
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                1.8924139   1.7577688   2.0270589
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.9903919   1.8744788   2.1063050
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                1.9019036   1.8242364   1.9795708
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6307618   0.5775362   0.6839873
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.4723634   1.3986955   1.5460312
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.2398621   1.1609775   1.3187467
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.9753246   1.8892317   2.0614176
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                2.2407836   1.9714886   2.5100786
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8774637   1.7353715   2.0195558
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8688894   1.7473660   1.9904128
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.8935619   1.7995032   1.9876206
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8062825   1.6671167   1.9454482
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.7380440   1.5501612   1.9259268
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.8332143   1.5781056   2.0883230
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                2.1237847   1.6126972   2.6348722
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8164453   1.7357000   1.8971906
3-6 months     ki1000108-IRC              INDIA                          2                    NA                1.9034049   1.8078533   1.9989564
3-6 months     ki1000108-IRC              INDIA                          3                    NA                1.6541413   1.5405967   1.7676860
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                1.9060888   1.7869352   2.0252424
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9635723   1.9216152   2.0055295
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9632846   1.8789991   2.0475701
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.9782545   1.8630581   2.0934508
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.9770654   1.8220544   2.1320764
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9574260   1.9140093   2.0008427
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                2.0065215   1.9465430   2.0665001
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                2.1070178   2.0329048   2.1811309
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                2.0545985   1.9785656   2.1306315
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7249933   1.5958815   1.8541052
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.7460065   1.6686719   1.8233412
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.7279509   1.6426535   1.8132484
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.6711001   1.6156222   1.7265780
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                1.9596419   1.8663482   2.0529356
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                2.1910373   2.0990071   2.2830675
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                2.1537027   2.0419313   2.2654741
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                2.0350773   1.9561396   2.1140149
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8338204   1.8169366   1.8507042
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                1.8917823   1.8676891   1.9158756
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                1.8409611   1.7854981   1.8964241
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                1.9346298   1.8814089   1.9878507
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9228221   1.9092318   1.9364124
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9064969   1.8874082   1.9255856
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.9454189   1.9205804   1.9702573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                1.9147300   1.8799487   1.9495113
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8880999   1.8491575   1.9270423
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.8783995   1.8276220   1.9291769
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.9748774   1.8867602   2.0629945
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                2.0263397   1.8856016   2.1670777
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1126297   1.0828675   1.1423918
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.0860298   1.0501861   1.1218734
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.0725344   1.0371646   1.1079043
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                1.1531788   1.1210308   1.1853268
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1615704   1.1189784   1.2041625
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                1.0988787   1.0554001   1.1423573
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                1.0796726   1.0337413   1.1256040
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                0.9625745   0.9173845   1.0077644
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.2476235   1.2199787   1.2752682
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.3077152   1.2874033   1.3280271
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                0.9913789   0.9700137   1.0127441
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                1.2060096   1.1809255   1.2310938
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1312107   1.0460007   1.2164207
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.1937924   1.1128560   1.2747288
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.1856980   1.1360318   1.2353643
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                1.2106107   1.1677707   1.2534506
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.3309747   1.2977156   1.3642338
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.4965247   1.4598738   1.5331755
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.2340989   1.2031688   1.2650289
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.2008151   1.1598031   1.2418270
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0244686   0.8592286   1.1897086
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9964764   0.9378294   1.0551235
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.0070179   0.9449909   1.0690449
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.0032559   0.9575418   1.0489700
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0530091   0.9883537   1.1176644
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.0798429   0.9936944   1.1659914
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.0651457   0.9291597   1.2011316
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                1.0378717   0.8607294   1.2150139
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2486795   1.2143486   1.2830103
6-12 months    ki1000108-IRC              INDIA                          2                    NA                1.2934827   1.2477444   1.3392211
6-12 months    ki1000108-IRC              INDIA                          3                    NA                1.2433676   1.1835082   1.3032270
6-12 months    ki1000108-IRC              INDIA                          4+                   NA                1.5443950   1.4989040   1.5898861
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1642090   1.1443715   1.1840464
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.2101949   1.1614338   1.2589561
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.2587111   1.2080521   1.3093702
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.3538835   1.2783600   1.4294070
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2386330   1.2138042   1.2634619
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                1.2023769   1.1713674   1.2333863
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                1.2357036   1.2002175   1.2711896
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                1.2500854   1.2156244   1.2845463
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2274875   1.1667437   1.2882314
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.1713112   1.1288292   1.2137933
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.2198577   1.1775557   1.2621597
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.1697102   1.1430429   1.1963774
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.2568147   1.2036300   1.3099994
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                1.2402952   1.1805876   1.3000028
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                1.3383243   1.2758375   1.4008112
6-12 months    ki1114097-CONTENT          PERU                           4+                   NA                1.3241389   1.2758858   1.3723919
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0602470   1.0483716   1.0721224
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                1.1115227   1.0963646   1.1266809
6-12 months    ki1135781-COHORTS          INDIA                          3                    NA                1.1585148   1.1257958   1.1912338
6-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                1.1975940   1.1671210   1.2280670
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0978136   1.0894515   1.1061757
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.1122983   1.1006165   1.1239801
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.1446140   1.1292966   1.1599313
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                1.1807265   1.1572618   1.2041912
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.1897442   1.1767164   1.2027721
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.2097746   1.1902490   1.2293001
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.2308089   1.1967369   1.2648810
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                1.2624767   1.2176065   1.3073470
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8362694   0.8194314   0.8531075
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8710764   0.8405218   0.9016311
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8753569   0.8459885   0.9047252
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.9753042   0.9601446   0.9904637
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.4256404   1.3862853   1.4649955
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.2118523   1.1675237   1.2561809
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   NA                1.0721392   1.0335732   1.1107051
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9059708   0.8774079   0.9345337
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8776193   0.8492197   0.9060189
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9067776   0.8745533   0.9390019
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.9292180   0.8908573   0.9675788
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7537865   0.7395377   0.7680354
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.9904740   0.9749377   1.0060102
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.7878066   0.7728557   0.8027576
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.8731978   0.8583974   0.8879982
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8553309   0.8247394   0.8859224
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8741756   0.8395238   0.9088273
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8490500   0.8126226   0.8854773
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.8509833   0.8260890   0.8758777
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8422223   0.8228179   0.8616267
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.7962816   0.7687325   0.8238307
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8152907   0.7812875   0.8492938
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.8615621   0.8388707   0.8842536
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0155219   0.8922673   1.1387765
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7270721   0.6842818   0.7698625
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8120118   0.7733712   0.8506524
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7925399   0.7613258   0.8237539
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7240340   0.6905529   0.7575151
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.7464498   0.6988119   0.7940876
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.7858206   0.7139478   0.8576934
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.7732553   0.7038363   0.8426743
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8141505   0.7902253   0.8380756
12-24 months   ki1000108-IRC              INDIA                          2                    NA                0.8623117   0.8364735   0.8881498
12-24 months   ki1000108-IRC              INDIA                          3                    NA                0.7734686   0.7389998   0.8079375
12-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.8118741   0.7755529   0.8481953
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8498351   0.8355249   0.8641454
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8680873   0.8403427   0.8958319
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8586764   0.8269462   0.8904066
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.9532539   0.8713841   1.0351237
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8700961   0.8528945   0.8872978
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.8662183   0.8480720   0.8843647
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.9117815   0.8904431   0.9331199
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.8962844   0.8779335   0.9146353
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7707361   0.7180599   0.8234122
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8513447   0.8241091   0.8785803
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.8440883   0.8157417   0.8724349
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.8392408   0.8177902   0.8606914
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.9127358   0.8516251   0.9738464
12-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.9135542   0.8662145   0.9608939
12-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.9177103   0.8563753   0.9790453
12-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.9574768   0.8723368   1.0426168
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7943568   0.7871616   0.8015520
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.8531517   0.8449053   0.8613980
12-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.8499737   0.8286934   0.8712539
12-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.9114911   0.8855047   0.9374775
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7936032   0.7871807   0.8000257
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.8003134   0.7926677   0.8079590
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.7974936   0.7858711   0.8091162
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.8247840   0.8141518   0.8354163
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8426663   0.8361634   0.8491693
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.8484486   0.8389291   0.8579680
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.8727136   0.8556283   0.8897989
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.8765477   0.8568751   0.8962203


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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069339   1.1001844   1.1136835
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2031603   1.1927643   1.2135564
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966441   0.7913288   0.8019594
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8492263   0.8437928   0.8546597


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0551654   -0.0886321    0.1989628
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.1012490   -0.0467135    0.2492115
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.1952727   -0.3266539   -0.0638914
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0756745   -0.0944441    0.2457930
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0175423   -0.2305597    0.2656442
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0488385   -0.1987580    0.2964351
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1049807   -0.2132334    0.0032720
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1419655   -0.2527104   -0.0312206
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.4775283    0.3534194    0.6016372
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.2345728   -0.4685026   -0.0006431
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.3528817   -0.5910439   -0.1147195
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   1                 -0.5128909   -0.7318563   -0.2939254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.3005975   -0.5215592   -0.0796358
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.2324409   -0.4452224   -0.0196593
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.9691107   -1.1436252   -0.7945962
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.6543369   -0.8532763   -0.4553975
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.5721446   -0.7842401   -0.3600491
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.7092427   -0.8962436   -0.5222418
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0559933   -0.2716669    0.1596804
0-3 months     ki1000108-IRC              INDIA                          3                    1                  0.1326094   -0.1343877    0.3996065
0-3 months     ki1000108-IRC              INDIA                          4+                   1                 -0.5214906   -0.7622599   -0.2807214
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0884362   -0.0123034    0.1891757
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0650954   -0.0586520    0.1888428
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.2716401    0.0576879    0.4855923
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0660593   -0.1523546    0.0202360
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0395499   -0.0519544    0.1310543
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0343043   -0.0500077    0.1186162
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                  0.1096864    0.0749550    0.1444178
0-3 months     ki1135781-COHORTS          INDIA                          3                    1                  0.1338200    0.0664455    0.2011945
0-3 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.2105443    0.1516286    0.2694599
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0261225    0.0062770    0.0459679
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0231042   -0.0055656    0.0517741
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0240050   -0.0146060    0.0626160
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0447949   -0.0303107    0.1199006
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0398092   -0.1367274    0.0571090
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 -0.0261813   -0.1702034    0.1178408
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0456639   -0.0491947    0.1405224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0147002   -0.1383255    0.1089252
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.0941740   -0.1846794   -0.0036685
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0159119   -0.1230474    0.0912236
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0480105   -0.0785803    0.1746013
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.0989118   -0.2397216    0.0418979
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0370218   -0.1049014    0.0308578
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0643341   -0.0047862    0.1334544
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                 -0.1538987   -0.2376841   -0.0701133
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0047791   -0.1711869    0.1616287
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0931989   -0.0595478    0.2459457
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   1                  0.0047106   -0.1208632    0.1302844
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.8416016    0.7553177    0.9278855
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.6091003    0.5156725    0.7025281
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  1.3445629    1.2490907    1.4400351
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.3633199   -0.6670098   -0.0596300
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.3718942   -0.6672576   -0.0765308
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.3472217   -0.6321093   -0.0623341
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0682385   -0.3019730    0.1654961
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0269319   -0.2636394    0.3175032
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.3175022   -0.2121751    0.8471796
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0869595   -0.0381241    0.2120431
3-6 months     ki1000108-IRC              INDIA                          3                    1                 -0.1623040   -0.3018774   -0.0227306
3-6 months     ki1000108-IRC              INDIA                          4+                   1                  0.0896435   -0.0540553    0.2333423
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0002877   -0.0941709    0.0935954
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0146822   -0.1077682    0.1371325
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0134931   -0.1468790    0.1738652
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0490955   -0.0219791    0.1201702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.1495918    0.0664743    0.2327094
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0971725    0.0121379    0.1822072
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0210132   -0.1293962    0.1714226
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0029576   -0.1516136    0.1575289
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0538932   -0.1942245    0.0864380
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                  0.2313954    0.1005871    0.3622037
3-6 months     ki1114097-CONTENT          PERU                           3                    1                  0.1940608    0.0484192    0.3397023
3-6 months     ki1114097-CONTENT          PERU                           4+                   1                  0.0754353   -0.0466956    0.1975662
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0579619    0.0288736    0.0870502
3-6 months     ki1135781-COHORTS          INDIA                          3                    1                  0.0071407   -0.0506322    0.0649135
3-6 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.1008094    0.0451813    0.1564375
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0163252   -0.0394213    0.0067709
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0225968   -0.0051072    0.0503007
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 -0.0080921   -0.0456740    0.0294899
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0097004   -0.0723261    0.0529254
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0867775   -0.0090646    0.1826196
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.1382398   -0.0080111    0.2844907
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0265999   -0.0717261    0.0185262
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0400953   -0.0849376    0.0047471
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0405491   -0.0019036    0.0830019
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0626917   -0.1227881   -0.0025953
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0818978   -0.1439611   -0.0198346
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.1989959   -0.2607139   -0.1372780
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0600917    0.0256369    0.0945466
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.2562446   -0.2903104   -0.2221787
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   1                 -0.0416138   -0.0787372   -0.0044904
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0625817   -0.0549325    0.1800959
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0544873   -0.0440450    0.1530197
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   1                  0.0794000   -0.0159813    0.1747812
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1655499    0.1321774    0.1989225
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0968758   -0.1265641   -0.0671876
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.1301597   -0.1630059   -0.0973134
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0279922   -0.2008886    0.1449043
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0174507   -0.1902991    0.1553977
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0212127   -0.1892171    0.1467918
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0268338   -0.0805431    0.1342108
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0121366   -0.1382019    0.1624751
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 -0.0151374   -0.2034907    0.1732158
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0448033   -0.0107723    0.1003788
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0053119   -0.0728385    0.0622148
6-12 months    ki1000108-IRC              INDIA                          4+                   1                  0.2957156    0.2400874    0.3513437
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0459860   -0.0066489    0.0986208
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0945022    0.0401079    0.1488964
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.1896746    0.1115920    0.2677571
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0362562   -0.0758569    0.0033446
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 -0.0029295   -0.0462011    0.0403421
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0114523   -0.0309443    0.0538489
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0561763   -0.1303348    0.0179822
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 -0.0076298   -0.0817185    0.0664589
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0577773   -0.1241693    0.0086146
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                 -0.0165195   -0.0961479    0.0631090
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0815096   -0.0007385    0.1637578
6-12 months    ki1114097-CONTENT          PERU                           4+                   1                  0.0673242   -0.0044443    0.1390926
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                  0.0512757    0.0322450    0.0703064
6-12 months    ki1135781-COHORTS          INDIA                          3                    1                  0.0982678    0.0635761    0.1329595
6-12 months    ki1135781-COHORTS          INDIA                          4+                   1                  0.1373470    0.1047495    0.1699444
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0144847    0.0005031    0.0284664
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0468004    0.0302257    0.0633751
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0829129    0.0578749    0.1079510
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0200303   -0.0026308    0.0426914
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0410647    0.0038013    0.0783281
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0727325    0.0265966    0.1188684
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0348070    0.0013869    0.0682271
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0390874    0.0067840    0.0713909
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.1390347    0.1175944    0.1604751
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    2                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    2                 -0.2137881   -0.2752303   -0.1523460
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   2                 -0.3535012   -0.4096873   -0.2973152
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0283514   -0.0684030    0.0117001
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0008068   -0.0420697    0.0436834
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0232472   -0.0243718    0.0708663
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.2366874    0.2149854    0.2583894
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0340201    0.0134741    0.0545661
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.1194112    0.0991024    0.1397200
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0188446   -0.0271757    0.0648649
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0062810   -0.0536040    0.0410420
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 -0.0043476   -0.0435014    0.0348062
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0459407   -0.0778398   -0.0140415
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0269316   -0.0637810    0.0099177
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.0193399   -0.0071562    0.0458359
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.2884497   -0.4184663   -0.1584332
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.2035101   -0.3324838   -0.0745363
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.2229820   -0.3495160   -0.0964480
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0224158   -0.0351054    0.0799369
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0617866   -0.0175123    0.1410855
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.0492213   -0.0270160    0.1254586
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0481612    0.0138316    0.0824908
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0406819   -0.0812859   -0.0000778
12-24 months   ki1000108-IRC              INDIA                          4+                   1                 -0.0022764   -0.0448756    0.0403229
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0182521   -0.0129557    0.0494600
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0088412   -0.0259622    0.0436447
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.1034188    0.0203132    0.1865243
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0038778   -0.0278909    0.0201352
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0416854    0.0152808    0.0680899
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0261883    0.0022221    0.0501544
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0806086    0.0215437    0.1396735
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0733522    0.0137661    0.1329383
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                  0.0685047    0.0119186    0.1250908
12-24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           2                    1                  0.0008184   -0.0764833    0.0781202
12-24 months   ki1114097-CONTENT          PERU                           3                    1                  0.0049745   -0.0816078    0.0915568
12-24 months   ki1114097-CONTENT          PERU                           4+                   1                  0.0447410   -0.0600604    0.1495425
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0587948    0.0480503    0.0695394
12-24 months   ki1135781-COHORTS          INDIA                          3                    1                  0.0556169    0.0332580    0.0779757
12-24 months   ki1135781-COHORTS          INDIA                          4+                   1                  0.1171343    0.0902310    0.1440375
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0067102   -0.0026186    0.0160390
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0038905   -0.0089578    0.0167387
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0311809    0.0189425    0.0434193
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0057822   -0.0051711    0.0167355
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0300473    0.0121814    0.0479132
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0338814    0.0135904    0.0541724
