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

**Outcome Variable:** y_rate_haz

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
![](/tmp/595e6e40-9834-4d7a-86dc-22db83406692/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/595e6e40-9834-4d7a-86dc-22db83406692/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0342121   -0.0747307    0.0063064
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0341520   -0.0892641    0.0209601
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0052984   -0.0631068    0.0525099
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2049548   -0.2483919   -0.1615177
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0838929   -0.1459616   -0.0218243
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0500442   -0.1060406    0.0059522
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.1582462   -0.2603022   -0.0561903
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.2136008   -0.3170597   -0.1101419
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.2192185   -0.2516908   -0.1867461
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.2985844   -0.3316203   -0.2655486
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.2840721   -0.3205423   -0.2476019
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0256979   -0.0635745    0.0121787
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.2771435   -0.4205423   -0.1337447
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.1292892   -0.1979590   -0.0606194
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.1397319   -0.2046745   -0.0747894
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.1442067   -0.1842017   -0.1042118
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.5718986    0.5242720    0.6195251
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.4623476    0.3976753    0.5270198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.4934281    0.4352227    0.5516336
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0666186   -0.1184973   -0.0147399
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3902815    0.3146437    0.4659192
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0563586   -0.0013412    0.1140584
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0391892   -0.0341844    0.1125628
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0144602   -0.0704039    0.0414836
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2202036   -0.2925291   -0.1478780
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.2420017   -0.3275841   -0.1564193
0-3 months     ki1000108-IRC              INDIA                          3                    NA                -0.1222838   -0.2452596    0.0006920
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                -0.5649364   -0.6704840   -0.4593887
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0492851   -0.0701200   -0.0284503
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0156820   -0.0510347    0.0196706
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0296626   -0.0730615    0.0137363
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0061855   -0.0761482    0.0885193
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0870328   -0.1130767   -0.0609888
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.1077311   -0.1399535   -0.0755088
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0627735   -0.1008104   -0.0247367
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0808088   -0.1127220   -0.0488956
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0861844   -0.0960867   -0.0762821
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0418093   -0.0564401   -0.0271785
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0348275   -0.0677084   -0.0019466
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                 0.0030585   -0.0279461    0.0340631
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0664972    0.0603330    0.0726614
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0766693    0.0682994    0.0850392
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0745639    0.0611233    0.0880046
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0778305    0.0590661    0.0965949
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0667513    0.0467858    0.0867168
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.0859416    0.0551086    0.1167746
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0364940   -0.0035604    0.0765485
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0578894   -0.0061146    0.1218934
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0247158   -0.0529848    0.0035532
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0013161   -0.0417970    0.0391647
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0144793   -0.0731961    0.0442374
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0305781   -0.0881225    0.0269663
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0544714   -0.0937420   -0.0152008
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0626092   -0.0987284   -0.0264899
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0217056   -0.0701487    0.0267376
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0690218   -0.1289645   -0.0090791
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1457705    0.1179799    0.1735610
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0560706    0.0346376    0.0775037
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.1661059    0.1433771    0.1888346
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0774095    0.0494744    0.1053446
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0871588   -0.1343649   -0.0399526
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0619491   -0.1242054    0.0003071
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0078872   -0.0626916    0.0469173
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0349201   -0.0711579    0.0013177
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.5929966   -0.6192031   -0.5667902
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.2393356   -0.2751363   -0.2035348
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.3235238   -0.3600805   -0.2869672
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0033530   -0.0440957    0.0373896
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0497772   -0.0931552    0.1927095
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0523318   -0.1204274    0.0157638
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0677688   -0.1267825   -0.0087551
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0443731   -0.0901828    0.0014367
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0956626   -0.1611388   -0.0301865
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1280926   -0.2172552   -0.0389299
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0883425   -0.2075129    0.0308278
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0486864   -0.1805943    0.2779672
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0776726   -0.1141979   -0.0411474
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.0376824   -0.0808468    0.0054820
3-6 months     ki1000108-IRC              INDIA                          3                    NA                -0.1542275   -0.2030241   -0.1054310
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0075527   -0.0561440    0.0410386
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0269071   -0.0458100   -0.0080041
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0293850   -0.0622994    0.0035295
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0206313   -0.0666136    0.0253511
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0239702   -0.0829280    0.0349877
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0023044   -0.0176626    0.0222713
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0286124    0.0010351    0.0561897
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0726987    0.0400606    0.1053368
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0441899    0.0100268    0.0783530
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1597379   -0.2148773   -0.1045985
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1521948   -0.1871465   -0.1172431
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.1573213   -0.1963416   -0.1183010
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.1841459   -0.2100336   -0.1582581
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0430002   -0.0855077   -0.0004927
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                 0.0613220    0.0184973    0.1041467
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                 0.0434019   -0.0065457    0.0933496
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0090642   -0.0466369    0.0285085
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0708051   -0.0785930   -0.0630172
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0525531   -0.0637884   -0.0413178
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0786873   -0.1050463   -0.0523284
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0384335   -0.0630789   -0.0137882
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0009923   -0.0073543    0.0053697
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0101686   -0.0190282   -0.0013089
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0035930   -0.0080261    0.0152121
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0082712   -0.0235868    0.0070445
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0129023   -0.0308195    0.0050150
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0185675   -0.0422338    0.0050988
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0216805   -0.0183812    0.0617421
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0437529   -0.0174282    0.1049339
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0804524   -0.0930156   -0.0678893
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0953502   -0.1121043   -0.0785960
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.1011668   -0.1186691   -0.0836645
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0737709   -0.0897819   -0.0577599
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0628041   -0.0803437   -0.0452645
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0794648   -0.0967072   -0.0622225
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0947698   -0.1126760   -0.0768637
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1392162   -0.1566805   -0.1217520
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0438166   -0.0549971   -0.0326361
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0072426   -0.0151304    0.0006451
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.1183539   -0.1266591   -0.1100488
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0556308   -0.0660307   -0.0452310
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0348952   -0.0734670    0.0036767
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0334005   -0.0678654    0.0010644
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0398100   -0.0605557   -0.0190642
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0348444   -0.0531938   -0.0164950
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1441445    0.1252265    0.1630625
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.1993430    0.1775001    0.2211859
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0197990    0.0036631    0.0359348
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0431531   -0.0620184   -0.0242878
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1165625   -0.2114615   -0.0216634
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1255473   -0.1577780   -0.0933166
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1232183   -0.1549234   -0.0915133
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1244450   -0.1458611   -0.1030290
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1025341   -0.1296592   -0.0754091
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0944709   -0.1303694   -0.0585724
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1026675   -0.1541991   -0.0511359
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1158978   -0.1734106   -0.0583851
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0234287   -0.0393824   -0.0074750
6-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0036573   -0.0246767    0.0173621
6-12 months    ki1000108-IRC              INDIA                          3                    NA                -0.0290439   -0.0582776    0.0001898
6-12 months    ki1000108-IRC              INDIA                          4+                   NA                 0.1300478    0.1074352    0.1526604
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0655975   -0.0735152   -0.0576798
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0597279   -0.0795030   -0.0399528
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0494644   -0.0710579   -0.0278710
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0523234   -0.0883408   -0.0163060
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0260064   -0.0364002   -0.0156125
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0434708   -0.0561881   -0.0307534
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0382551   -0.0528074   -0.0237027
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0283213   -0.0424566   -0.0141860
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0358704   -0.0615563   -0.0101845
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0600001   -0.0779234   -0.0420767
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0441749   -0.0622792   -0.0260707
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0614984   -0.0727218   -0.0502750
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0334344   -0.0572772   -0.0095916
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0510160   -0.0753935   -0.0266384
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                -0.0090704   -0.0352674    0.0171267
6-12 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0133840   -0.0346188    0.0078507
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1024841   -0.1074760   -0.0974922
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0899843   -0.0963276   -0.0836410
6-12 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.0741121   -0.0874953   -0.0607289
6-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.0649363   -0.0775109   -0.0523617
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0777898   -0.0813497   -0.0742299
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0731278   -0.0781510   -0.0681046
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0632797   -0.0700783   -0.0564810
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0510975   -0.0611373   -0.0410578
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0425955   -0.0480714   -0.0371196
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0364642   -0.0447832   -0.0281452
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0305173   -0.0450287   -0.0160060
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0180396   -0.0361336    0.0000544
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0207687   -0.0267369   -0.0148006
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0141597   -0.0248957   -0.0034237
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0184255   -0.0283595   -0.0084916
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0073866    0.0009605    0.0138127
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0027873   -0.0087894    0.0032149
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0450206    0.0334016    0.0566395
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   NA                 0.0160715    0.0044794    0.0276635
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0016437   -0.0094485    0.0061611
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                 0.0000014   -0.0086711    0.0086739
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0063603   -0.0027640    0.0154846
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0229176    0.0133528    0.0324824
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0665255   -0.0715017   -0.0615493
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0373340    0.0321459    0.0425222
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0581334   -0.0625596   -0.0537073
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0265114   -0.0309863   -0.0220366
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0207764   -0.0279516   -0.0136012
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0204107   -0.0304801   -0.0103412
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0257897   -0.0354541   -0.0161254
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0110932   -0.0191700   -0.0030163
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0031893   -0.0095426    0.0031640
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0503405   -0.0586847   -0.0419963
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0274833   -0.0380316   -0.0169350
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0178643   -0.0255451   -0.0101836
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0111696   -0.0588937    0.0365546
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0597432   -0.0751355   -0.0443509
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0351359   -0.0491516   -0.0211203
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0341513   -0.0449657   -0.0233370
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0482612   -0.0611740   -0.0353484
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0441705   -0.0620750   -0.0262660
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0363939   -0.0628915   -0.0098964
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0363555   -0.0622307   -0.0104804
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0375931   -0.0459043   -0.0292819
12-24 months   ki1000108-IRC              INDIA                          2                    NA                -0.0206527   -0.0301213   -0.0111841
12-24 months   ki1000108-IRC              INDIA                          3                    NA                -0.0507720   -0.0630924   -0.0384516
12-24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0476062   -0.0585375   -0.0366749
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0097275   -0.0140573   -0.0053978
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0050836   -0.0124567    0.0022894
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0111353   -0.0193069   -0.0029637
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0135516   -0.0053841    0.0324873
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0096336   -0.0155697   -0.0036976
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0077559   -0.0150451   -0.0004667
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0043174   -0.0036536    0.0122884
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0007521   -0.0064000    0.0079042
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0336905   -0.0507042   -0.0166768
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0083491   -0.0187092    0.0020109
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0137892   -0.0245026   -0.0030758
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0166936   -0.0239416   -0.0094456
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0277544   -0.0496448   -0.0058640
12-24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0317202   -0.0450396   -0.0184009
12-24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.0238034   -0.0459675   -0.0016392
12-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0132014   -0.0443643    0.0179614
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0398646   -0.0422846   -0.0374447
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.0304437   -0.0331962   -0.0276912
12-24 months   ki1135781-COHORTS          INDIA                          3                    NA                -0.0388115   -0.0458171   -0.0318060
12-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.0230628   -0.0321101   -0.0140155
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0188977   -0.0212090   -0.0165863
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0175619   -0.0202720   -0.0148518
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0246328   -0.0284819   -0.0207837
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0193659   -0.0229519   -0.0157800
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0152454   -0.0175043   -0.0129866
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0158115   -0.0193067   -0.0123163
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0102802   -0.0164251   -0.0041353
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0106935   -0.0168430   -0.0045441


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0000602   -0.0667293    0.0668497
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0289137   -0.0399451    0.0977725
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.1707427   -0.2287421   -0.1127433
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0338487   -0.0494126    0.1171101
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0743533   -0.1934422    0.0447357
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.1297078   -0.2499927   -0.0094230
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0793660   -0.1245413   -0.0341906
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0648536   -0.1118612   -0.0178461
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.1935205    0.1377185    0.2493225
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.1478542   -0.0101040    0.3058125
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.1374115   -0.0190227    0.2938457
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   1                  0.1329368   -0.0148586    0.2807321
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.1095510   -0.1903191   -0.0287829
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0784705   -0.1552622   -0.0016787
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.6385171   -0.7101618   -0.5668725
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.3339228   -0.4296950   -0.2381507
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.3510923   -0.4572796   -0.2449049
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.4047416   -0.4991538   -0.3103294
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0217982   -0.1339284    0.0903321
0-3 months     ki1000108-IRC              INDIA                          3                    1                  0.0979198   -0.0453140    0.2411535
0-3 months     ki1000108-IRC              INDIA                          4+                   1                 -0.3447328   -0.4725317   -0.2169339
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0336031   -0.0056296    0.0728358
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0196225   -0.0269416    0.0661866
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0554706   -0.0285551    0.1394964
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0206984   -0.0620835    0.0206868
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0242592   -0.0218173    0.0703357
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0062239   -0.0350716    0.0475195
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0443751    0.0268505    0.0618996
0-3 months     ki1135781-COHORTS          INDIA                          3                    1                  0.0513569    0.0170935    0.0856202
0-3 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.0892429    0.0567753    0.1217105
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0101721    0.0003613    0.0199830
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0080667   -0.0061472    0.0222806
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0113333   -0.0080555    0.0307220
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0191902   -0.0181406    0.0565211
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0302573   -0.0755727    0.0150581
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 -0.0088619   -0.0759401    0.0582162
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0233997   -0.0239686    0.0707679
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0102365   -0.0536206    0.0740935
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.0058623   -0.0688316    0.0571070
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0081377   -0.0566303    0.0403548
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0327658   -0.0250017    0.0905334
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.0145504   -0.0828331    0.0537323
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0896998   -0.1236443   -0.0557553
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0203354   -0.0143458    0.0550166
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                 -0.0683609   -0.1108875   -0.0258343
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0252096   -0.0524135    0.1028328
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.0792716    0.0068315    0.1517117
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   1                  0.0522387   -0.0072160    0.1116933
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.3536611    0.3112544    0.3960678
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.2694728    0.2253792    0.3135664
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.5896436    0.5448116    0.6344756
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.1021090   -0.2602099    0.0559919
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.1175459   -0.2721680    0.0370761
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0941502   -0.2440906    0.0557901
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0324300   -0.1426074    0.0777475
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0073201   -0.1284004    0.1430406
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.1443491   -0.0940221    0.3827202
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0399902   -0.0155273    0.0955077
3-6 months     ki1000108-IRC              INDIA                          3                    1                 -0.0765549   -0.1369128   -0.0161970
3-6 months     ki1000108-IRC              INDIA                          4+                   1                  0.0701199    0.0099260    0.1303138
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0024779   -0.0387629    0.0338070
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0062758   -0.0419101    0.0544616
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0029369   -0.0579758    0.0638496
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0263080   -0.0066404    0.0592565
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0703944    0.0329967    0.1077921
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0418855    0.0032172    0.0805538
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0075431   -0.0576795    0.0727656
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0024166   -0.0650282    0.0698614
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0244080   -0.0852035    0.0363875
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                  0.1043222    0.0439978    0.1646467
3-6 months     ki1114097-CONTENT          PERU                           3                    1                  0.0864022    0.0210631    0.1517412
3-6 months     ki1114097-CONTENT          PERU                           4+                   1                  0.0339360   -0.0227034    0.0905754
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0182520    0.0046786    0.0318254
3-6 months     ki1135781-COHORTS          INDIA                          3                    1                 -0.0078822   -0.0353143    0.0195498
3-6 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.0323716    0.0065846    0.0581586
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0091763   -0.0199527    0.0016001
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0045853   -0.0083583    0.0175288
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 -0.0072789   -0.0239762    0.0094184
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0056653   -0.0347727    0.0234422
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0345827   -0.0090426    0.0782081
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0566551   -0.0072815    0.1205918
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0148977   -0.0356613    0.0058658
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0207144   -0.0421255    0.0006968
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0066816   -0.0135494    0.0269125
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0166607   -0.0401699    0.0068484
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0319657   -0.0561859   -0.0077456
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.0764121   -0.1004681   -0.0523562
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0365739    0.0233926    0.0497552
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0745374   -0.0877735   -0.0613012
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   1                 -0.0118142   -0.0263075    0.0026791
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0014946   -0.0500606    0.0530499
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.0049148   -0.0485439    0.0387143
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   1                  0.0000507   -0.0425138    0.0426153
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0551985    0.0275102    0.0828868
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.1243455   -0.1487337   -0.0999574
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.1872976   -0.2134761   -0.1611192
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0089848   -0.1091415    0.0911718
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0066559   -0.1066416    0.0933298
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0078826   -0.1051321    0.0893670
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0080632   -0.0364491    0.0525755
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.0001333   -0.0581634    0.0578967
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 -0.0133637   -0.0765863    0.0498589
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0197714   -0.0065777    0.0461205
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0056152   -0.0387734    0.0275429
6-12 months    ki1000108-IRC              INDIA                          4+                   1                  0.1534765    0.1258267    0.1811263
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0058697   -0.0153504    0.0270897
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0161331   -0.0068239    0.0390902
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0132742   -0.0236067    0.0501550
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0174644   -0.0338563   -0.0010725
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 -0.0122487   -0.0301278    0.0056304
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 -0.0023149   -0.0198455    0.0152156
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0241296   -0.0554619    0.0072026
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 -0.0083045   -0.0397543    0.0231453
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0256280   -0.0536721    0.0024162
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                 -0.0175816   -0.0514039    0.0162408
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0243640   -0.0108652    0.0595932
6-12 months    ki1114097-CONTENT          PERU                           4+                   1                  0.0200503   -0.0116198    0.0517205
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                  0.0124998    0.0044972    0.0205024
6-12 months    ki1135781-COHORTS          INDIA                          3                    1                  0.0283720    0.0141304    0.0426136
6-12 months    ki1135781-COHORTS          INDIA                          4+                   1                  0.0375478    0.0240609    0.0510347
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0046620   -0.0013918    0.0107158
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0145102    0.0070962    0.0219241
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0266923    0.0159941    0.0373905
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0061313   -0.0034704    0.0157330
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0120782   -0.0037493    0.0279057
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0245559    0.0058835    0.0432283
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0066091   -0.0055376    0.0187558
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0023432   -0.0091245    0.0138109
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0281553    0.0194807    0.0368300
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    2                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    2                  0.0478078    0.0353658    0.0602498
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   2                  0.0188587    0.0071825    0.0305349
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0016451   -0.0100544    0.0133446
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0080040   -0.0040095    0.0200176
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0245613    0.0121983    0.0369243
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.1038596    0.0964058    0.1113134
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0083921    0.0017715    0.0150127
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0400141    0.0334583    0.0465699
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0003657   -0.0119790    0.0127105
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0050134   -0.0171297    0.0071030
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                  0.0096832   -0.0010275    0.0203940
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0471512   -0.0568809   -0.0374215
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0242940   -0.0356150   -0.0129729
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.0146750   -0.0233847   -0.0059653
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0485736   -0.0985387    0.0013914
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0239664   -0.0735136    0.0255808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0229818   -0.0717296    0.0257661
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0040907   -0.0176172    0.0257986
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0118673   -0.0175469    0.0412815
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.0119057   -0.0166101    0.0404214
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0169404    0.0046993    0.0291816
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0131789   -0.0275174    0.0011595
12-24 months   ki1000108-IRC              INDIA                          4+                   1                 -0.0100131   -0.0233785    0.0033523
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0046439   -0.0034381    0.0127259
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0014078   -0.0103208    0.0075053
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0232791    0.0040454    0.0425129
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0018777   -0.0075121    0.0112676
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0139510    0.0040318    0.0238702
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0103858    0.0010993    0.0196723
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0253414    0.0054143    0.0452684
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0199013   -0.0002056    0.0400082
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                  0.0169969   -0.0014988    0.0354926
12-24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           2                    1                 -0.0039658   -0.0289131    0.0209815
12-24 months   ki1114097-CONTENT          PERU                           3                    1                  0.0039510   -0.0261731    0.0340752
12-24 months   ki1114097-CONTENT          PERU                           4+                   1                  0.0145530   -0.0228285    0.0519345
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0094209    0.0058110    0.0130309
12-24 months   ki1135781-COHORTS          INDIA                          3                    1                  0.0010531   -0.0063332    0.0084394
12-24 months   ki1135781-COHORTS          INDIA                          4+                   1                  0.0168018    0.0074526    0.0261510
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0013358   -0.0020293    0.0047008
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0057351   -0.0100943   -0.0013760
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 -0.0004683   -0.0047075    0.0037710
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0005661   -0.0045767    0.0034446
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0049652   -0.0014723    0.0114028
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0045519   -0.0018504    0.0109542
