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
![](/tmp/cf909a9a-1f05-411f-92ce-27594cb1d39e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cf909a9a-1f05-411f-92ce-27594cb1d39e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.1019576   -0.2523187    0.0484036
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.1457489   -0.3006502    0.0091525
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.1287775   -0.2887869    0.0312319
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.1268861   -0.3095209    0.0557487
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0833029   -0.0083862    0.1749921
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0129631   -0.1055644    0.1314906
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2141452   -0.3947144   -0.0335759
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0239266   -0.2425947    0.1947414
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0570635   -0.2816519    0.1675248
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0581133   -0.1081416    0.2243682
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2116605   -0.3151198   -0.1082011
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.3509138   -0.4444108   -0.2574169
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.2895184   -0.3847141   -0.1943226
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.1826476   -0.2846820   -0.0806132
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0286478    0.0011079    0.0561878
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0781404   -0.1081173   -0.0481635
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0405753   -0.0711394   -0.0100113
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0276997   -0.0574870    0.0020875
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.2670471    0.1075170    0.4265771
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.0338297   -0.1657455    0.2334048
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.1254897   -0.2496347   -0.0013447
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0320130   -0.2138866    0.1498606
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.5415360   -0.5752486   -0.5078233
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.5459361   -0.5813747   -0.5104974
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.5327013   -0.5742781   -0.4911246
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.5080463   -0.5441174   -0.4719751
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0985833    0.0908421    0.1063245
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                 0.0426088    0.0345876    0.0506301
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                 0.0581503    0.0504983    0.0658024
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                 0.0782132    0.0709520    0.0854743
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0730675    0.0463040    0.0998310
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                 0.0406144    0.0139614    0.0672673
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                 0.0672136    0.0416616    0.0927655
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                 0.0805936    0.0527603    0.1084269
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0776513   -0.1910194    0.0357167
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0390076   -0.1803137    0.1022985
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.1685934   -0.2929945   -0.0441923
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0956370   -0.2237642    0.0324903
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0770713   -0.1539926   -0.0001501
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0627057   -0.0154539    0.1408654
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2013251   -0.2958048   -0.1068453
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1082723   -0.1955360   -0.0210086
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.2475933   -0.3366914   -0.1584953
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.2594871   -0.3552906   -0.1636837
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0913843   -0.1465797   -0.0361888
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.1051022   -0.1460787   -0.0641256
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.1025146   -0.1494005   -0.0556287
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0634882   -0.1095892   -0.0173872
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0673000   -0.0953215   -0.0392784
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0781079   -0.1075944   -0.0486214
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0740826   -0.1033624   -0.0448027
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0216863   -0.0470457    0.0036730
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1088821   -0.1389129   -0.0788514
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0620405   -0.0894709   -0.0346102
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0827891   -0.1181526   -0.0474256
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1112970   -0.1398390   -0.0827549
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1738774   -0.2121008   -0.1356539
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.1568156   -0.1926692   -0.1209621
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.1847090   -0.2213321   -0.1480860
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.1484936   -0.1837895   -0.1131977
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                 0.0171379   -0.0311019    0.0653777
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                 0.0249586   -0.0194725    0.0693897
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                 0.0272623   -0.0127757    0.0673003
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0198122   -0.0637289    0.0241044
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0922233   -0.1136402   -0.0708065
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1263654   -0.1562190   -0.0965119
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1121802   -0.1449173   -0.0794431
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0769397   -0.1036375   -0.0502418
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0020835   -0.0101127    0.0059456
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0099962   -0.0183837   -0.0016087
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0055251   -0.0140010    0.0029507
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0084627   -0.0161314   -0.0007941
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0144343   -0.0385698    0.0097011
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0169317   -0.0410032    0.0071399
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0233435   -0.0433799   -0.0033070
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0190829   -0.0469514    0.0087857
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.3001726   -0.3683464   -0.2319987
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.3420220   -0.3899918   -0.2940523
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.2334622   -0.2847271   -0.1821973
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.1977204   -0.2481503   -0.1472906
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1255741   -0.1604032   -0.0907449
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1640597   -0.1901058   -0.1380137
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0764166   -0.1111271   -0.0417060
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1232442   -0.1555090   -0.0909794
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1083552   -0.1392098   -0.0775006
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0808169   -0.1214577   -0.0401760
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0134741   -0.0420356    0.0150873
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0093853   -0.0325323    0.0137617
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0331102   -0.0549360   -0.0112844
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0475400   -0.0711838   -0.0238963
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0441374   -0.0552823   -0.0329926
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.1059602   -0.1157030   -0.0962173
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0780566   -0.0890415   -0.0670717
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0709122   -0.0819601   -0.0598643
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0482901   -0.0658269   -0.0307534
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0598890   -0.0737779   -0.0460002
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0482829   -0.0663641   -0.0302017
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0609372   -0.0783772   -0.0434972
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0576561   -0.0743674   -0.0409448
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0640694   -0.0804180   -0.0477208
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0610892   -0.0777415   -0.0444369
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0635073   -0.0794314   -0.0475832
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0019838   -0.0262810    0.0223134
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0356280   -0.0604302   -0.0108258
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0143702   -0.0374970    0.0087566
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0376245   -0.0610023   -0.0142467
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1059362   -0.1159241   -0.0959483
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1115630   -0.1249952   -0.0981308
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1214146   -0.1345337   -0.1082956
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1272143   -0.1396193   -0.1148093
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0817728   -0.0901122   -0.0734334
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.1312860   -0.1403473   -0.1222248
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.1009069   -0.1108517   -0.0909622
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.1012233   -0.1091829   -0.0932638
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0032300   -0.0224910    0.0160311
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0257187   -0.0490723   -0.0023651
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0057967   -0.0242398    0.0126463
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                 0.0044693   -0.0126027    0.0215413
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0649962   -0.0699935   -0.0599988
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0759215   -0.0805497   -0.0712932
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0830101   -0.0876909   -0.0783292
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0746311   -0.0791632   -0.0700991
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0297705   -0.0383776   -0.0211634
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0496045   -0.0568106   -0.0423985
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0506594   -0.0588613   -0.0424575
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0406842   -0.0482596   -0.0331088
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                -0.0258312   -0.0710851    0.0194227
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                -0.0058615   -0.0281915    0.0164684
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                -0.0329449   -0.0586676   -0.0072222
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                -0.0104436   -0.0348260    0.0139387
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0306364   -0.0483328   -0.0129399
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0065558   -0.0236484    0.0105368
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0103086   -0.0305896    0.0099723
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0410294   -0.0587855   -0.0232732
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0196543   -0.0385585   -0.0007500
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0255228   -0.0467868   -0.0042588
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0256374   -0.0419358   -0.0093391
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                -0.0380603   -0.0489897   -0.0271310
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                -0.0246224   -0.0385470   -0.0106977
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                -0.0380959   -0.0528034   -0.0233884
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0054664   -0.0100807   -0.0008521
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                -0.0123324   -0.0167203   -0.0079445
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                -0.0076852   -0.0126517   -0.0027187
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                -0.0061131   -0.0110040   -0.0012221
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0145358   -0.0246396   -0.0044321
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0173302   -0.0269723   -0.0076881
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0162341   -0.0257421   -0.0067262
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0141582   -0.0250376   -0.0032789
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0329379   -0.0791958    0.0133201
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                -0.0321261   -0.0467027   -0.0175496
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                -0.0080184   -0.0242085    0.0081718
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                -0.0216151   -0.0477361    0.0045059
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0245486   -0.0297155   -0.0193818
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0300325   -0.0366513   -0.0234138
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0316389   -0.0376115   -0.0256662
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0356125   -0.0412783   -0.0299467
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0488880   -0.0530229   -0.0447532
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.0564179   -0.0613434   -0.0514923
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.0678306   -0.0723461   -0.0633152
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.0601518   -0.0638341   -0.0564695
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0187687   -0.0282657   -0.0092717
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                -0.0134796   -0.0261080   -0.0008511
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                -0.0276853   -0.0382973   -0.0170732
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                -0.0201067   -0.0306599   -0.0095535
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0181624   -0.0210657   -0.0152592
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                -0.0224217   -0.0253207   -0.0195227
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                -0.0179328   -0.0206617   -0.0152038
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                -0.0212030   -0.0244519   -0.0179541
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0134228   -0.0172165   -0.0096292
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                -0.0151721   -0.0185788   -0.0117654
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                -0.0154748   -0.0185553   -0.0123944
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                -0.0156210   -0.0186034   -0.0126386


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
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0437913   -0.2580322    0.1704496
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0268200   -0.2425788    0.1889389
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0249285   -0.2578961    0.2080390
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.0703399   -0.2251730    0.0844933
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1902186   -0.0871399    0.4675770
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.1570816   -0.1247005    0.4388638
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.2722584    0.0337767    0.5107401
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1392534   -0.2715038   -0.0070030
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0778579   -0.2111474    0.0554316
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0290129   -0.1099986    0.1680243
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1067883   -0.1474829   -0.0660936
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0692231   -0.1103426   -0.0281037
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0563476   -0.0968525   -0.0158427
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2332174   -0.4985853    0.0321505
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.3925368   -0.5981325   -0.1869411
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2990601   -0.5562773   -0.0418428
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0044001   -0.0531761    0.0443759
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0088346   -0.0445312    0.0622005
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0334897   -0.0157580    0.0827374
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0559745   -0.0664849   -0.0454641
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0404330   -0.0508190   -0.0300469
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0203701   -0.0301688   -0.0105714
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0324532   -0.0695601    0.0046538
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0058540   -0.0419160    0.0302081
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0075261   -0.0290953    0.0441474
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0386437   -0.1415991    0.2188865
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0909420   -0.2554011    0.0735171
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0179856   -0.1841155    0.1481443
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1          0.1397770    0.0260061    0.2535480
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0930528   -0.0355479    0.2216535
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0462682   -0.1766724    0.0841359
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0581621   -0.1927392    0.0764151
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0137179   -0.0778691    0.0504333
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0111303   -0.0780195    0.0557588
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0278960   -0.0383554    0.0941475
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0108080   -0.0514984    0.0298825
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0067826   -0.0473255    0.0337603
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0456136    0.0078847    0.0833426
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0468416    0.0072782    0.0864050
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0260930   -0.0194343    0.0716204
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0024148   -0.0428896    0.0380599
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0170617   -0.0351074    0.0692308
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0108317   -0.0635523    0.0418889
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0253838   -0.0264638    0.0772313
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0078207   -0.0574468    0.0730882
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0101244   -0.0525576    0.0728064
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0369502   -0.1021440    0.0282437
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0341421   -0.0707579    0.0024738
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0199568   -0.0589675    0.0190538
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0152837   -0.0188066    0.0493739
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0079127   -0.0195114    0.0036861
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0034416   -0.0144876    0.0076044
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0063792   -0.0172626    0.0045042
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0024974   -0.0361466    0.0311518
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0089091   -0.0395291    0.0217108
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0046485   -0.0404952    0.0311981
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0418495   -0.1256564    0.0419574
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0667103   -0.0220674    0.1554881
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1024521    0.0140003    0.1909039
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.0384857   -0.0830316    0.0060602
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0468276   -0.0922528   -0.0014024
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0319387   -0.0760936    0.0122163
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0044003   -0.0549496    0.0461490
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4          0.0040889   -0.0321337    0.0403114
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0196361   -0.0550672    0.0157950
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0340659   -0.0706544    0.0025226
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0618227   -0.0764948   -0.0471506
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0339191   -0.0493378   -0.0185004
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0267748   -0.0422289   -0.0113207
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0115989   -0.0333958    0.0101980
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0000073   -0.0245146    0.0245291
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0126470   -0.0367048    0.0114107
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0064133   -0.0297912    0.0169645
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0034331   -0.0270244    0.0201583
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0058512   -0.0289343    0.0172318
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0336442   -0.0680902    0.0008018
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0123864   -0.0456332    0.0208605
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0356407   -0.0690326   -0.0022487
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0056268   -0.0216513    0.0103977
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0154784   -0.0312391    0.0002822
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0212781   -0.0366602   -0.0058961
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0495132   -0.0616918   -0.0373347
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0191341   -0.0319195   -0.0063488
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0194505   -0.0307850   -0.0081160
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0224888   -0.0523600    0.0073825
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0025668   -0.0286194    0.0234859
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0076993   -0.0176461    0.0330447
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0109253   -0.0175930   -0.0042576
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0180139   -0.0245497   -0.0114780
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0096350   -0.0162893   -0.0029806
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0198340   -0.0306623   -0.0090057
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0208889   -0.0328906   -0.0088871
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0109136   -0.0220547    0.0002274
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0199697   -0.0294159    0.0693553
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0071137   -0.0581227    0.0438954
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0153876   -0.0349357    0.0657109
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1          0.0240806   -0.0020988    0.0502599
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0307207   -0.0575998   -0.0038417
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0093456   -0.0370462    0.0183550
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0152141   -0.0445591    0.0141308
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0124229   -0.0320299    0.0071841
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4          0.0010151   -0.0204101    0.0224402
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0124585   -0.0343976    0.0094807
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0068659   -0.0127150   -0.0010169
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0022188   -0.0083757    0.0039381
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0006466   -0.0066811    0.0053878
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0027943   -0.0167452    0.0111565
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0016983   -0.0155594    0.0121628
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0003776   -0.0144598    0.0152150
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0008117   -0.0467200    0.0483434
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0249195   -0.0234081    0.0732471
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0113228   -0.0412597    0.0639053
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0054839   -0.0134376    0.0024698
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0070902   -0.0145813    0.0004009
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0110638   -0.0183472   -0.0037805
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0075298   -0.0138206   -0.0012391
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0189426   -0.0249490   -0.0129362
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0112638   -0.0166480   -0.0058796
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0052891   -0.0105329    0.0211112
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0089166   -0.0231335    0.0053004
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0013380   -0.0155241    0.0128481
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0042593   -0.0082738   -0.0002447
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4          0.0002296   -0.0035665    0.0040257
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0030406   -0.0072899    0.0012087
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0017493   -0.0066386    0.0031400
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0020520   -0.0066877    0.0025836
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0021982   -0.0069494    0.0025529
