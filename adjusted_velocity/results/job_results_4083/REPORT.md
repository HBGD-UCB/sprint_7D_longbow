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
![](/tmp/28b383eb-43ed-48b7-a81e-908de7933997/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/28b383eb-43ed-48b7-a81e-908de7933997/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.5685120   3.4925752   3.6444489
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                3.5836410   3.4824934   3.6847885
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                3.5936840   3.5000161   3.6873519
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                3.4527824   3.3644946   3.5410701
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.5229131   3.3941291   3.6516971
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                3.6011804   3.4809035   3.7214573
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                3.4893650   3.2759174   3.7028126
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                3.4981858   3.2832704   3.7131012
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.7962547   3.6627994   3.9297100
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                3.9384490   3.6928833   4.1840146
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                3.8360932   3.5185353   4.1536511
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                3.7972276   3.6988385   3.8956167
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.1803412   2.9397364   3.4209460
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                3.4869166   3.3749009   3.5989324
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                3.3861092   3.2603411   3.5118772
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                3.3716367   3.2929967   3.4502768
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.3711198   3.2182056   3.5240340
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                3.4825990   3.3066972   3.6585009
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                3.5923622   3.4436784   3.7410460
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                3.4601719   3.3544064   3.5659375
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4607007   3.2036837   3.7177176
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                3.4201400   3.2741965   3.5660835
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                3.5515895   3.3897097   3.7134693
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                3.4633720   3.3452782   3.5814658
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1790069   3.0225959   3.3354179
0-3 months     ki1000108-IRC              INDIA                          2                    NA                3.1597484   2.9781523   3.3413445
0-3 months     ki1000108-IRC              INDIA                          3                    NA                3.2383679   2.8955604   3.5811754
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                2.9016292   2.5302918   3.2729667
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4605693   3.4141942   3.5069443
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.5346031   3.4436352   3.6255710
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                3.5000469   3.3805833   3.6195105
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                3.6516572   3.4124764   3.8908380
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3876443   3.3312346   3.4440541
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                3.3221268   3.2555588   3.3886948
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                3.4255213   3.3518312   3.4992114
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                3.4201666   3.3560108   3.4843224
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.4924798   3.4724290   3.5125306
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                3.6031056   3.5737577   3.6324536
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                3.6271044   3.5617836   3.6924252
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                3.7134161   3.6587415   3.7680907
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7093505   3.6967806   3.7219204
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.7348116   3.7176713   3.7519520
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                3.7347554   3.7083085   3.7612023
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                3.7351941   3.6982222   3.7721660
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6353125   3.5938904   3.6767345
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                3.6782862   3.6169126   3.7396598
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                3.5908937   3.5038149   3.6779724
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                3.5907383   3.4518113   3.7296653
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9321474   1.8714858   1.9928091
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                2.0093506   1.9261994   2.0925017
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.9883914   1.8778008   2.0989820
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                2.0510481   1.9568178   2.1452784
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.8913287   1.7950810   1.9875765
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.8983164   1.8089319   1.9877009
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                2.0026276   1.8793807   2.1258744
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                2.0050534   1.8542609   2.1558459
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9280437   1.7985866   2.0575008
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.8639201   1.7184188   2.0094214
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.9245216   1.7585405   2.0905027
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                2.0156981   1.9422194   2.0891769
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.1121498   1.9450275   2.2792721
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                1.9399660   1.7786788   2.1012533
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                2.0267057   1.8905992   2.1628123
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                1.9096509   1.8282414   1.9910604
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.5840325   1.4539360   1.7141291
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.9204221   1.7252307   2.1156135
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.7117670   1.5363856   1.8871484
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.9960072   1.9034764   2.0885381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7919058   1.4244718   2.1593398
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8031685   1.6548679   1.9514691
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8110726   1.6853847   1.9367605
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.8615490   1.7655341   1.9575638
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8065195   1.6672833   1.9457556
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.7379922   1.5500166   1.9259678
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.8326177   1.5775689   2.0876666
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                2.1233582   1.6123257   2.6343907
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8337609   1.7483925   1.9191293
3-6 months     ki1000108-IRC              INDIA                          2                    NA                1.9273547   1.8233618   2.0313476
3-6 months     ki1000108-IRC              INDIA                          3                    NA                1.8060556   1.5919504   2.0201608
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                1.9126695   1.6627004   2.1626385
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9623099   1.9202203   2.0043996
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9631281   1.8781097   2.0481466
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.9834259   1.8678241   2.0990278
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.9882424   1.8296378   2.1468470
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9559850   1.9111390   2.0008310
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                2.0077081   1.9454890   2.0699272
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                2.1240543   2.0438800   2.2042286
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                2.0587116   1.9788563   2.1385668
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7466243   1.6294476   1.8638010
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.7518811   1.6782341   1.8255280
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.7389181   1.6573528   1.8204833
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.6727278   1.6178623   1.7275932
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                1.9653335   1.8720808   2.0585862
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                2.1900098   2.0977927   2.2822269
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                2.1470453   2.0357800   2.2583106
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                2.0354803   1.9567384   2.1142222
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8347206   1.8178427   1.8515986
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                1.8923195   1.8682694   1.9163695
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                1.8481329   1.7930057   1.9032601
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                1.9330202   1.8803975   1.9856429
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9238475   1.9103002   1.9373948
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9065007   1.8876350   1.9253665
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.9452830   1.9211183   1.9694477
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                1.9178060   1.8843653   1.9512468
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8887407   1.8498037   1.9276778
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.8803619   1.8296213   1.9311026
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.9788456   1.8908388   2.0668525
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                2.0440499   1.9004780   2.1876217
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1159457   1.0856462   1.1462452
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.1013851   1.0593601   1.1434100
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.1045689   1.0618159   1.1473218
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                1.1575703   1.1043726   1.2107680
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.1624031   1.1219441   1.2028620
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                1.1140816   1.0714206   1.1567427
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                1.1049552   1.0613931   1.1485173
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                1.0410612   0.9975965   1.0845259
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.2182288   1.1552969   1.2811608
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.2613958   1.1967376   1.3260541
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                1.1894978   1.1112032   1.2677924
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                1.2202732   1.1866486   1.2538978
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.2120111   1.1347422   1.2892801
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.2199658   1.1532787   1.2866530
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.2120510   1.1683288   1.2557732
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                1.2210816   1.1806841   1.2614792
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.1372158   1.0503538   1.2240778
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.3493040   1.2562236   1.4423844
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.1187046   1.0493159   1.1880934
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                1.2060672   1.1609386   1.2511959
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0208509   0.8300661   1.2116357
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9980183   0.9325363   1.0635003
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.0066269   0.9382582   1.0749957
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.0023671   0.9541609   1.0505733
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0495978   0.9850373   1.1141583
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.0779182   0.9926306   1.1632059
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.0692735   0.9405838   1.1979631
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                1.0541374   0.9055411   1.2027337
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2411635   1.2031636   1.2791634
6-12 months    ki1000108-IRC              INDIA                          2                    NA                1.2836279   1.2345744   1.3326815
6-12 months    ki1000108-IRC              INDIA                          3                    NA                1.1942504   1.1086006   1.2799002
6-12 months    ki1000108-IRC              INDIA                          4+                   NA                1.1480895   1.0296499   1.2665291
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1627411   1.1429002   1.1825819
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.1873447   1.1377742   1.2369153
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                1.2100104   1.1572727   1.2627481
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                1.2160095   1.1305031   1.3015159
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2386380   1.2139347   1.2633414
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                1.2018595   1.1712012   1.2325179
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                1.2350301   1.2001949   1.2698653
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                1.2512060   1.2175942   1.2848179
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.1696939   1.1046162   1.2347716
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.1484306   1.1051774   1.1916837
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                1.1965706   1.1531677   1.2399734
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                1.1617957   1.1350601   1.1885314
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.2558327   1.2024521   1.3092133
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                1.2409726   1.1811393   1.3008059
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                1.3382259   1.2755850   1.4008668
6-12 months    ki1114097-CONTENT          PERU                           4+                   NA                1.3243232   1.2759120   1.3727345
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0610891   1.0492349   1.0729434
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                1.1127942   1.0976846   1.1279038
6-12 months    ki1135781-COHORTS          INDIA                          3                    NA                1.1517101   1.1186265   1.1847937
6-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                1.2084089   1.1782447   1.2385730
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0975995   1.0892474   1.1059515
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.1123581   1.1009721   1.1237442
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.1468918   1.1311735   1.1626100
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                1.1842443   1.1605742   1.2079143
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.1896962   1.1767003   1.2026920
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.2099722   1.1903357   1.2296087
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.2301390   1.1959637   1.2643142
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                1.2628644   1.2179290   1.3077999
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8316731   0.8144772   0.8488690
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8488784   0.8142725   0.8834842
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.8462593   0.8125763   0.8799424
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                0.8848085   0.8634988   0.9061183
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9038480   0.8737655   0.9339305
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8769504   0.8474635   0.9064373
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.9044651   0.8691924   0.9397379
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.9295245   0.8838410   0.9752079
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8225313   0.7935449   0.8515177
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8789361   0.8460652   0.9118070
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8313553   0.7854297   0.8772808
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.8673680   0.8485578   0.8861783
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8702307   0.8297550   0.9107064
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.9211117   0.8849889   0.9572346
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8665636   0.8273626   0.9057646
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.8558681   0.8303097   0.8814265
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9827424   0.9558066   1.0096782
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.9249113   0.8790931   0.9707296
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8892111   0.8354054   0.9430169
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.8641806   0.8406000   0.8877612
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8451127   0.6705905   1.0196348
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6970499   0.6500131   0.7440867
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7861653   0.7445208   0.8278097
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7824251   0.7500875   0.8147627
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7219773   0.6876972   0.7562574
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.7523706   0.7015442   0.8031971
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.7775783   0.6910692   0.8640874
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.7831470   0.6987710   0.8675230
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8171604   0.7901593   0.8441616
12-24 months   ki1000108-IRC              INDIA                          2                    NA                0.8607962   0.8308782   0.8907141
12-24 months   ki1000108-IRC              INDIA                          3                    NA                0.8108628   0.7471728   0.8745528
12-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.8447851   0.7702972   0.9192731
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8502578   0.8359768   0.8645389
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8672152   0.8395851   0.8948453
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.8576575   0.8259066   0.8894084
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.9516256   0.8713682   1.0318830
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8690499   0.8508300   0.8872698
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.8626757   0.8429226   0.8824288
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.9230830   0.9000815   0.9460844
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.9078031   0.8885472   0.9270589
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7646616   0.7066250   0.8226983
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8471881   0.8158096   0.8785666
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.8489041   0.8185188   0.8792894
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.8396690   0.8170802   0.8622578
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.9127358   0.8516251   0.9738464
12-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.9135542   0.8662145   0.9608939
12-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.9177103   0.8563753   0.9790453
12-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.9574768   0.8723368   1.0426168
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7954844   0.7882449   0.8027239
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.8544732   0.8462003   0.8627462
12-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.8534800   0.8326153   0.8743448
12-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.9150323   0.8896929   0.9403716
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7931008   0.7867672   0.7994343
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.8008215   0.7932769   0.8083660
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.7979559   0.7864765   0.8094353
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.8281029   0.8167401   0.8394656
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8426259   0.8360910   0.8491609
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.8487817   0.8390808   0.8584825
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.8734670   0.8563885   0.8905454
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.8772820   0.8576141   0.8969500


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0151289   -0.1032701    0.1335279
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0251719   -0.0847302    0.1350741
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.1157297   -0.2248056   -0.0066537
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0782673   -0.0979691    0.2545038
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0335481   -0.2827697    0.2156735
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.0247273   -0.2753263    0.2258717
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.1421943   -0.1372924    0.4216809
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0398386   -0.3046224    0.3842995
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0009730   -0.1648303    0.1667762
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.3065755    0.0422558    0.5708951
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.2057680   -0.0652852    0.4768212
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   1                  0.1912956   -0.0616229    0.4442140
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1114793   -0.1174137    0.3403723
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.2212424    0.0143857    0.4280991
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.0890521   -0.0873969    0.2655011
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0405607   -0.3360559    0.2549346
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0908888   -0.2128517    0.3946294
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                  0.0026713   -0.2801553    0.2854979
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0192585   -0.2587103    0.2201932
0-3 months     ki1000108-IRC              INDIA                          3                    1                  0.0593610   -0.3161372    0.4348592
0-3 months     ki1000108-IRC              INDIA                          4+                   1                 -0.2773776   -0.6799468    0.1251915
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0740339   -0.0275840    0.1756517
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0394776   -0.0882674    0.1672226
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.1910879   -0.0521619    0.4343378
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0655175   -0.1527509    0.0217159
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0378769   -0.0550797    0.1308335
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0325223   -0.0533414    0.1183860
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                  0.1106258    0.0757826    0.1454691
0-3 months     ki1135781-COHORTS          INDIA                          3                    1                  0.1346246    0.0665288    0.2027203
0-3 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.2209363    0.1631517    0.2787209
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0254612    0.0057201    0.0452022
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0254049   -0.0028005    0.0536104
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0258436   -0.0123895    0.0640767
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0429738   -0.0321870    0.1181345
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0444188   -0.1410888    0.0522512
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 -0.0445742   -0.1892844    0.1001361
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0772031   -0.0230278    0.1774340
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0562439   -0.0672627    0.1797505
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.1189006    0.0088267    0.2289745
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0069876   -0.1237900    0.1377653
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.1112988   -0.0444509    0.2670486
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   1                  0.1137247   -0.0647087    0.2921580
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0641236   -0.2587105    0.1304633
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0035221   -0.2139598    0.2069157
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0876545   -0.0611279    0.2364368
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.1721837   -0.4036487    0.0592813
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0854440   -0.3010888    0.1302008
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   1                 -0.2024989   -0.3881486   -0.0168492
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.3363896    0.1021411    0.5706381
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1277344   -0.0906782    0.3461471
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.4119747    0.2526178    0.5713316
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0112627   -0.3847471    0.4072725
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0191668   -0.3690861    0.4074198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                  0.0696432   -0.3100678    0.4493542
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0685272   -0.3024536    0.1653991
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0260983   -0.2644815    0.3166781
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.3168387   -0.2128224    0.8464999
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0935938   -0.0406393    0.2278269
3-6 months     ki1000108-IRC              INDIA                          3                    1                 -0.0277053   -0.2584041    0.2029935
3-6 months     ki1000108-IRC              INDIA                          4+                   1                  0.0789086   -0.1864453    0.3442625
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0008182   -0.0940361    0.0956725
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0211160   -0.1019083    0.1441403
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0259325   -0.1381655    0.1900304
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0517231   -0.0247869    0.1282330
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.1680693    0.0765731    0.2595656
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.1027266    0.0112922    0.1941610
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0052568   -0.1330157    0.1435293
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    1                 -0.0077062   -0.1503224    0.1349100
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0738965   -0.2030410    0.0552479
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                  0.2246763    0.0936047    0.3557479
3-6 months     ki1114097-CONTENT          PERU                           3                    1                  0.1817118    0.0367502    0.3266733
3-6 months     ki1114097-CONTENT          PERU                           4+                   1                  0.0701468   -0.0518153    0.1921089
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0575988    0.0285453    0.0866523
3-6 months     ki1135781-COHORTS          INDIA                          3                    1                  0.0134123   -0.0440347    0.0708592
3-6 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.0982995    0.0432478    0.1533512
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0173468   -0.0402400    0.0055464
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0214355   -0.0055339    0.0484048
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 -0.0060415   -0.0425174    0.0304345
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0083788   -0.0709667    0.0542091
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0901049   -0.0056556    0.1858655
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.1553091    0.0062940    0.3043243
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0145606   -0.0646918    0.0355706
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0113768   -0.0611789    0.0384252
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0416246   -0.0180427    0.1012918
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0483215   -0.1040543    0.0074114
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0574479   -0.1127892   -0.0021065
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.1213419   -0.1786738   -0.0640100
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0431670   -0.0470600    0.1333939
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0287310   -0.1291820    0.0717200
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0020444   -0.0693063    0.0733950
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0079547   -0.0925602    0.1084696
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0000399   -0.0873699    0.0874497
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   1                  0.0090705   -0.0770997    0.0952407
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2120881    0.0852521    0.3389242
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0185112   -0.1280104    0.0909880
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.0688514   -0.0257477    0.1634505
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0228326   -0.2248255    0.1791603
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0142240   -0.2151419    0.1866939
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0184838   -0.2143578    0.1773901
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0283204   -0.0781598    0.1348007
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0196757   -0.1244098    0.1637612
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.0045396   -0.1572021    0.1662813
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0424644   -0.0190626    0.1039915
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0469131   -0.1402513    0.0464251
6-12 months    ki1000108-IRC              INDIA                          4+                   1                 -0.0930740   -0.2179543    0.0318062
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0246036   -0.0286708    0.0778781
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0472693   -0.0089930    0.1035316
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0532684   -0.0345215    0.1410583
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0367785   -0.0760323    0.0024753
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 -0.0036080   -0.0462757    0.0390598
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0125680   -0.0290727    0.0542086
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0212633   -0.0993407    0.0568141
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0268767   -0.0512978    0.1050512
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0078981   -0.0781757    0.0623794
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                 -0.0148601   -0.0946957    0.0649755
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0823932   -0.0000827    0.1648692
6-12 months    ki1114097-CONTENT          PERU                           4+                   1                  0.0684905   -0.0035693    0.1405504
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                  0.0517051    0.0327103    0.0706999
6-12 months    ki1135781-COHORTS          INDIA                          3                    1                  0.0906210    0.0555812    0.1256608
6-12 months    ki1135781-COHORTS          INDIA                          4+                   1                  0.1473198    0.1150199    0.1796196
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0147587    0.0010635    0.0284538
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0492923    0.0322793    0.0663054
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0866448    0.0613804    0.1119092
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0202760   -0.0024759    0.0430279
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0404428    0.0030338    0.0778518
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0731683    0.0269645    0.1193720
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0172053   -0.0199984    0.0544089
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0145863   -0.0221351    0.0513076
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0531355    0.0269183    0.0793526
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0268976   -0.0687561    0.0149608
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0006171   -0.0455652    0.0467995
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0256765   -0.0288138    0.0801668
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0564048    0.0125385    0.1002711
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0088240   -0.0454761    0.0631241
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0448367    0.0102922    0.0793813
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0508810   -0.0029207    0.1046828
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0036671   -0.0593242    0.0519899
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 -0.0143626   -0.0614499    0.0327247
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0578311   -0.1102312   -0.0054309
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0935313   -0.1524416   -0.0346210
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.1185618   -0.1532617   -0.0838620
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.1480628   -0.3288124    0.0326869
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0589474   -0.2383694    0.1204745
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0626876   -0.2401804    0.1148052
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0303934   -0.0308254    0.0916121
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0556010   -0.0375034    0.1487055
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.0611697   -0.0296905    0.1520299
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0436357    0.0033364    0.0839351
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0062976   -0.0754806    0.0628853
12-24 months   ki1000108-IRC              INDIA                          4+                   1                  0.0276247   -0.0518948    0.1071443
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0169574   -0.0140859    0.0480007
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0073997   -0.0273916    0.0421910
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.1013678    0.0199237    0.1828119
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0063742   -0.0332383    0.0204899
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0540330    0.0246840    0.0833821
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0387532    0.0122428    0.0652635
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0825264    0.0165549    0.1484979
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0842425    0.0187244    0.1497606
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                  0.0750073    0.0127167    0.1372979
12-24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           2                    1                  0.0008184   -0.0764833    0.0781202
12-24 months   ki1114097-CONTENT          PERU                           3                    1                  0.0049745   -0.0816078    0.0915568
12-24 months   ki1114097-CONTENT          PERU                           4+                   1                  0.0447410   -0.0600604    0.1495425
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0589889    0.0481786    0.0697991
12-24 months   ki1135781-COHORTS          INDIA                          3                    1                  0.0579957    0.0360013    0.0799901
12-24 months   ki1135781-COHORTS          INDIA                          4+                   1                  0.1195479    0.0932368    0.1458590
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0077207   -0.0014609    0.0169023
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0048551   -0.0078065    0.0175168
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0350021    0.0221871    0.0478170
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0061557   -0.0049863    0.0172978
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0308410    0.0129557    0.0487264
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0346561    0.0143707    0.0549416
