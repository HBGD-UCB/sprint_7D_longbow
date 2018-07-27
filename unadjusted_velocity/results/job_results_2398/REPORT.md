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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             26      82
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              4      82
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             15      82
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             37      82
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            167     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            155     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            152     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            160     634
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           4632   20030
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           5102   20030
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           5294   20030
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           5002   20030
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            389    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            450    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            473    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            493    1805
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              2       3
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              1       3
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            248     709
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            138     709
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            140     709
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            183     709
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             22      57
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1              1      57
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2              9      57
0-3 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             25      57
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             31      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             15      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             16      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             25      87
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4             86     377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1             98     377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2             96     377
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3             97     377
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             14      31
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      31
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2              4      31
0-3 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3              2      31
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q4              1      35
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             22      35
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             11      35
0-3 months     ki0047075b-MAL-ED          PERU                           Wealth Q3              1      35
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2              7      29
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3              8      29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             12      59
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              9      59
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             21      59
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             17      59
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             35      50
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      50
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             26      80
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              4      80
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             15      80
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             35      80
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            154     572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            135     572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            136     572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            147     572
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           3468   12573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2745   12573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           3198   12573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           3162   12573
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            408    1839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            463    1839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            477    1839
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            491    1839
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              2       3
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              1       3
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            284     780
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            146     780
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            156     780
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            194     780
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q4             28      70
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q1              1      70
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q2             10      70
3-6 months     ki0047075b-MAL-ED          INDIA                          Wealth Q3             31      70
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             80     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             75     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             79     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             73     307
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4             94     397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            105     397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2             98     397
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            100     397
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q4             21      42
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q2              6      42
3-6 months     ki0047075b-MAL-ED          NEPAL                          Wealth Q3              4      42
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            120     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            120     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            116     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            115     471
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q4              1      36
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q1             23      36
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q2             11      36
3-6 months     ki0047075b-MAL-ED          PERU                           Wealth Q3              1      36
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4             51     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1             59     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2             52     214
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3             52     214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             12      62
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             10      62
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             21      62
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             19      62
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             34      55
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             21      55
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            409    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            501    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            413    1655
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             26      78
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              3      78
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             15      78
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             34      78
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            146     544
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            127     544
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            135     544
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            136     544
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           2673    9832
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           2152    9832
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           2516    9832
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           2491    9832
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            761    3159
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            775    3159
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            782    3159
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            841    3159
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              2       3
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              1       3
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            315     836
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            160     836
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            175     836
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            186     836
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4             28      70
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1              1      70
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2             10      70
6-12 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3             31      70
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             82     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             78     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             84     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             79     323
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4             98     400
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            102     400
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2             98     400
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            102     400
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            114     430
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            102     430
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2             97     430
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            117     430
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4             21      42
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2              6      42
6-12 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3              4      42
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            124     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            116     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            122     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            113     475
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q4              1      35
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q1             22      35
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q2             11      35
6-12 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              1      35
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4             52     213
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1             59     213
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2             52     213
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3             50     213
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            675    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            483    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            434    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            827    2419
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             11      61
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             11      61
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             20      61
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             19      61
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             36      57
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             21      57
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            265    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            327    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            230    1077
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            255    1077
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4             25      75
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              3      75
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2             15      75
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3             32      75
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            120     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1             99     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            121     457
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            117     457
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4           1189    4648
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1           1072    4648
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2           1209    4648
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3           1178    4648
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            884    3635
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            895    3635
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            885    3635
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            971    3635
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4              2       3
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2              1       3
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            321     858
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            167     858
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            178     858
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            192     858
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4             28      70
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1              1      70
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2             10      70
12-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3             31      70
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4             83     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1             78     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2             83     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3             80     324
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4             97     396
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            102     396
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2             96     396
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            101     396
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4             83     307
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1             69     307
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2             68     307
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3             87     307
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4             21      42
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1             11      42
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2              6      42
12-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3              4      42
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            103     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1             86     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2             97     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3             81     367
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4              1      30
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1             20      30
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              8      30
12-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              1      30
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4              5      38
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1             14      38
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2             10      38
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3              9      38
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            636    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            438    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            400    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            786    2260
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4             12      64
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1             12      64
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2             22      64
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3             18      64
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1             39      59
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2             20      59
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              2       2


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
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e8ed34d6-03aa-4c95-9dff-47c7b601ab45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e8ed34d6-03aa-4c95-9dff-47c7b601ab45/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0991914   -0.2572704    0.0588876
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.1505288   -0.3132681    0.0122106
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.1283168   -0.2960424    0.0394088
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.1280280   -0.3195992    0.0635432
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0237112   -0.0428203    0.0902426
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0754467   -0.1146185   -0.0362749
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2229614   -0.4152258   -0.0306969
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0158550   -0.2530157    0.2213057
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0553316   -0.2953769    0.1847138
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0663301   -0.1102389    0.2428990
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2164740   -0.3366246   -0.0963234
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.3686670   -0.4731725   -0.2641615
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.2814964   -0.3879095   -0.1750834
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.1655705   -0.2786857   -0.0524553
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0050703   -0.0288347    0.0389752
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0812530   -0.1184540   -0.0440520
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0538606   -0.0914716   -0.0162495
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0391186   -0.0744859   -0.0037513
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.2116983    0.1106556    0.3127409
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0178807   -0.2673442    0.2315828
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.1263780   -0.2534315    0.0006756
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0469957   -0.2526421    0.1586506
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.5485832   -0.5869303   -0.5102361
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.5585008   -0.6044891   -0.5125124
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.5429189   -0.5963570   -0.4894808
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.5182315   -0.5610342   -0.4754288
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0898306    0.0809654    0.0986958
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                 0.0540420    0.0448098    0.0632742
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                 0.0618189    0.0532997    0.0703381
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                 0.0787982    0.0705083    0.0870882
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0670735    0.0355541    0.0985929
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                 0.0497016    0.0202026    0.0792005
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                 0.0708143    0.0411511    0.1004775
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                 0.0812061    0.0500424    0.1123698
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1037879   -0.0197487    0.2273245
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                 0.1730527    0.0069325    0.3391729
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0872891   -0.2256275    0.0510493
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                 0.0154988   -0.1280265    0.1590241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1322510   -0.1935711   -0.0709309
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1006031   -0.1405048   -0.0607015
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1076145   -0.2042072   -0.0110218
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                 0.0055970   -0.0823603    0.0935543
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1426140   -0.2359707   -0.0492572
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1454561   -0.2440950   -0.0468172
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0514392   -0.1233850    0.0205067
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0578166   -0.1090255   -0.0066077
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0679879   -0.1272324   -0.0087434
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0303221   -0.0887010    0.0280568
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0341132   -0.0668417   -0.0013847
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0382992   -0.0730129   -0.0035855
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0393913   -0.0735964   -0.0051862
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                 0.0027509   -0.0268549    0.0323567
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1033446   -0.1364845   -0.0702048
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0584490   -0.0884163   -0.0284817
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0757319   -0.1154369   -0.0360270
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1088459   -0.1404693   -0.0772225
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1702694   -0.2089856   -0.1315531
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.1596628   -0.1960118   -0.1233138
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.1846149   -0.2216658   -0.1475640
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.1493675   -0.1849186   -0.1138163
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0179365   -0.0312599    0.0671328
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.0244053   -0.0204440    0.0692546
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0285651   -0.0114979    0.0686281
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0213503   -0.0652880    0.0225875
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0918641   -0.1146787   -0.0690495
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1223356   -0.1553562   -0.0893150
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1092965   -0.1463958   -0.0721971
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0782644   -0.1077311   -0.0487978
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0033501   -0.0121014    0.0054012
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0030139   -0.0127174    0.0066895
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0009448   -0.0105287    0.0086392
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0064503   -0.0149829    0.0020822
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0037217   -0.0309257    0.0234823
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0097681   -0.0360431    0.0165068
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0125466   -0.0343282    0.0092351
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0086432   -0.0400227    0.0227363
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0359858   -0.1269668    0.0549951
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.1375864   -0.2091173   -0.0660556
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0712976   -0.1267784   -0.0158168
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0187723   -0.0722447    0.0347000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1156439   -0.1445186   -0.0867692
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1234472   -0.1390330   -0.1078613
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0678755   -0.1086415   -0.0271095
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1304880   -0.1673330   -0.0936430
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1107910   -0.1465165   -0.0750656
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0890677   -0.1380727   -0.0400627
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0139760   -0.0440690    0.0161169
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0083562   -0.0323464    0.0156340
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0323725   -0.0550749   -0.0096700
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0491330   -0.0742744   -0.0239915
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0363853   -0.0503670   -0.0224036
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0879456   -0.1006464   -0.0752448
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0678816   -0.0812784   -0.0544849
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0610238   -0.0747914   -0.0472561
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0548804   -0.0741782   -0.0355827
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0631623   -0.0784043   -0.0479204
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0530801   -0.0736492   -0.0325110
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0656266   -0.0852364   -0.0460169
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0576545   -0.0743666   -0.0409423
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0640771   -0.0804267   -0.0477275
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0610866   -0.0777394   -0.0444337
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0635041   -0.0794290   -0.0475791
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0020387   -0.0269794    0.0229020
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0351965   -0.0603800   -0.0100129
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0145191   -0.0382311    0.0091928
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0380292   -0.0623760   -0.0136823
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1031075   -0.1143607   -0.0918543
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1064874   -0.1229804   -0.0899944
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1130385   -0.1296221   -0.0964549
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1203780   -0.1356898   -0.1050663
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0798892   -0.0895091   -0.0702694
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.1271206   -0.1380534   -0.1161878
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.0991427   -0.1109938   -0.0872917
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.1008468   -0.1097346   -0.0919590
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0017542   -0.0226705    0.0191622
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0249013   -0.0517855    0.0019828
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0068646   -0.0275629    0.0138338
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.0041407   -0.0147042    0.0229855
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0658657   -0.0713779   -0.0603536
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0759278   -0.0811471   -0.0707085
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0840562   -0.0893195   -0.0787929
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0742470   -0.0792498   -0.0692441
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0257416   -0.0348528   -0.0166303
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0443993   -0.0523350   -0.0364636
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0460665   -0.0549101   -0.0372228
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0370820   -0.0450298   -0.0291343
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0275347   -0.0790161    0.0239468
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0056466   -0.0301579    0.0188648
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0315646   -0.0592002   -0.0039291
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0103723   -0.0367323    0.0159877
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0447512   -0.0573217   -0.0321806
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0535604   -0.0618010   -0.0453198
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0313532   -0.0522299   -0.0104766
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0629600   -0.0813619   -0.0445581
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0414091   -0.0607520   -0.0220662
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0474726   -0.0693561   -0.0255891
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0257324   -0.0420634   -0.0094015
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0381361   -0.0491058   -0.0271663
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0245185   -0.0384600   -0.0105770
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0380267   -0.0527621   -0.0232912
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0063681   -0.0136744    0.0009381
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0131232   -0.0205401   -0.0057062
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0070554   -0.0147042    0.0005935
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0070563   -0.0152483    0.0011356
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0144426   -0.0245742   -0.0043110
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0177011   -0.0273919   -0.0080104
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0159780   -0.0255187   -0.0064373
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0142293   -0.0251380   -0.0033206
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0391112   -0.0943100    0.0160876
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0322057   -0.0474915   -0.0169200
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0073873   -0.0241038    0.0093293
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0217704   -0.0481799    0.0046392
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0257515   -0.0319276   -0.0195755
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0307838   -0.0397006   -0.0218670
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0294068   -0.0371222   -0.0216913
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0352325   -0.0427748   -0.0276902
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0481796   -0.0529326   -0.0434266
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.0569157   -0.0629578   -0.0508737
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.0683385   -0.0740785   -0.0625986
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.0602885   -0.0644533   -0.0561238
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0147024   -0.0248193   -0.0045855
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0097435   -0.0233092    0.0038223
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0227008   -0.0344032   -0.0109985
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0171761   -0.0283494   -0.0060028
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0179116   -0.0215962   -0.0142270
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0211117   -0.0247447   -0.0174787
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0163962   -0.0196973   -0.0130950
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0199760   -0.0238028   -0.0161492
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0138075   -0.0179328   -0.0096823
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0141645   -0.0178569   -0.0104721
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0151523   -0.0184679   -0.0118367
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0151675   -0.0184544   -0.0118806


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1256980   -0.2166749   -0.0347212
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0060362   -0.0842841    0.0722117
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0033142   -0.0990835    0.1057118
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5415610   -0.5638006   -0.5193214
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705560    0.0656018    0.0755101
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0675829    0.0526455    0.0825202
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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748465   -0.0776904   -0.0720026
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383693   -0.0427362   -0.0340025
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187787   -0.0206287   -0.0169287
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0145861   -0.0164603   -0.0127119


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0513374   -0.2782142    0.1755394
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0291254   -0.2596050    0.2013542
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0288366   -0.2772083    0.2195351
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.0991579   -0.1763645   -0.0219512
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2071064   -0.0981981    0.5124108
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.1676298   -0.1399208    0.4751804
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.2892915    0.0282508    0.5503321
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1521930   -0.3114336    0.0070476
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0650224   -0.2255213    0.0954765
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0509035   -0.1141153    0.2159224
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0863233   -0.1366568   -0.0359897
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0589308   -0.1095681   -0.0082935
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0441889   -0.0931827    0.0048049
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2295790   -0.4987288    0.0395709
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.3380763   -0.5004099   -0.1757426
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2586940   -0.4878229   -0.0295651
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0099176   -0.0697960    0.0499609
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0056643   -0.0601090    0.0714377
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0303517   -0.0271164    0.0878197
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0357886   -0.0481858   -0.0233914
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0280117   -0.0398996   -0.0161238
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0110324   -0.0226952    0.0006304
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0173719   -0.0611979    0.0264540
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4          0.0037408   -0.0406147    0.0480963
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0141326   -0.0296949    0.0579601
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0692648   -0.1377550    0.2762847
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1910770   -0.3765461   -0.0056078
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0882891   -0.2776586    0.1010804
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1          0.0316478   -0.0415115    0.1048072
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1132115   -0.0174279    0.2438508
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0349995   -0.1693335    0.0993345
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0378416   -0.1758988    0.1002156
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0063774   -0.0946869    0.0819320
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0165487   -0.1097481    0.0766506
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0211170   -0.0715345    0.1137686
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0041860   -0.0518955    0.0435235
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0052781   -0.0526189    0.0420626
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0368641   -0.0072682    0.0809964
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0448956    0.0002158    0.0895755
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0276127   -0.0241051    0.0793305
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0055013   -0.0513084    0.0403058
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0106066   -0.0424989    0.0637121
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0143455   -0.0679339    0.0392429
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0209019   -0.0316607    0.0734645
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0064688   -0.0601025    0.0730401
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0106286   -0.0528168    0.0740740
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0392867   -0.1052473    0.0266739
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0304715   -0.0706071    0.0096641
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0174323   -0.0609854    0.0261207
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0135997   -0.0236668    0.0508662
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4          0.0003361   -0.0126582    0.0133305
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4          0.0024053   -0.0099689    0.0147795
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0031002   -0.0153109    0.0091104
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0060464   -0.0439898    0.0318969
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0088248   -0.0437096    0.0260600
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0049215   -0.0460235    0.0361805
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1016006   -0.2173339    0.0141327
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0353118   -0.1418747    0.0712512
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0172135   -0.0883177    0.1227447
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.0078033   -0.0406159    0.0250093
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0626125   -0.1175618   -0.0076632
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0429156   -0.0971205    0.0112894
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0211922   -0.0849367    0.0425523
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0056198   -0.0328655    0.0441051
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0183964   -0.0560924    0.0192995
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0351569   -0.0743702    0.0040563
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0515603   -0.0704494   -0.0326711
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0314963   -0.0508603   -0.0121324
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0246385   -0.0442608   -0.0050161
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0082819   -0.0328729    0.0163091
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0018003   -0.0264041    0.0300047
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0107462   -0.0382588    0.0167664
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0064227   -0.0298022    0.0169569
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0034321   -0.0270248    0.0201606
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0058496   -0.0289342    0.0172350
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0331577   -0.0686014    0.0022859
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0124804   -0.0468940    0.0219332
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0359905   -0.0708446   -0.0011363
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0033799   -0.0233463    0.0165864
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0099310   -0.0299723    0.0101102
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0172706   -0.0362728    0.0017317
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0472314   -0.0617939   -0.0326688
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0192535   -0.0345175   -0.0039895
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0209575   -0.0340547   -0.0078604
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0231472   -0.0572096    0.0109153
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0051104   -0.0345368    0.0243161
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0058949   -0.0222587    0.0340484
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0100621   -0.0175716   -0.0025525
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0181905   -0.0256032   -0.0107777
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0083812   -0.0156989   -0.0010635
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0186577   -0.0304622   -0.0068533
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0203249   -0.0333260   -0.0073238
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0113405   -0.0232465    0.0005655
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0218881   -0.0351307    0.0789069
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0040300   -0.0624600    0.0544000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0171623   -0.0406753    0.0749999
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.0088092   -0.0238401    0.0062216
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0316068   -0.0594360   -0.0037776
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0100558   -0.0385160    0.0184043
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0161193   -0.0463637    0.0141251
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0124036   -0.0320768    0.0072696
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0012139   -0.0202585    0.0226864
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0122942   -0.0342905    0.0097020
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0067551   -0.0171662    0.0036561
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0006873   -0.0112649    0.0098904
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0006882   -0.0116650    0.0102886
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0032585   -0.0172785    0.0107615
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0015354   -0.0154521    0.0123813
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0002133   -0.0146746    0.0151012
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0069054   -0.0503708    0.0641816
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0317239   -0.0259506    0.0893984
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0173408   -0.0438505    0.0785321
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0050322   -0.0158790    0.0058146
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0036552   -0.0135381    0.0062277
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0094809   -0.0192293    0.0002674
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0087361   -0.0164236   -0.0010486
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0201589   -0.0276113   -0.0127065
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0121089   -0.0184284   -0.0057894
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0049589   -0.0119639    0.0218818
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0079984   -0.0234676    0.0074708
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0024737   -0.0175467    0.0125992
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0032001   -0.0083701    0.0019698
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4          0.0015155   -0.0033326    0.0063635
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0020644   -0.0072657    0.0031369
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0003569   -0.0057484    0.0050345
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0013448   -0.0064158    0.0037263
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0013599   -0.0066520    0.0039321
