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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        hhwealth_quart    n_cell       n
-------------  -------------------------  -----------------------------  ---------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      82
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      82
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             20      82
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             20      82
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             12      57
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             17      57
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             15      57
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             13      57
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4              9      31
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1              8      31
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2              7      31
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3              7      31
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             10      35
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1              9      35
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2              8      35
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3              8      35
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             14      59
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             15      59
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             14      59
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16      59
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             10      50
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             14      50
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      50
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             11      50
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             31      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             15      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             16      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      87
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4             86     377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1             98     377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2             96     377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3             97     377
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            167     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            155     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            152     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            160     634
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3              8      29
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            248     709
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            138     709
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            140     709
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            183     709
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           9264   40060
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1          10204   40060
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2          10588   40060
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3          10004   40060
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            778    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            900    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            946    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            986    3610
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      80
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      80
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             19      80
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             19      80
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             17      70
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1             19      70
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             17      70
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             17      70
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11      42
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10      42
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10      42
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4             10      36
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1              9      36
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2              8      36
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3              9      36
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             15      62
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             15      62
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             16      62
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16      62
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15      55
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             12      55
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      55
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             13      55
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             80     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             79     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             73     307
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4             94     397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            105     397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2             98     397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            100     397
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            154     572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            135     572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            136     572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            147     572
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            409    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            501    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            413    1655
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            240     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            240     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            232     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            230     942
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4             51     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3             52     214
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            284     780
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            146     780
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            156     780
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            194     780
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           6936   25146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5490   25146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           6396   25146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           6324   25146
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            816    3678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            926    3678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            954    3678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            982    3678
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      78
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      78
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             17      78
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             19      78
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             18      70
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1             19      70
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             17      70
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             16      70
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11      42
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10      42
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10      42
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4             10      35
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              9      35
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              8      35
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              8      35
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             15      61
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             14      61
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             16      61
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             16      61
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15      57
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             12      57
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      57
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             15      57
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             82     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             78     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             84     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             79     323
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4             98     400
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            102     400
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2             98     400
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            102     400
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            146     544
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            127     544
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            135     544
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136     544
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            265    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            327    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            230    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            255    1077
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            248     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            232     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            244     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            226     950
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     213
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     213
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     213
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3             50     213
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            315     836
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            160     836
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            175     836
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            186     836
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            675    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            483    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            434    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            827    2419
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            114     430
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            102     430
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2             97     430
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            117     430
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           5339   19651
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           4302   19651
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5029   19651
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           4981   19651
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1497    6222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1521    6222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1542    6222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1662    6222
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             21      75
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1             21      75
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             16      75
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             17      75
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             18      70
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1             19      70
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             17      70
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             16      70
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             11      42
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2             10      42
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3             10      42
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4             10      30
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              6      30
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              8      30
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              6      30
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             15      64
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             15      64
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             17      64
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             17      64
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4             15      59
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             15      59
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      59
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3             14      59
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             83     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             78     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             83     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             80     324
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4             97     396
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            102     396
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2             96     396
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            101     396
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            120     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1             99     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            121     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            117     457
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              2       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       2
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            206     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            172     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            194     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            162     734
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4              5      38
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1             14      38
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2             10      38
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3              9      38
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            321     858
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            167     858
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            178     858
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            192     858
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            636    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            438    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            400    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            786    2260
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             83     307
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             69     307
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             68     307
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             87     307
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2374    9285
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2141    9285
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2416    9285
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2354    9285
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4           1728    7125
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1           1742    7125
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2           1741    7125
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3           1914    7125


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c4d9761d-0136-4365-a864-f75a841c499c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c4d9761d-0136-4365-a864-f75a841c499c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                3.6148788   3.4794903   3.7502672
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                3.6360930   3.4956978   3.7764883
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                3.6368731   3.4852218   3.7885243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                3.4802203   3.3073580   3.6530827
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                3.8314378   3.4271749   4.2357007
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                3.3068295   3.0903920   3.5232670
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                3.7969239   3.4775105   4.1163373
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                3.3227555   3.0257146   3.6197964
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                3.6721423   3.3300360   4.0142486
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                3.8548682   3.5576403   4.1520961
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                3.6829492   3.3347780   4.0311204
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                3.8492004   3.4682191   4.2301817
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                3.0541272   2.8015221   3.3067324
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                3.5122516   3.3998260   3.6246772
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                3.0673954   2.7516997   3.3830911
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                3.3153519   3.0628090   3.5678948
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                3.2388771   2.9249825   3.5527718
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                3.7177050   3.4220094   4.0134006
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                3.3930344   3.0548064   3.7312625
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                3.3677502   3.1224210   3.6130794
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                3.3959755   3.0858803   3.7060707
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                3.5262983   3.2235226   3.8290739
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                3.6779041   3.5032481   3.8525602
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                3.4470100   3.0900105   3.8040095
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                3.1476499   2.8019432   3.4933567
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                3.5095439   3.1483849   3.8707028
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                3.4823946   3.0958660   3.8689233
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                3.8317875   3.5312297   4.1323453
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                3.2841161   3.0746482   3.4935839
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                2.9722171   2.7791434   3.1652909
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                3.1210107   2.9283855   3.3136359
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                3.3306697   3.1235543   3.5377850
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                3.5774231   3.5145413   3.6403048
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                3.3773768   3.3067997   3.4479538
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                3.4569587   3.3901379   3.5237796
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                3.4926812   3.4258135   3.5595489
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                3.9898145   3.8052975   4.1743315
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                3.6471591   3.2148518   4.0794664
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                3.4002936   3.1552176   3.6453696
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                3.5733610   3.2070655   3.9396566
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                2.6118600   2.5493079   2.6744122
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                2.5727702   2.5072438   2.6382967
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                2.5983143   2.5302084   2.6664203
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                2.6485643   2.5821498   2.7149788
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                3.7755061   3.7592379   3.7917743
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                3.6660517   3.6493242   3.6827792
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                3.6951156   3.6792643   3.7109670
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                3.7354144   3.7199685   3.7508604
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                3.6371399   3.5737595   3.7005204
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                3.6021141   3.5430385   3.6611896
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                3.6322256   3.5729749   3.6914763
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                3.6566685   3.5929096   3.7204274
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                1.8130566   1.6823080   1.9438053
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.9077085   1.7759363   2.0394807
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                1.7517920   1.6029398   1.9006442
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.9714975   1.8622104   2.0807846
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                1.7927358   1.6109979   1.9744737
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                2.0446799   1.8712006   2.2181592
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                2.0001471   1.8346603   2.1656338
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.7708824   1.5119658   2.0297990
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                2.0457908   1.7843122   2.3072694
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                2.1969416   1.9567301   2.4371530
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                2.1441021   1.8795063   2.4086978
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                2.0721147   1.7649007   2.3793287
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                2.1700496   1.7289232   2.6111760
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                2.0058769   1.8193168   2.1924370
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                1.9086166   1.5308392   2.2863940
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.8154184   1.5665961   2.0642407
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                2.1976760   1.9852890   2.4100630
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.8153713   1.5899932   2.0407495
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                2.0495383   1.7508046   2.3482720
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                2.1439684   1.9558508   2.3320859
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.6916888   1.4836598   1.8997179
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.6009397   1.3271119   1.8747675
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.6979399   1.5195574   1.8763224
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7410977   1.4077152   2.0744802
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.7763390   1.5780696   1.9746084
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                2.0116203   1.8283499   2.1948908
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.7040981   1.5138951   1.8943010
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.7257890   1.5214962   1.9300819
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                1.7461347   1.6303814   1.8618880
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                1.7008379   1.6165371   1.7851388
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                1.7068944   1.6129384   1.8008504
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                1.7977209   1.7024087   1.8930331
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.9102909   1.8563162   1.9642656
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.8625808   1.8089409   1.9162207
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.9071217   1.8540463   1.9601972
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                2.0007991   1.9530513   2.0485470
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7465122   1.6805679   1.8124565
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8534007   1.7926282   1.9141733
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8022224   1.7226609   1.8817838
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7349137   1.6712908   1.7985366
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.6919217   1.6113776   1.7724658
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.7179163   1.6418846   1.7939480
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.6731862   1.5974688   1.7489035
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.7402835   1.6621728   1.8183942
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                2.0954597   1.9946187   2.1963008
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                2.1080528   2.0097663   2.2063394
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                2.1083316   2.0232549   2.1934083
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                2.0216737   1.9289682   2.1143792
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.7582944   1.7165524   1.8000365
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.6696392   1.6135370   1.7257415
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                1.7031158   1.6408557   1.7653759
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                1.7763792   1.7258192   1.8269392
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                1.9273491   1.9100123   1.9446859
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                1.9031736   1.8849877   1.9213595
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                1.9144236   1.8958951   1.9329520
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                1.9093800   1.8927937   1.9259663
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.8960400   1.8461613   1.9459187
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.8762129   1.8247940   1.9276319
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.8677622   1.8258494   1.9096750
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.8746882   1.8158061   1.9335703
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                1.1747078   1.1105067   1.2389088
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.0839296   1.0082534   1.1596057
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                1.1753327   1.1079827   1.2426826
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.1995265   1.1268903   1.2721628
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                1.0687772   0.9704201   1.1671342
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                1.1508431   1.0585967   1.2430895
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                1.1477794   1.0292414   1.2663173
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.1602887   1.0323919   1.2881854
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.1550145   1.0514307   1.2585982
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                1.2320302   1.1086640   1.3553965
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                1.1656827   1.0723699   1.2589955
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                1.1681586   1.0458780   1.2904392
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                1.1127754   0.9822039   1.2433469
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                1.1958614   1.0771215   1.3146012
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                1.2903693   1.0735122   1.5072265
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.0377311   0.9063783   1.1690839
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                1.1136108   0.9613238   1.2658978
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.1457812   0.9771688   1.3143937
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                1.1767129   0.9926848   1.3607411
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                1.2919746   1.1691438   1.4148055
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.0614815   0.9639808   1.1589821
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0521752   0.9335821   1.1707683
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.0433610   0.9183202   1.1684018
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9795368   0.8527435   1.1063300
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.1026300   1.0177401   1.1875200
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.9977611   0.9190217   1.0765005
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.0183240   0.9426081   1.0940398
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.0833635   0.9809594   1.1857676
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                1.3594256   1.2970652   1.4217860
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                1.3441807   1.2935628   1.3947986
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                1.3017210   1.2553812   1.3480609
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                1.2613943   1.2109986   1.3117899
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.2514771   1.2238600   1.2790943
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.0705855   1.0452112   1.0959599
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.1542765   1.1263737   1.1821793
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.1759149   1.1464505   1.2053793
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.2312942   1.1867943   1.2757942
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.2116654   1.1761208   1.2472099
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.2472667   1.2010608   1.2934726
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.2152114   1.1705831   1.2598396
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.1793611   1.1397102   1.2190121
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.1569123   1.1174640   1.1963607
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.1717555   1.1327285   1.2107825
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.1635160   1.1249543   1.2020778
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.3552791   1.2992392   1.4113190
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.2663675   1.2073058   1.3254292
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.3275276   1.2719754   1.3830799
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.2579486   1.2005649   1.3153323
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.0243691   1.0012646   1.0474737
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.9957734   0.9663970   1.0251497
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.9619675   0.9337478   0.9901871
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.9551585   0.9293185   0.9809985
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                1.1196318   1.0998055   1.1394580
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.9849040   0.9633247   1.0064834
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                1.0656315   1.0425597   1.0887033
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                1.0623914   1.0434265   1.0813563
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                1.2882456   1.2414065   1.3350847
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.2371824   1.1797395   1.2946252
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                1.2799489   1.2350464   1.3248514
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                1.3048853   1.2630816   1.3466890
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                1.1343238   1.1224517   1.1461959
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                1.0961337   1.0851638   1.1071037
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                1.0841488   1.0735967   1.0947008
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                1.1074100   1.0968750   1.1179449
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.2327668   1.2128565   1.2526771
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.1673030   1.1503669   1.1842390
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.1749410   1.1561844   1.1936976
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.2012152   1.1833564   1.2190739
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.8946206   0.8598744   0.9293668
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.8719885   0.8320354   0.9119417
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.9049840   0.8635021   0.9464658
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.8596214   0.8279023   0.8913406
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.9106515   0.8469680   0.9743350
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.8123707   0.7596274   0.8651140
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.9116625   0.8525970   0.9707279
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8232747   0.7761020   0.8704474
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.8914708   0.8511161   0.9318256
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.8413465   0.7652600   0.9174329
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8575538   0.7861548   0.9289529
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.9179091   0.8609453   0.9748729
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.7878002   0.6659010   0.9096995
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.8381704   0.7959490   0.8803917
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.7535548   0.6822601   0.8248495
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.9303729   0.7914936   1.0692521
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.8879084   0.8127869   0.9630300
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.7740833   0.6778436   0.8703229
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.8395540   0.7342054   0.9449026
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.9421206   0.8670833   1.0171580
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6816692   0.6025626   0.7607758
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6540485   0.5977424   0.7103547
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7577501   0.6637448   0.8517554
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7549088   0.6732127   0.8366049
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8084956   0.7568535   0.8601377
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7319437   0.6864881   0.7773992
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7765672   0.7274755   0.8256589
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7785938   0.7250059   0.8321817
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.8828212   0.8471853   0.9184572
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.8210637   0.7950381   0.8470893
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.8686144   0.8362718   0.9009570
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.8405349   0.8066125   0.8744573
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8732914   0.8546680   0.8919147
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7941193   0.7761946   0.8120441
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8435260   0.8230428   0.8640092
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8520517   0.8309337   0.8731696
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8430113   0.8148478   0.8711748
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8346967   0.8081115   0.8612819
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8344556   0.8091078   0.8598035
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8443227   0.8124677   0.8761778
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.9223297   0.7942771   1.0503824
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9164412   0.8739677   0.9589147
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9412926   0.8871407   0.9954445
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9256900   0.8457424   1.0056376
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.8052913   0.7887877   0.8217950
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7741727   0.7525680   0.7957774
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7758716   0.7564809   0.7952622
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7537920   0.7353061   0.7722778
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7430709   0.7311823   0.7549596
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6987102   0.6843656   0.7130548
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6769604   0.6638957   0.6900252
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6953195   0.6844360   0.7062030
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8317922   0.8062961   0.8572883
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.8465764   0.8100926   0.8830601
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.8000579   0.7715954   0.8285204
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.8312112   0.8004793   0.8619431
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.8072808   0.7990185   0.8155430
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.7777835   0.7698722   0.7856948
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.7910406   0.7833469   0.7987343
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.7886704   0.7788255   0.7985152
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.8613268   0.8501820   0.8724716
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.8377937   0.8281573   0.8474301
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.8433276   0.8339642   0.8526909
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.8498661   0.8413517   0.8583804


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5225318   3.4164590   3.6286046
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.6566594   3.4818175   3.8315013
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.7617185   3.5876044   3.9358326
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.2346719   3.0976857   3.3716580
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4273613   3.2500085   3.6047141
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5653800   3.3943198   3.7364403
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                3.6499227   3.4691077   3.8307378
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6146471   2.5705065   2.6587877
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184677   3.7081242   3.7288113
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9366456   1.8491202   2.0241711
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8409483   1.7131324   1.9687643
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                2.0393805   1.8861823   2.1925787
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.9822524   1.8087765   2.1557283
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                2.0417160   1.8774543   2.2059778
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7369370   1.5843725   1.8895016
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9662173   1.9311292   2.0013054
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933678   1.7575489   1.8291867
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7591266   1.7281267   1.7901266
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9201827   1.9097195   1.9306459
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.0868983   1.0413234   1.1324731
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1311696   1.0756261   1.1867130
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.1794962   1.1212097   1.2377827
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.1575803   1.0762412   1.2389193
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1843253   1.1031968   1.2654539
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0152376   0.9345169   1.0959583
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1737150   1.1564064   1.1910236
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1966694   1.1750524   1.2182863
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0171344   0.9996325   1.0346363
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2790810   1.2528925   1.3052695
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069007   1.1001595   1.1136418
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2031561   1.1927695   1.2135427
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8466021   0.8212251   0.8719791
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8642490   0.8339445   0.8945534
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8525944   0.8182394   0.8869494
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8172567   0.7590542   0.8754591
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8628601   0.8147601   0.9109601
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7415304   0.6957036   0.7873573
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575399   0.8455203   0.8695594
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9259464   0.8927736   0.9591191
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7790712   0.7681227   0.7900197
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8407809   0.8238743   0.8576875
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966099   0.7912995   0.8019202
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8492623   0.8438054   0.8547191


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0212143   -0.1644874    0.2069159
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0219943   -0.1732569    0.2172455
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1346584   -0.3427872    0.0734703
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.5246083   -0.9822206   -0.0669960
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0345139   -0.5499667    0.4809389
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.5086823   -1.0087661   -0.0085985
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1827259   -0.2704641    0.6359158
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0108069   -0.4773119    0.4989256
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.1770581   -0.3349804    0.6890966
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.4581244    0.1816304    0.7346183
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0132682   -0.3910499    0.4175863
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.2612246   -0.0959690    0.6184183
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.4788279    0.0649328    0.8927229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.1541573   -0.2875654    0.5958801
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1288730   -0.2529056    0.5106516
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1303227   -0.2919374    0.5525829
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.2819286   -0.0700321    0.6338893
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0510345   -0.4107821    0.5128511
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.3618939   -0.1299956    0.8537835
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3347447   -0.1737521    0.8432415
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.6841375    0.2295352    1.1387399
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3118989   -0.5856715   -0.0381263
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1631054   -0.4366598    0.1104491
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0465536   -0.2377022    0.3308094
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2000463   -0.2945225   -0.1055701
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1204643   -0.2121680   -0.0287607
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0847419   -0.1764666    0.0069828
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3426554   -0.8126938    0.1273830
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.5895209   -0.8962924   -0.2827494
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.4164535   -0.8265985   -0.0063084
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0390898   -0.1229987    0.0448191
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0135457   -0.0987688    0.0716773
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0367043   -0.0478136    0.1212222
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1094544   -0.1315374   -0.0873714
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0803905   -0.1021351   -0.0586458
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0400917   -0.0605478   -0.0196355
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0350258   -0.1223482    0.0522965
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0049144   -0.0944378    0.0846091
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0195286   -0.0692987    0.1083559
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0946519   -0.0924134    0.2817172
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0612647   -0.2584406    0.1359113
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.1584408   -0.0122159    0.3290975
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.2519441    0.0184608    0.4854273
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.2074112   -0.0329091    0.4477316
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0218534   -0.3255247    0.2818178
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1511508   -0.2070568    0.5093584
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0983112   -0.2742825    0.4709050
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0263239   -0.3781563    0.4308040
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.1641727   -0.6431269    0.3147816
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.2614330   -0.8422155    0.3193494
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.3546312   -0.8610945    0.1518320
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.3823047   -0.6676685   -0.0969409
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1481377   -0.4995412    0.2032659
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0537076   -0.3056852    0.1982699
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0907492   -0.4282141    0.2467158
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0062510   -0.2609796    0.2734817
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0494089   -0.3348305    0.4336482
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2352814   -0.0327692    0.5033320
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0722409   -0.3448945    0.2004127
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0505500   -0.3326590    0.2315591
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0452968   -0.1802266    0.0896331
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0392403   -0.1776548    0.0991742
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0515862   -0.0877940    0.1909664
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0477101   -0.1189467    0.0235266
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0031692   -0.0738403    0.0675020
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0905083    0.0224919    0.1585246
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1068885    0.0190300    0.1947471
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0557102   -0.0461279    0.1575482
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0115985   -0.1012507    0.0780536
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0259947   -0.0846039    0.1365933
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0187355   -0.1291606    0.0916896
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0483618   -0.0636570    0.1603807
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0125931   -0.1277935    0.1529798
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0128719   -0.1191873    0.1449310
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0737860   -0.2108368    0.0632648
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0886552   -0.1557342   -0.0215762
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0551786   -0.1271318    0.0167746
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0180848   -0.0441009    0.0802705
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0241755   -0.0493382    0.0009872
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0129255   -0.0370719    0.0112209
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0179691   -0.0417293    0.0057912
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0198270   -0.0901762    0.0505221
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0282778   -0.0914280    0.0348725
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0213518   -0.0957463    0.0530427
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0907782   -0.1890948    0.0075384
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0006249   -0.0947430    0.0959928
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0248187   -0.0722626    0.1219000
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0820659   -0.0522132    0.2163450
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0790022   -0.0742743    0.2322787
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0915115   -0.0691788    0.2522018
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0770158   -0.0840396    0.2380711
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0106682   -0.1287560    0.1500925
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0131441   -0.1471260    0.1734142
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0830860   -0.0934022    0.2595741
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.1775940   -0.0755383    0.4307262
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0750443   -0.2602535    0.1101649
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0321704   -0.1949730    0.2593139
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0631021   -0.1750323    0.3012366
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1783638   -0.0171770    0.3739047
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0093063   -0.1602756    0.1416630
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0181204   -0.1771104    0.1408696
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0819447   -0.2357597    0.0718703
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1048689   -0.2187822    0.0090443
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0843061   -0.1955169    0.0269048
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0192665   -0.1496130    0.1110799
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0152449   -0.0955331    0.0650433
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0577046   -0.1352623    0.0198531
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0980313   -0.1780873   -0.0179754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1808916   -0.2183915   -0.1433916
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0972007   -0.1364379   -0.0579635
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0755622   -0.1159025   -0.0352219
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0196289   -0.0764885    0.0372307
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0159725   -0.0481364    0.0800814
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0160829   -0.0789979    0.0468321
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0224488   -0.0783807    0.0334830
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0076056   -0.0632411    0.0480298
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0158451   -0.0711552    0.0394650
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0889116   -0.1703207   -0.0075024
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0277514   -0.1066464    0.0511435
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0973305   -0.1775163   -0.0171447
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0285958   -0.0641605    0.0069689
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0624017   -0.0971404   -0.0276630
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0692107   -0.1023975   -0.0360238
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.1347277   -0.1636654   -0.1057900
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0540003   -0.0839726   -0.0240279
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0572404   -0.0841262   -0.0303545
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0510632   -0.1242464    0.0221199
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0082967   -0.0720265    0.0554331
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0166397   -0.0449483    0.0782277
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0381900   -0.0539793   -0.0224008
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0501750   -0.0653140   -0.0350360
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0269138   -0.0425841   -0.0112435
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0654638   -0.0906458   -0.0402819
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0578258   -0.0856114   -0.0300403
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0315516   -0.0574961   -0.0056072
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0226320   -0.0741283    0.0288643
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0103634   -0.0424771    0.0632039
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0349991   -0.0802467    0.0102484
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0982808   -0.1809689   -0.0155927
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0010109   -0.0858459    0.0878678
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0873768   -0.1666242   -0.0081294
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0501244   -0.1372654    0.0370167
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0339170   -0.1163690    0.0485349
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0264383   -0.0434191    0.0962957
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0503701   -0.0786340    0.1793742
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0342455   -0.1754628    0.1069719
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.1425726   -0.0422160    0.3273613
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1138252   -0.2359217    0.0082714
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0483544   -0.1777369    0.0810280
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0542122   -0.0519491    0.1603734
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0276207   -0.1219406    0.0666992
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0760809   -0.0476252    0.1997871
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0732396   -0.0394212    0.1859004
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0765519   -0.1451808   -0.0079230
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0319284   -0.1031551    0.0392983
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0299018   -0.1043268    0.0445233
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0617575   -0.1057066   -0.0178084
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0142068   -0.0621976    0.0337839
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0422864   -0.0913959    0.0068232
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0791720   -0.1050248   -0.0533193
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0297654   -0.0574332   -0.0020975
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0212397   -0.0493949    0.0069155
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0083146   -0.0463982    0.0297690
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0085557   -0.0458207    0.0287094
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0013114   -0.0407924    0.0434153
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0058886   -0.1408014    0.1290243
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0189629   -0.1200692    0.1579949
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0033603   -0.1476003    0.1543209
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0311186   -0.0583081   -0.0039292
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0294198   -0.0548748   -0.0039647
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0514993   -0.0762734   -0.0267253
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0443607   -0.0627038   -0.0260177
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0661105   -0.0834877   -0.0487333
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0477514   -0.0635596   -0.0319433
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0147841   -0.0297584    0.0593267
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0317343   -0.0698413    0.0063727
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0005810   -0.0403954    0.0392334
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0294972   -0.0407959   -0.0181986
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0162402   -0.0270518   -0.0054286
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0186104   -0.0312451   -0.0059757
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0235331   -0.0376987   -0.0093676
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0179992   -0.0319033   -0.0040951
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0114607   -0.0251462    0.0022247
