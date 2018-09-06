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

unadjusted

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
![](/tmp/64d82e5c-522c-4cae-9dcb-d48c5551fc7e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/64d82e5c-522c-4cae-9dcb-d48c5551fc7e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                3.5606954   3.3734532   3.7479375
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                3.5620156   3.3661433   3.7578880
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                3.5694837   3.3647214   3.7742461
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                3.3940501   3.1450454   3.6430549
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                3.9323501   3.5133349   4.3513654
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                3.3896245   3.1590264   3.6202226
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                3.8927844   3.5498904   4.2356784
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                3.4789233   3.1433236   3.8145231
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                3.6721423   3.3300360   4.0142486
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                3.8548682   3.5576403   4.1520961
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                3.6829492   3.3347780   4.0311204
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                3.8492004   3.4682191   4.2301817
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                3.0541272   2.8015221   3.3067324
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                3.5122516   3.3998260   3.6246772
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                3.0673954   2.7516997   3.3830911
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                3.3153519   3.0628090   3.5678948
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                3.2140317   2.8546790   3.5733843
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                3.6959138   3.3461573   4.0456702
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                3.4032484   3.0151371   3.7913597
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                3.3833556   3.1020123   3.6646989
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                3.3900374   3.0531527   3.7269222
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                3.5250323   3.1750918   3.8749729
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                3.7215344   3.5148272   3.9282416
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                3.5631963   3.1044806   4.0219119
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                3.2286322   2.8326062   3.6246582
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                3.5931003   3.1289761   4.0572245
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                3.5323129   3.0151053   4.0495206
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                3.8418463   3.4853506   4.1983420
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                3.2831466   3.0468662   3.5194270
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                2.9382574   2.7252005   3.1513142
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                3.1294262   2.9166904   3.3421619
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                3.3553221   3.1299372   3.5807070
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                3.5645408   3.4904959   3.6385856
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                3.3982490   3.3162306   3.4802675
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                3.4643214   3.3861307   3.5425122
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                3.4964337   3.4192545   3.5736128
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                3.9898145   3.8052975   4.1743315
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                3.6471591   3.2148518   4.0794664
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                3.4002936   3.1552176   3.6453696
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                3.5733610   3.2070655   3.9396566
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                2.5977458   2.5199206   2.6755710
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                2.5703560   2.4790181   2.6616938
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                2.6267206   2.5262680   2.7271731
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                2.6617150   2.5757818   2.7476482
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                3.7601797   3.7417911   3.7785683
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                3.6775065   3.6584713   3.6965417
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                3.7025981   3.6847389   3.7204573
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                3.7384174   3.7209081   3.7559267
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                3.6444546   3.5779568   3.7109525
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                3.6095338   3.5490684   3.6699991
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                3.6375944   3.5767372   3.6984516
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                3.6615411   3.5961631   3.7269192
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                1.9057864   1.7393640   2.0722088
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.9622643   1.7982911   2.1262374
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                1.8625636   1.6636969   2.0614302
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                2.0165198   1.8528386   2.1802010
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                1.6773865   1.4368208   1.9179523
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                1.9995557   1.7658741   2.2332373
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                1.9453495   1.7081297   2.1825693
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.7228420   1.4465065   1.9991774
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.9447125   1.6341377   2.2552873
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                2.0959441   1.8135316   2.3783566
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                2.0784407   1.7694566   2.3874248
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                2.0422352   1.7268818   2.3575887
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                2.1700496   1.7289232   2.6111760
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                2.0058769   1.8193168   2.1924370
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                1.9086166   1.5308392   2.2863940
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.8154184   1.5665961   2.0642407
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                2.2468626   1.9842663   2.5094588
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.7383073   1.3981637   2.0784508
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                2.0037128   1.6092192   2.3982063
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                2.1718401   1.9436765   2.4000038
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7469794   1.5170199   1.9769388
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.6370190   1.3296789   1.9443591
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.7943224   1.5649065   2.0237382
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7513678   1.3135894   2.1891462
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.7853847   1.5806502   1.9901193
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                2.0084703   1.8197517   2.1971890
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.7064158   1.5111848   1.9016469
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.7190412   1.5094648   1.9286176
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                1.8993306   1.7456184   2.0530427
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                1.8457051   1.7369106   1.9544996
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                1.8453766   1.7215215   1.9692318
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                1.9344450   1.8108720   2.0580179
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.9496998   1.8783006   2.0210990
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.9311424   1.8574560   2.0048287
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.9444450   1.8731989   2.0156911
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                2.0358762   1.9730533   2.0986990
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7529404   1.6823949   1.8234858
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8578798   1.7931364   1.9226233
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8154517   1.7299232   1.9009801
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7373932   1.6686073   1.8061791
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.6934321   1.6126103   1.7742538
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.7152166   1.6387954   1.7916378
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.6744707   1.5985391   1.7504022
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.7402432   1.6616453   1.8188411
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                2.0969752   1.9944791   2.1994712
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                2.1073650   2.0086301   2.2061000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                2.1093902   2.0242966   2.1944838
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                2.0201314   1.9273612   2.1129017
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.7700897   1.7219883   1.8181912
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.6990880   1.6295428   1.7686332
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                1.7384546   1.6602018   1.8167073
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                1.8048842   1.7434681   1.8663004
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                1.9296283   1.9109029   1.9483538
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                1.9134308   1.8928376   1.9340240
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                1.9222240   1.9014365   1.9430115
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                1.9136200   1.8952343   1.9320056
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.9202899   1.8608166   1.9797633
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.8919684   1.8350385   1.9488982
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.8846259   1.8376807   1.9315712
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.9009925   1.8323403   1.9696447
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                1.1050323   1.0257013   1.1843633
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                1.0429266   0.9518474   1.1340059
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                1.0886651   0.9944316   1.1828986
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                1.1138747   1.0168553   1.2108942
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                1.0691102   0.9685851   1.1696353
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                1.1464520   1.0540788   1.2388253
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                1.1483676   1.0286421   1.2680931
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                1.1645655   1.0358211   1.2933099
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                1.1539129   1.0471165   1.2607094
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                1.2307835   1.1029479   1.3586192
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                1.1665086   1.0704563   1.2625610
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                1.1642094   1.0395179   1.2889009
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                1.1127754   0.9822039   1.2433469
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                1.1958614   1.0771215   1.3146012
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                1.2903693   1.0735122   1.5072265
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                1.0377311   0.9063783   1.1690839
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                1.1124383   0.9587403   1.2661363
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                1.1488280   0.9813847   1.3162712
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                1.1772097   0.9915626   1.3628568
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                1.2898953   1.1682799   1.4115106
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.0393803   0.9347778   1.1439828
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0594723   0.8897081   1.2292364
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9638806   0.8114598   1.1163013
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.0070643   0.8065519   1.2075766
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.1258074   1.0310449   1.2205699
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                1.0031877   0.9169130   1.0894624
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.0294856   0.9460213   1.1129498
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.0902387   0.9767097   1.2037677
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                1.2851695   1.2162050   1.3541339
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                1.2806680   1.2258701   1.3354659
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                1.2275794   1.1767545   1.2784042
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                1.2014627   1.1450722   1.2578531
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.2463416   1.2128757   1.2798075
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.0950857   1.0637830   1.1263883
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.1609069   1.1281242   1.1936896
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.1818880   1.1464034   1.2173727
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.1993432   1.1536813   1.2450051
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.1913950   1.1553172   1.2274728
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.2152337   1.1680132   1.2624542
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.1839100   1.1378477   1.2299723
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.1793611   1.1397102   1.2190121
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.1569123   1.1174640   1.1963607
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.1717555   1.1327285   1.2107825
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.1635160   1.1249543   1.2020778
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.3550097   1.2990545   1.4109649
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.2668428   1.2077853   1.3259003
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.3265101   1.2707171   1.3823031
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.2588250   1.2019871   1.3156629
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.0369939   1.0089428   1.0650450
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.0189722   0.9791682   1.0587762
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                1.0059735   0.9659118   1.0460351
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.9924215   0.9562375   1.0286054
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                1.1251415   1.1024121   1.1478709
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.9954799   0.9690410   1.0219189
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                1.0700959   1.0420533   1.0981385
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                1.0609983   1.0398412   1.0821553
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                1.2917187   1.2417650   1.3416725
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.2384399   1.1749779   1.3019020
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                1.2773508   1.2272908   1.3274109
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                1.3036325   1.2584791   1.3487859
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                1.1394089   1.1263990   1.1524187
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                1.0961903   1.0835450   1.1088355
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                1.0811339   1.0690168   1.0932511
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                1.1073213   1.0956464   1.1189963
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.2419872   1.2206510   1.2633234
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.1787854   1.1597009   1.1978698
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.1834910   1.1627587   1.2042232
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.2087285   1.1897747   1.2276823
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.8555906   0.8092782   0.9019030
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.8443036   0.7938658   0.8947413
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.8619464   0.8017286   0.9221641
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.8238964   0.7794640   0.8683288
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.9106473   0.8469530   0.9743416
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.8124182   0.7596840   0.8651525
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.9116567   0.8525985   0.9707148
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.8232292   0.7760484   0.8704101
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            NA                0.8632029   0.8176856   0.9087202
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            NA                0.8185599   0.7366844   0.9004354
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            NA                0.8392015   0.7643068   0.9140961
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            NA                0.8917558   0.8337197   0.9497920
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            NA                0.7878002   0.6659010   0.9096995
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            NA                0.8381704   0.7959490   0.8803917
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            NA                0.7535548   0.6822601   0.8248495
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            NA                0.9303729   0.7914936   1.0692521
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.8871986   0.8103324   0.9640648
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.7763533   0.6778440   0.8748627
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.8400260   0.7321976   0.9478545
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.9405485   0.8639466   1.0171504
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7099788   0.6280642   0.7918935
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.7146470   0.6325702   0.7967237
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7837041   0.6833717   0.8840365
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7589534   0.6631646   0.8547421
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7725794   0.7175813   0.8275775
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.6966988   0.6476250   0.7457726
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7426334   0.6910102   0.7942565
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7444756   0.6873868   0.8015644
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.8552254   0.8122289   0.8982219
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.8025330   0.7714586   0.8336074
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.8432461   0.8031778   0.8833144
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.8189065   0.7783588   0.8594542
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8821697   0.8600122   0.9043272
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.8197518   0.7972362   0.8422674
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8565025   0.8325236   0.8804814
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8653258   0.8398804   0.8907711
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8436326   0.8135217   0.8737434
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8274064   0.7962324   0.8585803
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8348821   0.8074667   0.8622975
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8452968   0.8100951   0.8804986
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.9223297   0.7942771   1.0503824
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9164412   0.8739677   0.9589147
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9412926   0.8871407   0.9954445
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9256900   0.8457424   1.0056376
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7998566   0.7817114   0.8180019
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7695726   0.7436316   0.7955136
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7750506   0.7519111   0.7981901
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7563098   0.7344591   0.7781606
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7478201   0.7342924   0.7613478
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6995559   0.6821063   0.7170055
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6759606   0.6591982   0.6927231
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6931954   0.6810364   0.7053544
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8452593   0.8176022   0.8729164
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.8607732   0.8201533   0.9013931
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.8150899   0.7819262   0.8482537
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.8407329   0.8073339   0.8741319
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.8140234   0.8036455   0.8244012
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.7824535   0.7724990   0.7924079
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.7943504   0.7853574   0.8033433
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.7942430   0.7828133   0.8056727
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.8625842   0.8506721   0.8744963
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.8386492   0.8282327   0.8490657
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.8436812   0.8337859   0.8535765
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.8519709   0.8429481   0.8609937


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0013203   -0.2696513    0.2722918
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0087884   -0.2686774    0.2862541
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1666452   -0.4781945    0.1449041
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.5427257   -1.0210031   -0.0644482
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         -0.0395658   -0.5809992    0.5018676
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.4534268   -0.9902703    0.0834167
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1827259   -0.2704641    0.6359158
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0108069   -0.4773119    0.4989256
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.1770581   -0.3349804    0.6890966
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.4581244    0.1816304    0.7346183
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.0132682   -0.3910499    0.4175863
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.2612246   -0.0959690    0.6184183
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.4818821   -0.0195796    0.9833438
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.1892168   -0.3397111    0.7181447
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1693240   -0.2870622    0.6257102
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1349949   -0.3507517    0.6207414
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.3314970   -0.0637487    0.7267427
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1731588   -0.3959733    0.7422910
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.3644681   -0.2456531    0.9745893
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3036807   -0.3477334    0.9550948
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.6132141    0.0803672    1.1460609
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3448893   -0.6630428   -0.0267358
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1537204   -0.4716590    0.1642181
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0721755   -0.2543621    0.3987130
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1662918   -0.2767891   -0.0557944
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1002193   -0.2079061    0.0074674
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0681071   -0.1750616    0.0388474
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3426554   -0.8126938    0.1273830
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.5895209   -0.8962924   -0.2827494
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.4164535   -0.8265985   -0.0063084
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0273898   -0.1473872    0.0926075
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0289748   -0.0980980    0.1560475
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0639692   -0.0519673    0.1799057
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0826732   -0.1085052   -0.0568412
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0575816   -0.0824708   -0.0326924
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0217623   -0.0456861    0.0021616
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0349209   -0.1255585    0.0557168
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0068602   -0.0998779    0.0861574
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0170865   -0.0750011    0.1091740
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4          0.0564779   -0.1771535    0.2901092
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0432228   -0.3025380    0.2160923
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.1107334   -0.1226931    0.3441600
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.3221691   -0.0132097    0.6575480
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.2679630   -0.0698907    0.6058167
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0454554   -0.3209230    0.4118339
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.1512316   -0.2685464    0.5710096
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.1337282   -0.3043676    0.5718240
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0975227   -0.3450883    0.5401338
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4         -0.1641727   -0.6431269    0.3147816
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.2614330   -0.8422155    0.3193494
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.3546312   -0.8610945    0.1518320
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.5085553   -0.9382697   -0.0788409
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.2431498   -0.7170506    0.2307510
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0750225   -0.4228952    0.2728503
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1099604   -0.4938084    0.2738876
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0473430   -0.2774846    0.3721706
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0043885   -0.4901126    0.4988895
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2230856   -0.0553582    0.5015294
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0789689   -0.3618671    0.2039293
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0663435   -0.3593256    0.2266386
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0536255   -0.2419435    0.1346925
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0539539   -0.2513559    0.1434480
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0351144   -0.1621106    0.2323394
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0185574   -0.1211611    0.0840463
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0052548   -0.1061203    0.0956108
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0861764   -0.0089265    0.1812793
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1049395    0.0091879    0.2006911
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0625113   -0.0483569    0.1733796
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0155472   -0.1140771    0.0829828
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0217845   -0.0894466    0.1330156
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0189614   -0.1298567    0.0919338
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0468112   -0.0659265    0.1595488
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0103899   -0.1319268    0.1527066
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0124151   -0.1208004    0.1456306
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0768437   -0.2150890    0.0614015
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0710017   -0.1555611    0.0135576
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0316352   -0.1234896    0.0602193
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0347945   -0.0432164    0.1128053
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0161975   -0.0438192    0.0114242
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0074043   -0.0341495    0.0193409
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0160084   -0.0423571    0.0103404
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0283216   -0.1109571    0.0543140
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0356640   -0.1111567    0.0398287
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0192974   -0.1093011    0.0707063
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0621057   -0.1828899    0.0586786
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0163672   -0.1395474    0.1068130
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4          0.0088424   -0.1164819    0.1341667
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4          0.0773418   -0.0591797    0.2138633
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0792574   -0.0770740    0.2355888
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4          0.0954553   -0.0678861    0.2587968
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4          0.0768706   -0.0897050    0.2434462
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4          0.0125957   -0.1310411    0.1562325
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0102964   -0.1538786    0.1744715
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0830860   -0.0934022    0.2595741
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4          0.1775940   -0.0755383    0.4307262
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4         -0.0750443   -0.2602535    0.1101649
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0363897   -0.1908993    0.2636788
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0647715   -0.1762429    0.3057858
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1774570   -0.0185363    0.3734503
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0200920   -0.1793110    0.2194949
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0754997   -0.2603612    0.1093617
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0323160   -0.2584728    0.1938407
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1226198   -0.2507730    0.0055335
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0963219   -0.2226002    0.0299565
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0355687   -0.1834497    0.1123122
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0045014   -0.0925860    0.0835832
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0575901   -0.1432595    0.0280794
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0837068   -0.1727909    0.0053773
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1512559   -0.1970798   -0.1054321
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0854347   -0.1322820   -0.0385874
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0644536   -0.1132299   -0.0156773
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0079482   -0.0661428    0.0502464
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0158904   -0.0497966    0.0815775
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0154332   -0.0802926    0.0494262
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0224488   -0.0783807    0.0334830
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0076056   -0.0632411    0.0480298
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0158451   -0.0711552    0.0394650
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0881669   -0.1695228   -0.0068110
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0284996   -0.1075176    0.0505184
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0961847   -0.1759439   -0.0164255
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0180217   -0.0667169    0.0306735
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0310204   -0.0799264    0.0178856
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0445724   -0.0903561    0.0012112
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.1296616   -0.1645276   -0.0947955
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0550456   -0.0911428   -0.0189483
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0641432   -0.0951955   -0.0330910
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0532788   -0.1340427    0.0274851
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0143679   -0.0850883    0.0563526
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0119138   -0.0554227    0.0792503
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0432186   -0.0610768   -0.0253604
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0582750   -0.0755051   -0.0410448
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0320875   -0.0493822   -0.0147929
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0632018   -0.0910321   -0.0353715
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0584962   -0.0891635   -0.0278289
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0332587   -0.0613146   -0.0052027
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0112871   -0.0797619    0.0571877
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4          0.0063557   -0.0696115    0.0823229
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0316942   -0.0958743    0.0324858
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         -0.0982290   -0.1809204   -0.0155377
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4          0.0010094   -0.0858516    0.0878703
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         -0.0874180   -0.1666833   -0.0081527
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1            Wealth Q4         -0.0446430   -0.1383202    0.0490342
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2            Wealth Q4         -0.0240014   -0.1116429    0.0636401
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3            Wealth Q4          0.0285530   -0.0452036    0.1023095
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1            Wealth Q4          0.0503701   -0.0786340    0.1793742
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2            Wealth Q4         -0.0342455   -0.1754628    0.1069719
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3            Wealth Q4          0.1425726   -0.0422160    0.3273613
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1108453   -0.2357953    0.0141047
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0471726   -0.1795938    0.0852486
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0533499   -0.0551686    0.1618684
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0046681   -0.1112914    0.1206276
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0737253   -0.0557993    0.2032498
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0489745   -0.0770632    0.1750122
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0758806   -0.1495897   -0.0021716
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0299460   -0.1053764    0.0454843
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0281038   -0.1073750    0.0511674
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0526924   -0.1057425    0.0003577
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0119793   -0.0707515    0.0467928
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0363189   -0.0954190    0.0227811
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0624179   -0.0940076   -0.0308282
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0256672   -0.0583160    0.0069816
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0168439   -0.0505844    0.0168966
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0162262   -0.0595676    0.0271152
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0087505   -0.0494723    0.0319714
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0016642   -0.0446588    0.0479873
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0058886   -0.1408014    0.1290243
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0189629   -0.1200692    0.1579949
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0033603   -0.1476003    0.1543209
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0302840   -0.0619413    0.0013733
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0248061   -0.0542116    0.0045995
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0435468   -0.0719494   -0.0151443
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0482642   -0.0703433   -0.0261850
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0718594   -0.0933996   -0.0503192
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0546246   -0.0728136   -0.0364356
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0155139   -0.0336276    0.0646554
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0301694   -0.0733521    0.0130134
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0045264   -0.0478901    0.0388372
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0315699   -0.0459506   -0.0171893
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0196730   -0.0330585   -0.0062875
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0197804   -0.0350149   -0.0045459
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0239350   -0.0392478   -0.0086221
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0189030   -0.0338659   -0.0039401
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0106133   -0.0253633    0.0041367
