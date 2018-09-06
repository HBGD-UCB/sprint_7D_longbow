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
![](/tmp/0f5dee6e-1306-41a4-ba62-e3a1ff4c2a59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0f5dee6e-1306-41a4-ba62-e3a1ff4c2a59/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0316551   -0.0741332    0.0108231
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0244089   -0.0911356    0.0423177
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0067682   -0.0748067    0.0883431
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1124669   -0.1922084   -0.0327253
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0439147   -0.1062905    0.0184611
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0068832   -0.0651155    0.0513491
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0395045   -0.1446321    0.0656231
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0381127   -0.1492877    0.0730622
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0762313    0.0180664    0.1343963
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0424847   -0.0472094    0.1321787
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0893434   -0.0511861    0.2298729
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0663955    0.0190691    0.1137220
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.2847662   -0.4041055   -0.1654269
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.1218876   -0.1918367   -0.0519384
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.1281653   -0.1961232   -0.0602073
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.1409866   -0.1819073   -0.1000658
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0967419   -0.1862933   -0.0071906
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0377673   -0.1442154    0.0686808
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0337202   -0.0547502    0.1221906
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0975190   -0.1498911   -0.0451469
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0601538   -0.1936468    0.0733392
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0485963   -0.1151421    0.0179496
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0241126   -0.1050401    0.0568150
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0565329   -0.1157902    0.0027244
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2541686   -0.3318239   -0.1765132
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.2635750   -0.3552615   -0.1718885
0-3 months     ki1000108-IRC              INDIA                          3                    NA                -0.2251258   -0.3945948   -0.0556568
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                -0.4395037   -0.6252045   -0.2538030
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0523009   -0.0736602   -0.0309416
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0119067   -0.0518609    0.0280474
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0390771   -0.0876014    0.0094472
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0002347   -0.0945429    0.0950123
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0901312   -0.1144523   -0.0658101
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.1123537   -0.1407216   -0.0839858
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0773085   -0.1092796   -0.0453373
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0941619   -0.1198386   -0.0684853
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0863538   -0.0962636   -0.0764439
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0419120   -0.0565633   -0.0272607
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0333432   -0.0668461    0.0001596
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0023333   -0.0315027    0.0268360
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0666498    0.0605389    0.0727608
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0767279    0.0683797    0.0850761
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0758423    0.0626369    0.0890477
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0782791    0.0598060    0.0967523
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0667704    0.0468035    0.0867373
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.0859906    0.0551284    0.1168527
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0364200   -0.0037483    0.0765883
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0573357   -0.0067321    0.1214034
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0212377   -0.0509780    0.0085026
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0068783   -0.0538540    0.0400973
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0305984   -0.1031855    0.0419888
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0508381   -0.1218430    0.0201667
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0326708   -0.0756257    0.0102842
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0331322   -0.0744395    0.0081751
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0215817   -0.0322876    0.0754510
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0225423   -0.0404475    0.0855321
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0404788   -0.1015272    0.0205695
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0858162   -0.1536482   -0.0179842
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0642377   -0.1342175    0.0057421
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0009428   -0.0332838    0.0351693
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.1412336    0.0434073    0.2390599
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0547451   -0.0284360    0.1379261
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0587984   -0.0100667    0.1276635
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0122962   -0.0507272    0.0261348
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0890123   -0.1909129    0.0128883
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0605595   -0.0749882    0.1961072
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0377688   -0.1549015    0.0793639
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0080943   -0.0361855    0.0523741
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0933646   -0.2501480    0.0634189
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0812868   -0.1491283   -0.0134453
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0860400   -0.1457181   -0.0263620
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0532063   -0.0989111   -0.0075015
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0946435   -0.1605145   -0.0287724
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1312321   -0.2211437   -0.0413206
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0820210   -0.1985535    0.0345115
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0516483   -0.1480731    0.2513698
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0693954   -0.1103724   -0.0284184
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.0291189   -0.0788442    0.0206064
3-6 months     ki1000108-IRC              INDIA                          3                    NA                -0.0906979   -0.1925122    0.0111165
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                 0.0038566   -0.1009632    0.1086764
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0261002   -0.0456503   -0.0065500
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0284873   -0.0655418    0.0085673
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0211689   -0.0665335    0.0241957
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0306899   -0.0897046    0.0283248
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0024307   -0.0177399    0.0226014
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0289623    0.0007897    0.0571349
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0717954    0.0381941    0.1053967
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0445347    0.0091641    0.0799052
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1326693   -0.1891755   -0.0761632
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1466477   -0.1819746   -0.1113209
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.1467456   -0.1858510   -0.1076402
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.1819845   -0.2080746   -0.1558943
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0453809   -0.0898570   -0.0009047
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                 0.0622529    0.0189072    0.1055985
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                 0.0449116   -0.0071913    0.0970144
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0090279   -0.0468195    0.0287637
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0706435   -0.0784258   -0.0628613
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0521611   -0.0633604   -0.0409618
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0754019   -0.1015026   -0.0493011
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0418647   -0.0669954   -0.0167340
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0007998   -0.0071394    0.0055397
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0104193   -0.0191706   -0.0016681
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0023867   -0.0090459    0.0138194
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0153710   -0.0302292   -0.0005128
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0128639   -0.0307769    0.0050491
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0185873   -0.0422399    0.0050652
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0215426   -0.0184474    0.0615326
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0434682   -0.0173352    0.1042716
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0796639   -0.0928703   -0.0664575
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0856186   -0.1078222   -0.0634150
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0840443   -0.1112421   -0.0568465
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0683859   -0.1047040   -0.0320678
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0595727   -0.0782300   -0.0409153
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0758642   -0.0950895   -0.0566388
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0848240   -0.1051902   -0.0644579
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1179743   -0.1370263   -0.0989222
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0536468   -0.0750196   -0.0322741
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0421331   -0.0612894   -0.0229768
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0692491   -0.0937266   -0.0447715
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0517792   -0.0646004   -0.0389579
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0366182   -0.0795755    0.0063391
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0313945   -0.0670555    0.0042665
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0409502   -0.0604765   -0.0214240
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0361168   -0.0547386   -0.0174950
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0820209   -0.1387723   -0.0252694
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0241493   -0.0756658    0.0273672
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0986615   -0.1315120   -0.0658110
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0483808   -0.0680385   -0.0287230
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1144212   -0.2064876   -0.0223547
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1250455   -0.1562317   -0.0938593
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1233900   -0.1542119   -0.0925681
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1242725   -0.1452190   -0.1033260
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1049362   -0.1324763   -0.0773960
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0910885   -0.1279446   -0.0542324
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0966197   -0.1530714   -0.0401679
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1099801   -0.1757885   -0.0441717
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0280893   -0.0452434   -0.0109352
6-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0096646   -0.0317201    0.0123910
6-12 months    ki1000108-IRC              INDIA                          3                    NA                -0.0555957   -0.0977509   -0.0134406
6-12 months    ki1000108-IRC              INDIA                          4+                   NA                 0.0207293   -0.0136164    0.0550751
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0659038   -0.0738312   -0.0579764
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0591115   -0.0791592   -0.0390637
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0489296   -0.0706665   -0.0271926
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0504838   -0.0864064   -0.0145613
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0258793   -0.0364163   -0.0153422
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0427233   -0.0558435   -0.0296030
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0367804   -0.0520811   -0.0214798
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0286357   -0.0437881   -0.0134833
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0564372   -0.0832970   -0.0295773
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0680657   -0.0861656   -0.0499658
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0518670   -0.0702250   -0.0335090
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0643487   -0.0755832   -0.0531142
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0333970   -0.0574357   -0.0093583
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0510669   -0.0755366   -0.0265971
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                -0.0090436   -0.0353784    0.0172913
6-12 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0133973   -0.0347219    0.0079273
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1023289   -0.1073146   -0.0973432
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0894332   -0.0958112   -0.0830553
6-12 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.0771708   -0.0903975   -0.0639442
6-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.0589470   -0.0717605   -0.0461335
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0776468   -0.0812005   -0.0740930
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0725880   -0.0775343   -0.0676417
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0620920   -0.0686314   -0.0555526
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0460289   -0.0559947   -0.0360630
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0426392   -0.0481023   -0.0371760
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0363887   -0.0447582   -0.0280191
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0307610   -0.0453115   -0.0162104
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0177544   -0.0359651    0.0004564
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0208055   -0.0269799   -0.0146312
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0147063   -0.0289969   -0.0004158
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0173961   -0.0310111   -0.0037811
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0038810   -0.0143893    0.0066272
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0082027   -0.0163426   -0.0000628
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0062907   -0.0153760    0.0027947
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0066747   -0.0163670    0.0030176
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0022897   -0.0135762    0.0089969
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0382489   -0.0498207   -0.0266772
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0209133   -0.0335247   -0.0083019
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0385958   -0.0553962   -0.0217954
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0292989   -0.0353475   -0.0232503
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0062781   -0.0267872    0.0142311
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0092438   -0.0277390    0.0092515
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0136425   -0.0289129    0.0016278
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0088354   -0.0183118    0.0006410
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0145820    0.0057759    0.0233881
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0106135   -0.0261625    0.0049354
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0154493   -0.0335398    0.0026413
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0175113   -0.0255151   -0.0095074
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0086182   -0.0606016    0.0433652
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0605176   -0.0761605   -0.0448747
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0347005   -0.0490665   -0.0203345
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0342170   -0.0451560   -0.0232781
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0486803   -0.0618067   -0.0355539
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0421319   -0.0608921   -0.0233716
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0383297   -0.0673397   -0.0093198
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0370773   -0.0660750   -0.0080796
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0368218   -0.0463089   -0.0273347
12-24 months   ki1000108-IRC              INDIA                          2                    NA                -0.0226266   -0.0338878   -0.0113655
12-24 months   ki1000108-IRC              INDIA                          3                    NA                -0.0457880   -0.0727924   -0.0187836
12-24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0276668   -0.0658714    0.0105379
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0100009   -0.0145729   -0.0054289
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0044230   -0.0136032    0.0047572
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0106168   -0.0202546   -0.0009790
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0135741   -0.0055222    0.0326703
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0097039   -0.0155566   -0.0038512
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0076411   -0.0147725   -0.0005097
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0043708   -0.0033474    0.0120891
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0007062   -0.0061509    0.0075632
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0308347   -0.0452873   -0.0163821
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0079356   -0.0169333    0.0010622
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0148005   -0.0245397   -0.0050613
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0173540   -0.0241177   -0.0105904
12-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0285446   -0.0528655   -0.0042237
12-24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0334369   -0.0475985   -0.0192752
12-24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.0227293   -0.0475833    0.0021247
12-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0110624   -0.0436738    0.0215490
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0396183   -0.0420484   -0.0371883
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.0301761   -0.0329206   -0.0274316
12-24 months   ki1135781-COHORTS          INDIA                          3                    NA                -0.0372317   -0.0440690   -0.0303944
12-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                -0.0220889   -0.0310860   -0.0130917
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0191681   -0.0214594   -0.0168767
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0176238   -0.0202865   -0.0149611
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0248059   -0.0285488   -0.0210630
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0172606   -0.0210879   -0.0134333
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0152911   -0.0175619   -0.0130202
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0158433   -0.0193815   -0.0123050
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0104091   -0.0165270   -0.0042912
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0106812   -0.0169067   -0.0044557


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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748707   -0.0777138   -0.0720277
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383812   -0.0427453   -0.0340172
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188389   -0.0206846   -0.0169932
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0145986   -0.0164791   -0.0127182


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0072462   -0.0716794    0.0861718
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0384233   -0.0532370    0.1300836
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.0808118   -0.1712198    0.0095963
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0370315   -0.0479269    0.1219899
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0044102   -0.1164880    0.1253084
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0058020   -0.1202885    0.1318924
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0337466   -0.1397979    0.0723047
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0131121   -0.1387502    0.1649743
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                 -0.0098358   -0.0847576    0.0650861
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.1628787    0.0243849    0.3013724
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.1566010    0.0192734    0.2939285
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   1                  0.1437797    0.0176947    0.2698646
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0589746   -0.0796721    0.1976213
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1304621    0.0049699    0.2559543
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.0007771   -0.1034792    0.1019250
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0115575   -0.1375940    0.1607091
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0360412   -0.1192729    0.1913553
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                  0.0036209   -0.1419663    0.1492082
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.0094064   -0.1293921    0.1105793
0-3 months     ki1000108-IRC              INDIA                          3                    1                  0.0290427   -0.1567539    0.2148394
0-3 months     ki1000108-IRC              INDIA                          4+                   1                 -0.1853352   -0.3864834    0.0158130
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0403941   -0.0045300    0.0853183
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0132238   -0.0394040    0.0658515
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0525355   -0.0444878    0.1495589
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0222225   -0.0583085    0.0138635
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0128227   -0.0262244    0.0518698
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 -0.0040308   -0.0383275    0.0302660
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0444418    0.0269018    0.0619818
0-3 months     ki1135781-COHORTS          INDIA                          3                    1                  0.0530105    0.0181486    0.0878724
0-3 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.0840204    0.0532917    0.1147492
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0100780    0.0002873    0.0198688
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0091925   -0.0048383    0.0232232
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0116293   -0.0074746    0.0307331
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0192202   -0.0181286    0.0565690
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0303504   -0.0757615    0.0150607
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 -0.0094348   -0.0765692    0.0576997
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0143594   -0.0409692    0.0696879
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0093606   -0.0878738    0.0691525
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   1                 -0.0296004   -0.1064385    0.0472376
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0004615   -0.0596326    0.0587097
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0542524   -0.0140856    0.1225905
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0552130   -0.0208276    0.1312536
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0453374   -0.1365845    0.0459098
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0237588   -0.1166421    0.0691244
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0414216   -0.0285745    0.1114177
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0864885   -0.2148714    0.0418943
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.0824352   -0.2020603    0.0371899
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   1                 -0.1535298   -0.2585806   -0.0484789
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1495718   -0.0199945    0.3191382
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0512435   -0.1040054    0.2064924
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.0971066   -0.0139981    0.2082113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0120778   -0.1585860    0.1827415
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0073245   -0.1604105    0.1750596
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                  0.0401583   -0.1228470    0.2031635
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0365887   -0.1478564    0.0746790
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0126224   -0.1210214    0.1462663
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.1462918   -0.0640312    0.3566148
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                  0.0402765   -0.0240185    0.1045715
3-6 months     ki1000108-IRC              INDIA                          3                    1                 -0.0213025   -0.1309694    0.0883644
3-6 months     ki1000108-IRC              INDIA                          4+                   1                  0.0732520   -0.0390159    0.1855199
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0023871   -0.0440934    0.0393192
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0049313   -0.0442209    0.0540834
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 -0.0045898   -0.0666744    0.0574948
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0265316   -0.0070139    0.0600770
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0693647    0.0310430    0.1076863
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0421039    0.0022848    0.0819231
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0139784   -0.0805853    0.0526285
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    1                 -0.0140763   -0.0827957    0.0546432
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0493151   -0.1115348    0.0129046
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                  0.1076337    0.0455858    0.1696817
3-6 months     ki1114097-CONTENT          PERU                           3                    1                  0.0902925    0.0216566    0.1589283
3-6 months     ki1114097-CONTENT          PERU                           4+                   1                  0.0363530   -0.0220401    0.0947460
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0184825    0.0049522    0.0320128
3-6 months     ki1135781-COHORTS          INDIA                          3                    1                 -0.0047583   -0.0319357    0.0224191
3-6 months     ki1135781-COHORTS          INDIA                          4+                   1                  0.0287789    0.0025308    0.0550269
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0096195   -0.0203065    0.0010675
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0031866   -0.0094954    0.0158685
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 -0.0145712   -0.0309335    0.0017911
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0057234   -0.0348198    0.0233730
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0344065   -0.0091533    0.0779664
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0563321   -0.0072390    0.1199032
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0059547   -0.0316605    0.0197511
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0043804   -0.0345978    0.0258370
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0112780   -0.0273958    0.0499518
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0162915   -0.0427000    0.0101170
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0252514   -0.0524524    0.0019496
6-12 months    ki0047075b-MAL-ED          INDIA                          4+                   1                 -0.0584016   -0.0848208   -0.0319824
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0115137   -0.0161146    0.0391420
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0156022   -0.0474795    0.0162751
6-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0018677   -0.0217720    0.0255073
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0052237   -0.0506108    0.0610582
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.0043320   -0.0513852    0.0427211
6-12 months    ki0047075b-MAL-ED          PERU                           4+                   1                  0.0005014   -0.0460669    0.0470698
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0578715   -0.0188331    0.1345761
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0166406   -0.0820943    0.0488131
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                  0.0336401   -0.0261824    0.0934626
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0106243   -0.1077799    0.0865313
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0089689   -0.1058081    0.0878704
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0098514   -0.1041641    0.0844613
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0138477   -0.0319749    0.0596703
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0083165   -0.0545988    0.0712317
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 -0.0050439   -0.0763042    0.0662163
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0184248   -0.0095509    0.0464005
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0275064   -0.0730019    0.0179891
6-12 months    ki1000108-IRC              INDIA                          4+                   1                  0.0488186    0.0102783    0.0873590
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0067924   -0.0147416    0.0283264
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0169743   -0.0061432    0.0400918
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0154200   -0.0213730    0.0522130
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 -0.0168440   -0.0336394   -0.0000486
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 -0.0109012   -0.0294750    0.0076726
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 -0.0027564   -0.0211988    0.0156859
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0116285   -0.0440054    0.0207484
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0045702   -0.0279410    0.0370814
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 -0.0079115   -0.0370039    0.0211809
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                 -0.0176699   -0.0517503    0.0164105
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0243534   -0.0111670    0.0598739
6-12 months    ki1114097-CONTENT          PERU                           4+                   1                  0.0199997   -0.0119404    0.0519398
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                  0.0128957    0.0048764    0.0209150
6-12 months    ki1135781-COHORTS          INDIA                          3                    1                  0.0251581    0.0110651    0.0392511
6-12 months    ki1135781-COHORTS          INDIA                          4+                   1                  0.0433819    0.0296739    0.0570900
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0050588   -0.0009291    0.0110466
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0155548    0.0083620    0.0227476
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0316179    0.0209966    0.0422392
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0062505   -0.0033883    0.0158893
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0118782   -0.0040092    0.0277656
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0248848    0.0060904    0.0436792
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0060992   -0.0094546    0.0216530
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0034094   -0.0115387    0.0183575
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1                  0.0169245    0.0047410    0.0291081
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0019120   -0.0102414    0.0140655
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0015280   -0.0110931    0.0141490
12-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                  0.0059130   -0.0079579    0.0197839
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0173356    0.0002137    0.0344575
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0003469   -0.0207518    0.0200581
12-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                  0.0089500   -0.0041021    0.0220022
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.0029657   -0.0306696    0.0247382
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0073645   -0.0329986    0.0182696
12-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 -0.0025573   -0.0252135    0.0200989
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0251956   -0.0425252   -0.0078659
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0300313   -0.0497387   -0.0103238
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 -0.0320933   -0.0432873   -0.0208993
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0518995   -0.1061855    0.0023866
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0260823   -0.0800143    0.0278496
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 -0.0255989   -0.0787208    0.0275230
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0065484   -0.0162668    0.0293637
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0103506   -0.0214847    0.0421859
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                  0.0116030   -0.0200648    0.0432708
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0141951   -0.0005015    0.0288918
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0089662   -0.0375938    0.0196613
12-24 months   ki1000108-IRC              INDIA                          4+                   1                  0.0091550   -0.0301834    0.0484934
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0055779   -0.0046552    0.0158110
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0006159   -0.0112708    0.0100390
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                  0.0235750    0.0039640    0.0431859
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                  0.0020628   -0.0071504    0.0112760
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                  0.0140748    0.0044091    0.0237404
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                  0.0104101    0.0014048    0.0194154
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0228991    0.0060091    0.0397892
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                  0.0160341   -0.0012500    0.0333183
12-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                  0.0134806   -0.0024134    0.0293746
12-24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           2                    1                 -0.0048923   -0.0330358    0.0232513
12-24 months   ki1114097-CONTENT          PERU                           3                    1                  0.0058153   -0.0289586    0.0405892
12-24 months   ki1114097-CONTENT          PERU                           4+                   1                  0.0174822   -0.0231996    0.0581640
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0094422    0.0058297    0.0130547
12-24 months   ki1135781-COHORTS          INDIA                          3                    1                  0.0023866   -0.0048434    0.0096167
12-24 months   ki1135781-COHORTS          INDIA                          4+                   1                  0.0175294    0.0082259    0.0268330
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0015443   -0.0017728    0.0048614
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0056378   -0.0098999   -0.0013758
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                  0.0019075   -0.0025355    0.0063505
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0005522   -0.0046121    0.0035077
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0048820   -0.0015443    0.0113083
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                  0.0046098   -0.0018630    0.0110827
