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
![](/tmp/99870e27-b8a6-4028-935d-2a5aad4fbdc5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/99870e27-b8a6-4028-935d-2a5aad4fbdc5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0242930   -0.1144930    0.0659070
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0171106   -0.1281026    0.0938815
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0445511   -0.1443962    0.0552940
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.1170023   -0.2271112   -0.0068934
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.1344703   -0.0727773    0.3417180
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.1449062   -0.2703334   -0.0194791
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                 0.1098076   -0.0605560    0.2801712
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0316683   -0.1971620    0.1338253
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0170812   -0.1596204    0.1254581
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.1220263   -0.0235365    0.2675892
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.0435176   -0.1246850    0.2117202
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.1038208   -0.0471368    0.2547784
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.2867853   -0.4218792   -0.1516913
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0886078   -0.1668080   -0.0104077
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.2571244   -0.3967619   -0.1174869
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.1591282   -0.2637870   -0.0544693
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.2360821   -0.4064850   -0.0656793
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0047251   -0.1677284    0.1582783
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.1424677   -0.3553687    0.0704332
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.1310726   -0.2805930    0.0184478
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0757631   -0.2232331    0.0717069
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0241435   -0.1947188    0.1464318
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0304396   -0.0543756    0.1152548
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0294364   -0.1559651    0.2148379
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2229614   -0.4155414   -0.0303814
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0158550   -0.2522192    0.2205091
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0553316   -0.2948220    0.1841588
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0663301   -0.1104993    0.2431595
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1645613   -0.2562498   -0.0728727
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.3193992   -0.4035851   -0.2352133
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.2499475   -0.3357375   -0.1641575
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.1404829   -0.2331158   -0.0478500
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0096414   -0.0185666    0.0378495
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0954876   -0.1268827   -0.0640925
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0609885   -0.0923742   -0.0296028
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0444795   -0.0751302   -0.0138288
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.2116983    0.1106556    0.3127409
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0178807   -0.2673442    0.2315828
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.1263780   -0.2534315    0.0006756
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0469957   -0.2526421    0.1586506
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.5444946   -0.5776830   -0.5113062
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.5609574   -0.5970741   -0.5248408
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.5403868   -0.5812740   -0.4994997
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.5115885   -0.5471946   -0.4759824
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1005772    0.0929551    0.1081993
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                 0.0445861    0.0365059    0.0526663
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                 0.0591126    0.0514763    0.0667489
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                 0.0787865    0.0714921    0.0860810
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0755250    0.0487996    0.1022504
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                 0.0430731    0.0164646    0.0696816
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                 0.0681725    0.0427394    0.0936056
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                 0.0830352    0.0556513    0.1104192
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0313687   -0.1071456    0.0444081
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0004994   -0.0793863    0.0783875
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0659075   -0.1520721    0.0202572
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                 0.0198702   -0.0545127    0.0942531
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.1445148   -0.2482987   -0.0407309
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                 0.0022587   -0.1027444    0.1072619
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0207572   -0.1231018    0.0815874
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.1000313   -0.2182042    0.0181417
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0336815   -0.1818652    0.1145022
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                 0.0429641   -0.0816298    0.1675580
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                 0.0528364   -0.0963068    0.2019795
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                 0.0181441   -0.1334758    0.1697640
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                 0.0968541   -0.1097269    0.3034351
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                 0.0114235   -0.0780780    0.1009249
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0014298   -0.1694067    0.1665472
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.0609542   -0.1693484    0.0474400
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1217103   -0.0032047    0.2466253
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.1281905   -0.2927739    0.0363930
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                 0.0075058   -0.1753419    0.1903534
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.0884059   -0.0135092    0.1903210
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1152620   -0.2218266   -0.0086975
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1617437   -0.3092745   -0.0142129
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0967647   -0.1964649    0.0029356
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1081961   -0.3169282    0.1005361
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1076301   -0.2042097   -0.0110505
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                 0.0055996   -0.0823469    0.0935461
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1426499   -0.2359959   -0.0493039
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1454026   -0.2440348   -0.0467704
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1127087   -0.1756649   -0.0497524
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.1203249   -0.1652158   -0.0754341
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.1311671   -0.1829768   -0.0793573
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0888817   -0.1404432   -0.0373201
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0568511   -0.0814610   -0.0322413
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0742787   -0.0989188   -0.0496385
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0583115   -0.0832984   -0.0333247
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0132536   -0.0357950    0.0092878
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1034402   -0.1337565   -0.0731239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0564724   -0.0840254   -0.0289194
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0748871   -0.1109371   -0.0388370
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1088527   -0.1378480   -0.0798575
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1694893   -0.2076212   -0.1313574
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.1524897   -0.1878454   -0.1171340
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.1824593   -0.2188895   -0.1460290
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.1441243   -0.1787731   -0.1094754
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0171331   -0.0311010    0.0653672
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.0249436   -0.0194932    0.0693805
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0272365   -0.0128107    0.0672836
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0199223   -0.0638310    0.0239864
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0985601   -0.1201677   -0.0769525
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1410280   -0.1713639   -0.1106921
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1240934   -0.1579581   -0.0902288
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0916804   -0.1186939   -0.0646668
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0029183   -0.0110082    0.0051716
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0098347   -0.0182364   -0.0014330
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0049265   -0.0134282    0.0035753
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0084583   -0.0161062   -0.0008105
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0139983   -0.0372681    0.0092715
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0168291   -0.0403349    0.0066766
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0224469   -0.0421491   -0.0027447
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0187211   -0.0456393    0.0081971
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0887473   -0.1167947   -0.0607000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.1119918   -0.1433237   -0.0806598
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0860310   -0.1175642   -0.0544978
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0770147   -0.1120806   -0.0419487
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0967828   -0.1326042   -0.0609613
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0572246   -0.0884448   -0.0260044
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0814890   -0.1209064   -0.0420717
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0557750   -0.0979317   -0.0136183
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0692535   -0.1142586   -0.0242483
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0482327   -0.0973142    0.0008488
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0682448   -0.0999535   -0.0365362
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0737047   -0.1193550   -0.0280545
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0785481   -0.1411425   -0.0159536
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0407314   -0.0955756    0.0141127
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                 0.0073266   -0.0844988    0.0991519
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                -0.1078357   -0.1591584   -0.0565130
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0899020   -0.1548768   -0.0249271
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0719506   -0.1446986    0.0007974
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0667130   -0.1409324    0.0075064
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0163353   -0.0643894    0.0317187
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0997024   -0.1422680   -0.0571369
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0972470   -0.1432148   -0.0512791
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1053648   -0.1609288   -0.0498008
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1205265   -0.1720740   -0.0689790
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0715554   -0.1111237   -0.0319871
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1278754   -0.1640684   -0.0916824
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1096416   -0.1442397   -0.0750434
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0881149   -0.1356932   -0.0405367
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0207295   -0.0068815    0.0483405
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                 0.0261937    0.0035067    0.0488807
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                 0.0066964   -0.0144149    0.0278077
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0187674   -0.0416331    0.0040982
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0395017   -0.0495591   -0.0294443
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0934344   -0.1019894   -0.0848794
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0692755   -0.0789382   -0.0596127
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0620412   -0.0716391   -0.0524434
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0535474   -0.0711866   -0.0359082
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0646462   -0.0785986   -0.0506939
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0535822   -0.0718731   -0.0352914
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0651854   -0.0826782   -0.0476927
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0542475   -0.0699762   -0.0385187
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0577576   -0.0725707   -0.0429446
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0614186   -0.0768941   -0.0459432
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0610621   -0.0755459   -0.0465784
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0020387   -0.0269794    0.0229020
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0351965   -0.0603800   -0.0100129
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0145191   -0.0382311    0.0091928
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0380292   -0.0623760   -0.0136823
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1058282   -0.1153391   -0.0963173
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1129434   -0.1253857   -0.1005012
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1247037   -0.1368263   -0.1125811
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1299770   -0.1414729   -0.1184811
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0816688   -0.0901940   -0.0731436
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.1322473   -0.1415499   -0.1229447
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.1021871   -0.1123637   -0.0920106
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.1009132   -0.1089941   -0.0928322
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0034133   -0.0229541    0.0161275
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0260910   -0.0504915   -0.0016904
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0065469   -0.0253787    0.0122849
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.0040772   -0.0133794    0.0215338
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0662401   -0.0712264   -0.0612539
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0779970   -0.0825402   -0.0734538
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0832962   -0.0878617   -0.0787307
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0752419   -0.0797228   -0.0707610
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0308990   -0.0394873   -0.0223107
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0505643   -0.0577288   -0.0433998
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0504595   -0.0586636   -0.0422554
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0417227   -0.0492803   -0.0341652
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0221196   -0.0354964   -0.0087428
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                -0.0130030   -0.0290915    0.0030855
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                -0.0186433   -0.0375247    0.0002380
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                -0.0349888   -0.0448981   -0.0250796
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0008457   -0.0183733    0.0200646
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                -0.0301907   -0.0440496   -0.0163317
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                -0.0039717   -0.0246071    0.0166637
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                -0.0243831   -0.0388789   -0.0098874
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                -0.0063028   -0.0209932    0.0083876
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                -0.0335616   -0.0642414   -0.0028818
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                -0.0268725   -0.0471843   -0.0065606
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                -0.0083820   -0.0265633    0.0097994
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                -0.0227339   -0.0632025    0.0177347
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                -0.0088862   -0.0199913    0.0022189
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                -0.0289023   -0.0489548   -0.0088499
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                 0.0249136   -0.0238996    0.0737268
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.0031199   -0.0208269    0.0270668
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0383383   -0.0716616   -0.0050150
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0254038   -0.0599210    0.0091133
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.0082607   -0.0185340    0.0350554
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0622036   -0.0845852   -0.0398220
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0733330   -0.0897500   -0.0569159
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0357999   -0.0656442   -0.0059556
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0295196   -0.0572278   -0.0018113
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0158156   -0.0363707    0.0047395
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0456888   -0.0636848   -0.0276928
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0244671   -0.0434746   -0.0054596
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0303849   -0.0518822   -0.0088877
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0201728   -0.0318972   -0.0084483
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0312703   -0.0395830   -0.0229576
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0217630   -0.0318110   -0.0117151
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0324763   -0.0433275   -0.0216251
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0095507   -0.0154223   -0.0036790
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0193973   -0.0251227   -0.0136719
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0103333   -0.0167549   -0.0039118
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0109551   -0.0176834   -0.0042268
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0145791   -0.0240228   -0.0051355
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0158261   -0.0242894   -0.0073629
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0159885   -0.0248310   -0.0071460
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0139636   -0.0238490   -0.0040783
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0391112   -0.0943100    0.0160876
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0322057   -0.0474915   -0.0169200
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0073873   -0.0241038    0.0093293
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0217704   -0.0481799    0.0046392
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0248723   -0.0301717   -0.0195729
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0311048   -0.0379026   -0.0243070
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0320370   -0.0380851   -0.0259889
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0363418   -0.0422840   -0.0303996
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0486199   -0.0527718   -0.0444680
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.0565598   -0.0614056   -0.0517140
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.0677621   -0.0722377   -0.0632866
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.0600606   -0.0637611   -0.0563601
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0192825   -0.0287873   -0.0097777
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0142524   -0.0268719   -0.0016329
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0281579   -0.0389015   -0.0174143
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0205899   -0.0311777   -0.0100021
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0187696   -0.0216145   -0.0159247
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0232328   -0.0259658   -0.0204999
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0184667   -0.0211830   -0.0157503
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0217945   -0.0250827   -0.0185064
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0137603   -0.0175966   -0.0099239
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0151891   -0.0186536   -0.0117246
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0153787   -0.0184400   -0.0123174
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0157565   -0.0187851   -0.0127278


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0500119   -0.1031887    0.0031650
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0071102   -0.0810033    0.0952237
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0598016   -0.0185534    0.1381565
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1998670   -0.2647991   -0.1349348
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1256980   -0.2166749   -0.0347212
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0060362   -0.0842841    0.0722117
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0033142   -0.0990835    0.1057118
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5415610   -0.5638006   -0.5193214
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705560    0.0656018    0.0755101
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0675829    0.0526455    0.0825202
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0153992   -0.0557136    0.0249153
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0613756   -0.1206506   -0.0021007
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0193369   -0.0534952    0.0921689
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0142035   -0.0651104    0.0935174
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0231837   -0.0542016    0.1005689
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1201673   -0.1934415   -0.0468930
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0268823   -0.0433403   -0.0104242
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855875   -0.1022050   -0.0689699
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0976717   -0.1124091   -0.0829344
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034446   -0.0083108    0.0014217
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0912359   -0.1093868   -0.0730850
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0747022   -0.0992423   -0.0501622
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0623113   -0.0857889   -0.0388337
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0558896   -0.0918480   -0.0199312
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0605233   -0.0945315   -0.0265151
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1185188   -0.1513462   -0.0856914
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0623982   -0.0693401   -0.0554562
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0595549   -0.0687696   -0.0503402
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1096757   -0.1168737   -0.1024777
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0067938   -0.0177737    0.0041862
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748654   -0.0777070   -0.0720238
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383812   -0.0427453   -0.0340172
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0168634   -0.0251678   -0.0085590
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0145146   -0.0237125   -0.0053168
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0250401   -0.0368725   -0.0132078
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0120798   -0.0311149    0.0069554
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0199890   -0.0363262   -0.0036518
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0477373   -0.0628065   -0.0326682
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081896   -0.0120393   -0.0043400
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0241116   -0.0366136   -0.0116097
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0296109   -0.0333284   -0.0258934
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0160605   -0.0218715   -0.0102495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188143   -0.0206609   -0.0169677
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0145986   -0.0164791   -0.0127182


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0071824   -0.1347754    0.1491402
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0202581   -0.1545090    0.1139928
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0927093   -0.2344061    0.0489876
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.2793765   -0.5215756   -0.0371775
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0246627   -0.2926579    0.2433325
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.1661386   -0.4309074    0.0986301
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1391075   -0.0646227    0.3428377
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0605987   -0.1598770    0.2810745
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.1209020   -0.0867170    0.3285209
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.1981774    0.0420825    0.3542724
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0296609   -0.1646301    0.2239519
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.1276571   -0.0432342    0.2985484
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.2313571   -0.0044631    0.4671772
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0936144   -0.1789714    0.3662001
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1050095   -0.1216633    0.3316823
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0516195   -0.1723020    0.2755411
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1062027   -0.0632581    0.2756634
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1051994   -0.1312632    0.3416621
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2071064   -0.0977790    0.5119917
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.1676298   -0.1396855    0.4749452
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.2892915    0.0278422    0.5507407
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1548379   -0.2714788   -0.0381971
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0853863   -0.2030733    0.0323008
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0240784   -0.0988826    0.1470393
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1051290   -0.1473249   -0.0629331
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0706299   -0.1128224   -0.0284374
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0541209   -0.0957641   -0.0124777
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2295790   -0.4987288    0.0395709
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.3380763   -0.5004099   -0.1757426
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2586940   -0.4878229   -0.0295651
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0164628   -0.0653619    0.0324362
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0041078   -0.0483698    0.0565854
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0329061   -0.0156368    0.0814490
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0559911   -0.0664949   -0.0454873
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0414646   -0.0517566   -0.0311726
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0217906   -0.0316063   -0.0119750
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0324519   -0.0693637    0.0044599
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0073525   -0.0432096    0.0285045
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0075102   -0.0284562    0.0434767
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0308693   -0.0793884    0.1411271
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0345387   -0.1491999    0.0801225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0512390   -0.0549251    0.1574030
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.1467735   -0.0012550    0.2948021
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.1237576   -0.0200257    0.2675409
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0444835   -0.1108747    0.1998418
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0766456   -0.1163712    0.2696625
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0865179   -0.1231611    0.2961969
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0518256   -0.1600448    0.2636960
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.0854306   -0.3105667    0.1397054
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0982839   -0.3645393    0.1679716
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.1578083   -0.3911000    0.0754834
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2499008   -0.4565142   -0.0432873
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1142045   -0.3356331    0.1072240
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0333044   -0.1945123    0.1279035
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0464816   -0.2281085    0.1351452
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0184974   -0.1264323    0.1634270
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0070660   -0.2265615    0.2406935
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1132297   -0.0173869    0.2438463
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0350198   -0.1693311    0.0992914
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0377725   -0.1758111    0.1002660
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0076163   -0.0845489    0.0693163
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0184584   -0.0994789    0.0625620
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0238270   -0.0570429    0.1046968
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0174275   -0.0501263    0.0152712
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0014604   -0.0342194    0.0312986
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0435975    0.0122545    0.0749405
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0469678    0.0070644    0.0868711
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0285531   -0.0177064    0.0748127
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0054125   -0.0462554    0.0354303
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0169996   -0.0348392    0.0688384
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0129700   -0.0655556    0.0396157
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0253650   -0.0260544    0.0767844
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0078105   -0.0574583    0.0730794
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0101034   -0.0525742    0.0727809
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0370554   -0.1022466    0.0281358
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0424679   -0.0794883   -0.0054475
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0255334   -0.0654953    0.0144286
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0068797   -0.0274442    0.0412036
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0069164   -0.0185624    0.0047295
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0020082   -0.0131068    0.0090905
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0055400   -0.0164932    0.0054132
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0028308   -0.0352760    0.0296144
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0084486   -0.0380664    0.0211692
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0047228   -0.0391382    0.0296927
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0232444   -0.0643171    0.0178283
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0027163   -0.0382291    0.0436618
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0117327   -0.0327824    0.0562478
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0395581   -0.0052635    0.0843798
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0152937   -0.0336503    0.0642378
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0410078   -0.0105171    0.0925326
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0210208   -0.0456791    0.0877207
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0010086   -0.0540468    0.0560641
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0044513   -0.0684715    0.0595689
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0378166   -0.0454057    0.1210389
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0858746   -0.0252558    0.1970050
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0292876   -0.1102326    0.0516574
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0179514   -0.0790808    0.1149836
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0231889   -0.0746880    0.1210659
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0735666   -0.0070548    0.1541880
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0024555   -0.0594816    0.0643926
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0056623   -0.0762016    0.0648770
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0208241   -0.0861404    0.0444923
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0563200   -0.1096235   -0.0030165
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0380862   -0.0901933    0.0140209
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0165595   -0.0779804    0.0448614
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0054642   -0.0301877    0.0411162
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0140331   -0.0486474    0.0205813
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0394969   -0.0752359   -0.0037578
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0539327   -0.0665406   -0.0413247
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0297737   -0.0428320   -0.0167155
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0225395   -0.0354255   -0.0096535
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0110989   -0.0329674    0.0107696
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0000349   -0.0246886    0.0246188
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0116380   -0.0357059    0.0124299
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0035102   -0.0248469    0.0178265
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0071712   -0.0289979    0.0146556
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0068146   -0.0280530    0.0144238
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0331577   -0.0686014    0.0022859
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0124804   -0.0468940    0.0219332
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0359905   -0.0708446   -0.0011363
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0071152   -0.0220580    0.0078276
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0188755   -0.0334822   -0.0042687
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0241488   -0.0383575   -0.0099401
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0505785   -0.0630562   -0.0381008
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0205183   -0.0336203   -0.0074163
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0192444   -0.0307789   -0.0077099
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0226777   -0.0535861    0.0082308
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0031336   -0.0297382    0.0234710
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0074905   -0.0182986    0.0332796
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0117569   -0.0183340   -0.0051797
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0170561   -0.0235092   -0.0106030
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0090018   -0.0156038   -0.0023998
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0196653   -0.0304515   -0.0088792
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0195605   -0.0315753   -0.0075457
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0108237   -0.0218892    0.0002417
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0091166   -0.0117323    0.0299655
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0034762   -0.0195802    0.0265327
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0128692   -0.0295660    0.0038275
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0310363   -0.0547301   -0.0073426
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0048174   -0.0330147    0.0233799
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0252288   -0.0493015   -0.0011562
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0272588   -0.0614929    0.0069753
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0205697   -0.0456915    0.0045521
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4         -0.0020792   -0.0254583    0.0212999
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0138477   -0.0281169    0.0558123
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0061685   -0.0513327    0.0389958
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.0476475   -0.0157594    0.1110544
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0414582   -0.0824487   -0.0004678
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0285238   -0.0707930    0.0137455
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0051408   -0.0307016    0.0409832
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0111294   -0.0386999    0.0164412
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0264037   -0.0109221    0.0637295
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0326840   -0.0026373    0.0680053
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0298732   -0.0571867   -0.0025596
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0086515   -0.0366669    0.0193640
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0145693   -0.0443678    0.0152291
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0110975   -0.0244276    0.0022325
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0015903   -0.0156450    0.0124645
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0123035   -0.0268977    0.0022907
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0098466   -0.0180229   -0.0016703
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0007827   -0.0094610    0.0078957
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0014044   -0.0103037    0.0074948
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0012470   -0.0137751    0.0112811
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0014094   -0.0140949    0.0112762
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0006155   -0.0128824    0.0141135
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0069054   -0.0503708    0.0641816
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0317239   -0.0259506    0.0893984
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0173408   -0.0438505    0.0785321
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0062325   -0.0144768    0.0020117
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0071647   -0.0148231    0.0004936
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0114695   -0.0190759   -0.0038631
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0079399   -0.0141862   -0.0016936
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0191422   -0.0251364   -0.0131481
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0114407   -0.0168526   -0.0060288
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0050300   -0.0107935    0.0208536
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0088754   -0.0231957    0.0054448
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0013075   -0.0155243    0.0129094
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0044632   -0.0083041   -0.0006224
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4          0.0003030   -0.0034529    0.0040589
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0030249   -0.0072733    0.0012234
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0014288   -0.0064003    0.0035427
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0016184   -0.0062632    0.0030264
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0019962   -0.0068225    0.0028301
