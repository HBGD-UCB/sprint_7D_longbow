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
![](/tmp/d993aff9-0a30-4030-adc5-545cdee9a58c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d993aff9-0a30-4030-adc5-545cdee9a58c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                3.3990566   3.0992701   3.6988431
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                3.4183593   3.0509519   3.7857667
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                3.4791342   3.1529932   3.8052751
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                3.3881521   3.0238969   3.7524074
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                3.6860450   3.5205350   3.8515550
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                2.7233295   2.5258339   2.9208252
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                3.2405702   2.8687724   3.6123681
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                3.5845055   3.1489583   4.0200527
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                3.5290403   3.0434615   4.0146191
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                3.8239428   3.4867782   4.1611074
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                3.3010837   3.1140813   3.4880861
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                2.9776007   2.8014439   3.1537575
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                3.1210861   2.9456498   3.2965224
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                3.3467719   3.1578903   3.5356535
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                3.5829945   3.5260570   3.6399319
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                3.3919476   3.3300537   3.4538415
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                3.4713836   3.4110933   3.5316739
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                3.5014602   3.4406351   3.5622854
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                4.0086007   3.8212505   4.1959510
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                3.6554100   3.2230356   4.0877844
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                3.3997747   3.1568128   3.6427366
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                3.5603849   3.2033293   3.9174405
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                2.5992651   2.5367346   2.6617956
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                2.5457163   2.4821525   2.6092801
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                2.5862652   2.5172804   2.6552500
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                2.6326891   2.5662951   2.6990832
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                3.7746305   3.7583514   3.7909095
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                3.6645246   3.6478380   3.6812111
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                3.6961761   3.6802730   3.7120791
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                3.7360261   3.7206111   3.7514410
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                3.6450486   3.5788681   3.7112291
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                3.6087234   3.5483579   3.6690889
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                3.6378354   3.5772094   3.6984613
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                3.6615794   3.5963765   3.7267824
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                2.2139346   1.9521888   2.4756805
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                2.3693235   2.0279011   2.7107459
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                1.8249992   1.5392620   2.1107363
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                2.0000427   1.6890046   2.3110808
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.6818447   1.5320658   1.8316237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.6427059   1.5150385   1.7703733
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.6817454   1.4850395   1.8784512
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                1.8969591   1.7161611   2.0777571
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.5814800   1.3981849   1.7647750
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.5904860   1.3920661   1.7889059
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            NA                1.7750847   1.6550477   1.8951218
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            NA                1.7180166   1.6298976   1.8061355
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            NA                1.7465544   1.6468578   1.8462510
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            NA                1.8234032   1.7249171   1.9218894
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.9022548   1.8392441   1.9652656
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.8598982   1.7957862   1.9240102
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.8866611   1.8245377   1.9487846
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.9960677   1.9402841   2.0518514
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7403989   1.6767096   1.8040882
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8541330   1.7954844   1.9127816
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8057367   1.7287580   1.8827155
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7345560   1.6729303   1.7961816
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.6856706   1.6105711   1.7607702
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.7247587   1.6542653   1.7952520
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.6615787   1.5921329   1.7310246
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.7449164   1.6747325   1.8151003
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            NA                2.0954695   1.9946172   2.1963218
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            NA                2.1080756   2.0097954   2.2063558
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            NA                2.1086422   2.0235914   2.1936931
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            NA                2.0218127   1.9290907   2.1145347
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.7709193   1.7236905   1.8181482
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.6987076   1.6309896   1.7664256
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                1.7388985   1.6636459   1.8141511
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                1.8073044   1.7477504   1.8668584
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                1.9294730   1.9123108   1.9466352
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                1.9030639   1.8850682   1.9210597
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                1.9144638   1.8962521   1.9326755
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                1.9097774   1.8931944   1.9263603
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.8977692   1.8423852   1.9531531
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.8777865   1.8235625   1.9320105
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.8662850   1.8215037   1.9110663
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.8808827   1.8173548   1.9444105
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.7067019   0.5916815   0.8217222
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.5533194   0.4671373   0.6395016
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.8173745   0.7193792   0.9153699
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.9137308   0.8214233   1.0060383
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.9719457   0.8828196   1.0610717
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.8306527   0.7593497   0.9019557
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.0728542   0.9938617   1.1518468
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.9605798   0.8868716   1.0342881
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9914245   0.9196087   1.0632403
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.0539890   0.9595816   1.1483964
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                1.3336779   1.2664850   1.4008709
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                1.3275887   1.2727126   1.3824648
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                1.2710772   1.2206351   1.3215193
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                1.2439601   1.1886846   1.2992356
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                1.2304008   1.1995645   1.2612372
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                1.0599520   1.0315798   1.0883242
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                1.1380266   1.1074317   1.1686214
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                1.1603895   1.1277202   1.1930589
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.2032678   1.1618853   1.2446503
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.1895869   1.1563371   1.2228367
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.2118252   1.1695480   1.2541023
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.1856246   1.1441358   1.2271135
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                1.1799723   1.1428964   1.2170482
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                1.1660574   1.1298821   1.2022327
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                1.1680339   1.1311871   1.2048808
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                1.1633227   1.1277717   1.1988738
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                1.3550096   1.2990552   1.4109639
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                1.2668409   1.2077839   1.3258979
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                1.3265061   1.2707151   1.3822971
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                1.2588323   1.2019992   1.3156654
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                1.0277218   1.0034044   1.0520392
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                1.0059436   0.9747374   1.0371499
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.9808096   0.9494489   1.0121703
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.9696723   0.9409838   0.9983607
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                1.1189095   1.0991462   1.1386727
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.9889645   0.9671038   1.0108251
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                1.0696130   1.0461647   1.0930614
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                1.0618994   1.0428854   1.0809134
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                1.2871182   1.2404179   1.3338185
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                1.2370787   1.1802847   1.2938728
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                1.2777812   1.2328323   1.3227301
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                1.3042471   1.2629273   1.3455669
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                1.1366635   1.1247498   1.1485772
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                1.0989166   1.0876557   1.1101776
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                1.0852108   1.0743386   1.0960830
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                1.1073451   1.0966979   1.1179923
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                1.2347362   1.2146866   1.2547859
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                1.1693641   1.1519394   1.1867888
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                1.1755990   1.1564497   1.1947482
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                1.2041491   1.1859291   1.2223690
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.8754477   0.7249991   1.0258963
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.8977301   0.8255590   0.9699012
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.8171581   0.7373736   0.8969426
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.8870907   0.8081696   0.9660119
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8188356   0.7643159   0.8733553
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.8796616   0.8236361   0.9356871
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7744026   0.7204974   0.8283078
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.6939153   0.6458858   0.7419448
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7409185   0.6897273   0.7921096
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7472520   0.6914279   0.8030761
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.8560693   0.8135495   0.8985891
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.8042282   0.7737519   0.8347044
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.8425072   0.8032855   0.8817289
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.8170853   0.7768907   0.8572800
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8640681   0.8491492   0.8789870
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.8097297   0.7954196   0.8240397
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8411160   0.8248282   0.8574039
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.8517174   0.8351769   0.8682578
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8458599   0.8176733   0.8740464
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8360613   0.8089027   0.8632200
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8360450   0.8108950   0.8611950
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8491262   0.8169674   0.8812850
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.9679825   0.8759038   1.0600612
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.9167772   0.8747268   0.9588276
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.9418421   0.8877027   0.9959815
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.9261822   0.8463218   1.0060426
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.8024438   0.7870957   0.8177920
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7734936   0.7542985   0.7926886
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7712478   0.7541548   0.7883408
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7523443   0.7362848   0.7684037
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7410221   0.7293023   0.7527419
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6985830   0.6844376   0.7127285
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6763012   0.6633960   0.6892063
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6944635   0.6837639   0.7051631
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.8318636   0.8062747   0.8574525
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.8490577   0.8120614   0.8860540
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.7973680   0.7684888   0.8262472
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.8314270   0.8004624   0.8623916
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.8074482   0.7990323   0.8158640
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.7785028   0.7703971   0.7866084
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.7915547   0.7839734   0.7991359
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.7898068   0.7799768   0.7996369
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.8637603   0.8527568   0.8747639
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.8392812   0.8299094   0.8486531
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.8438206   0.8346340   0.8530072
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.8512750   0.8429617   0.8595884


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4273613   3.2500085   3.6047141
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5653800   3.3943198   3.7364403
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                3.6499227   3.4691077   3.8307378
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6146471   2.5705065   2.6587877
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184677   3.7081242   3.7288113
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069558   1.1002095   1.1137021
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2031603   1.1927643   1.2135564
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7967251   0.7914074   0.8020427
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8492263   0.8437928   0.8546597


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0193027   -0.4548915    0.4934969
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0800776   -0.3629121    0.5230673
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0109045   -0.4826606    0.4608517
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.9627154   -1.2067863   -0.7186446
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.3439353   -0.2161138    0.9039843
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.2884700   -0.3102603    0.8872004
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.5833726    0.0925513    1.0741939
0-3 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3234830   -0.5682893   -0.0786766
0-3 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1799976   -0.4240632    0.0640680
0-3 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0456882   -0.2096819    0.3010583
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1910469   -0.2722241   -0.1098696
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1116109   -0.1916752   -0.0315465
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0815343   -0.1618205   -0.0012480
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3531907   -0.8235313    0.1171498
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.6088260   -0.9139457   -0.3037063
0-3 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.4482158   -0.8427203   -0.0537113
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0535488   -0.1357183    0.0286206
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0129999   -0.0980580    0.0720582
0-3 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0334240   -0.0507422    0.1175902
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1101059   -0.1320679   -0.0881439
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0784544   -0.1002499   -0.0566590
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0386044   -0.0589749   -0.0182340
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0363252   -0.1265731    0.0539227
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0072132   -0.0997168    0.0852904
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4          0.0165309   -0.0751078    0.1081695
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.1553888   -0.2731954    0.5839731
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3889355   -0.7748710   -0.0029999
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2138919   -0.6193598    0.1915759
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.0391389   -0.2116386    0.1333609
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2152138   -0.0517452    0.4821727
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1002654   -0.3691472    0.1686164
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0912594   -0.3702659    0.1877471
3-6 months     ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0570682   -0.1981878    0.0840515
3-6 months     ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0285303   -0.1745136    0.1174530
3-6 months     ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4          0.0483185   -0.0971785    0.1938156
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0423566   -0.1318661    0.0471528
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0155937   -0.1037723    0.0725848
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4          0.0938129    0.0100574    0.1775684
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1137341    0.0291542    0.1983140
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0653378   -0.0327655    0.1634412
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0058429   -0.0924428    0.0807569
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0390881   -0.0625732    0.1407493
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0240919   -0.1248447    0.0766609
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0592458   -0.0421623    0.1606538
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0126061   -0.1277818    0.1529940
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0131727   -0.1188894    0.1452349
3-6 months     ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0736568   -0.2107161    0.0634025
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0722117   -0.1547655    0.0103421
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0320209   -0.1208600    0.0568183
3-6 months     ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0363851   -0.0396157    0.1123858
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0264091   -0.0512791   -0.0015391
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0150092   -0.0387942    0.0087758
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0196956   -0.0432463    0.0038550
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0199827   -0.0963728    0.0564075
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0314842   -0.1007049    0.0377365
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0168865   -0.0988237    0.0650507
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1533825   -0.2924651   -0.0142998
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.1106726   -0.0445541    0.2658994
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.2070290    0.0585311    0.3555269
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.1412930   -0.2637148   -0.0188711
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1122744   -0.2191932   -0.0053555
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0814297   -0.1865487    0.0236892
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0188652   -0.1398762    0.1021457
6-12 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0060892   -0.0927055    0.0805271
6-12 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0626008   -0.1464193    0.0212178
6-12 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0897179   -0.1765558   -0.0028799
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1704488   -0.2123723   -0.1285254
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0923743   -0.1357593   -0.0489893
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0700113   -0.1149214   -0.0251012
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0136809   -0.0651080    0.0377462
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0085573   -0.0489024    0.0660171
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0176432   -0.0746530    0.0393667
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0139149   -0.0650234    0.0371936
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0119384   -0.0633628    0.0394861
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0166496   -0.0673704    0.0340713
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0881686   -0.1695233   -0.0068140
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0285035   -0.1075187    0.0505118
6-12 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0961773   -0.1759313   -0.0164232
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0217781   -0.0594865    0.0159302
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0469122   -0.0848175   -0.0090070
6-12 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0580495   -0.0943383   -0.0217607
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.1299450   -0.1590271   -0.1008629
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0492964   -0.0794835   -0.0191094
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0570101   -0.0839008   -0.0301193
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0500395   -0.1225926    0.0225136
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0093370   -0.0729268    0.0542528
6-12 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0171289   -0.0440565    0.0783143
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0377469   -0.0537711   -0.0217226
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0514527   -0.0668040   -0.0361014
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0293184   -0.0451277   -0.0135091
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0653722   -0.0910200   -0.0397243
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0591373   -0.0872963   -0.0309782
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0305872   -0.0569048   -0.0042696
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0222824   -0.1442608    0.1888255
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0582897   -0.2284034    0.1118241
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0116430   -0.1581445    0.1814305
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1          0.0608260   -0.0266468    0.1482988
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0804873   -0.1522484   -0.0087262
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0334841   -0.1074875    0.0405192
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0271506   -0.1042185    0.0499173
12-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0518411   -0.1039053    0.0002231
12-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0135621   -0.0711145    0.0439903
12-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0389840   -0.0973003    0.0193324
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0543384   -0.0740848   -0.0345921
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0229520   -0.0432693   -0.0026348
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0123507   -0.0327715    0.0080701
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0097986   -0.0482413    0.0286441
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0098149   -0.0468468    0.0272170
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0032663   -0.0390219    0.0455545
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0512054   -0.1504564    0.0480456
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0261404   -0.1332221    0.0809413
12-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0418004   -0.1629285    0.0793278
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0289503   -0.0523934   -0.0055071
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0311960   -0.0531238   -0.0092683
12-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0500996   -0.0714359   -0.0287632
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0424391   -0.0604428   -0.0244354
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0647210   -0.0817891   -0.0476528
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0465586   -0.0620772   -0.0310400
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0171941   -0.0278455    0.0622336
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0344956   -0.0730342    0.0040430
12-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0004366   -0.0405662    0.0396929
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0289454   -0.0404783   -0.0174125
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0158935   -0.0267433   -0.0050437
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0176413   -0.0304046   -0.0048780
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0244791   -0.0383495   -0.0106087
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0199398   -0.0336636   -0.0062159
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0124853   -0.0258654    0.0008948
