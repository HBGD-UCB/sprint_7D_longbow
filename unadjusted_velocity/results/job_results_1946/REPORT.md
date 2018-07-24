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

**Outcome Variable:** y_rate_lencm

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        hhwealth_quart    n_cell       n
-------------  --------------------------  -----------------------------  ---------------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Wealth Q4             26      82
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Wealth Q1              4      82
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Wealth Q2             15      82
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Wealth Q3             37      82
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Wealth Q4             26      80
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Wealth Q1              4      80
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Wealth Q2             15      80
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Wealth Q3             35      80
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Wealth Q4             26      78
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Wealth Q1              3      78
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Wealth Q2             15      78
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Wealth Q3             34      78
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Wealth Q4             25      75
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Wealth Q1              3      75
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Wealth Q2             15      75
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Wealth Q3             32      75
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4              8      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1              7      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2              8      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3             15      38
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            167     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            155     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            152     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            160     634
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            154     572
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            135     572
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            136     572
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            147     572
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            146     544
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            127     544
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            135     544
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            136     544
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            120     457
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1             99     457
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            121     457
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            117     457
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4           4632   20030
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1           5102   20030
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2           5294   20030
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3           5002   20030
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4           3468   12573
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1           2745   12573
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2           3198   12573
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3           3162   12573
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4           2673    9832
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1           2152    9832
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2           2516    9832
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3           2491    9832
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4           1189    4648
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1           1072    4648
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2           1209    4648
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3           1178    4648
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            389    1805
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            450    1805
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            473    1805
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            493    1805
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            761    3159
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            775    3159
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            782    3159
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            841    3159
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            884    3635
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            895    3635
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            885    3635
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            971    3635
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            408    1839
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            463    1839
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            477    1839
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            491    1839
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Wealth Q4              2       3
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Wealth Q2              1       3
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Wealth Q4              2       3
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Wealth Q2              1       3
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Wealth Q4              2       3
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Wealth Q2              1       3
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Wealth Q4              2       3
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Wealth Q2              1       3
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q4            284     780
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q1            146     780
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q2            156     780
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q3            194     780
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4            315     836
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1            160     836
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2            175     836
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3            186     836
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4            321     858
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1            167     858
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2            178     858
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3            192     858
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q4            248     709
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q1            138     709
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q2            140     709
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q3            183     709
0-3 months     ki0047075b-MAL-ED           INDIA                          Wealth Q4             22      57
0-3 months     ki0047075b-MAL-ED           INDIA                          Wealth Q1              1      57
0-3 months     ki0047075b-MAL-ED           INDIA                          Wealth Q2              9      57
0-3 months     ki0047075b-MAL-ED           INDIA                          Wealth Q3             25      57
3-6 months     ki0047075b-MAL-ED           INDIA                          Wealth Q4             28      70
3-6 months     ki0047075b-MAL-ED           INDIA                          Wealth Q1              1      70
3-6 months     ki0047075b-MAL-ED           INDIA                          Wealth Q2             10      70
3-6 months     ki0047075b-MAL-ED           INDIA                          Wealth Q3             31      70
6-12 months    ki0047075b-MAL-ED           INDIA                          Wealth Q4             28      70
6-12 months    ki0047075b-MAL-ED           INDIA                          Wealth Q1              1      70
6-12 months    ki0047075b-MAL-ED           INDIA                          Wealth Q2             10      70
6-12 months    ki0047075b-MAL-ED           INDIA                          Wealth Q3             31      70
12-24 months   ki0047075b-MAL-ED           INDIA                          Wealth Q4             28      70
12-24 months   ki0047075b-MAL-ED           INDIA                          Wealth Q1              1      70
12-24 months   ki0047075b-MAL-ED           INDIA                          Wealth Q2             10      70
12-24 months   ki0047075b-MAL-ED           INDIA                          Wealth Q3             31      70
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4             80     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1             75     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2             79     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3             73     307
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4             82     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1             78     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2             84     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3             79     323
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4             83     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1             78     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2             83     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3             80     324
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4             31      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1             15      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2             16      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3             25      87
3-6 months     ki1000108-IRC               INDIA                          Wealth Q4             94     397
3-6 months     ki1000108-IRC               INDIA                          Wealth Q1            105     397
3-6 months     ki1000108-IRC               INDIA                          Wealth Q2             98     397
3-6 months     ki1000108-IRC               INDIA                          Wealth Q3            100     397
6-12 months    ki1000108-IRC               INDIA                          Wealth Q4             98     400
6-12 months    ki1000108-IRC               INDIA                          Wealth Q1            102     400
6-12 months    ki1000108-IRC               INDIA                          Wealth Q2             98     400
6-12 months    ki1000108-IRC               INDIA                          Wealth Q3            102     400
12-24 months   ki1000108-IRC               INDIA                          Wealth Q4             97     396
12-24 months   ki1000108-IRC               INDIA                          Wealth Q1            102     396
12-24 months   ki1000108-IRC               INDIA                          Wealth Q2             96     396
12-24 months   ki1000108-IRC               INDIA                          Wealth Q3            101     396
0-3 months     ki1000108-IRC               INDIA                          Wealth Q4             86     377
0-3 months     ki1000108-IRC               INDIA                          Wealth Q1             98     377
0-3 months     ki1000108-IRC               INDIA                          Wealth Q2             96     377
0-3 months     ki1000108-IRC               INDIA                          Wealth Q3             97     377
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4             71     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1             82     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2             90     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3             88     331
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4            114     430
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1            102     430
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2             97     430
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3            117     430
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4             83     307
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1             69     307
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2             68     307
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3             87     307
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4            215     875
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1            192     875
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2            251     875
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3            217     875
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4            116     461
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1             89     461
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2            130     461
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3            126     461
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4             82     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1            123     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2            149     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3            184     538
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4             78     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1            117     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2            132     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3            181     508
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1              1       5
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2              2       5
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3              2       5
0-3 months     ki0047075b-MAL-ED           NEPAL                          Wealth Q4             14      31
0-3 months     ki0047075b-MAL-ED           NEPAL                          Wealth Q1             11      31
0-3 months     ki0047075b-MAL-ED           NEPAL                          Wealth Q2              4      31
0-3 months     ki0047075b-MAL-ED           NEPAL                          Wealth Q3              2      31
3-6 months     ki0047075b-MAL-ED           NEPAL                          Wealth Q4             21      42
3-6 months     ki0047075b-MAL-ED           NEPAL                          Wealth Q1             11      42
3-6 months     ki0047075b-MAL-ED           NEPAL                          Wealth Q2              6      42
3-6 months     ki0047075b-MAL-ED           NEPAL                          Wealth Q3              4      42
6-12 months    ki0047075b-MAL-ED           NEPAL                          Wealth Q4             21      42
6-12 months    ki0047075b-MAL-ED           NEPAL                          Wealth Q1             11      42
6-12 months    ki0047075b-MAL-ED           NEPAL                          Wealth Q2              6      42
6-12 months    ki0047075b-MAL-ED           NEPAL                          Wealth Q3              4      42
12-24 months   ki0047075b-MAL-ED           NEPAL                          Wealth Q4             21      42
12-24 months   ki0047075b-MAL-ED           NEPAL                          Wealth Q1             11      42
12-24 months   ki0047075b-MAL-ED           NEPAL                          Wealth Q2              6      42
12-24 months   ki0047075b-MAL-ED           NEPAL                          Wealth Q3              4      42
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            120     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q1            120     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q2            116     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q3            115     471
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            124     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q1            116     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q2            122     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q3            113     475
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            103     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q1             86     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q2             97     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q3             81     367
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q4              1      20
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q1              7      20
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q2              7      20
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Wealth Q3              5      20
0-3 months     ki0047075b-MAL-ED           PERU                           Wealth Q4              1      35
0-3 months     ki0047075b-MAL-ED           PERU                           Wealth Q1             22      35
0-3 months     ki0047075b-MAL-ED           PERU                           Wealth Q2             11      35
0-3 months     ki0047075b-MAL-ED           PERU                           Wealth Q3              1      35
3-6 months     ki0047075b-MAL-ED           PERU                           Wealth Q4              1      36
3-6 months     ki0047075b-MAL-ED           PERU                           Wealth Q1             23      36
3-6 months     ki0047075b-MAL-ED           PERU                           Wealth Q2             11      36
3-6 months     ki0047075b-MAL-ED           PERU                           Wealth Q3              1      36
6-12 months    ki0047075b-MAL-ED           PERU                           Wealth Q4              1      35
6-12 months    ki0047075b-MAL-ED           PERU                           Wealth Q1             22      35
6-12 months    ki0047075b-MAL-ED           PERU                           Wealth Q2             11      35
6-12 months    ki0047075b-MAL-ED           PERU                           Wealth Q3              1      35
12-24 months   ki0047075b-MAL-ED           PERU                           Wealth Q4              1      30
12-24 months   ki0047075b-MAL-ED           PERU                           Wealth Q1             20      30
12-24 months   ki0047075b-MAL-ED           PERU                           Wealth Q2              8      30
12-24 months   ki0047075b-MAL-ED           PERU                           Wealth Q3              1      30
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q4             51     214
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q1             59     214
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q2             52     214
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q3             52     214
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q4             52     213
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q1             59     213
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q2             52     213
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q3             50     213
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q4              5      38
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q1             14      38
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q2             10      38
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q3              9      38
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q4              7      29
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q1              7      29
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q2              7      29
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q3              8      29
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q4            675    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q1            483    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q2            434    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q3            827    2419
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q4            636    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q1            438    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q2            400    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q3            786    2260
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4             12      59
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1              9      59
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2             21      59
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3             17      59
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4             12      62
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1             10      62
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2             21      62
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3             19      62
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4             11      61
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1             11      61
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2             20      61
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3             19      61
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4             12      64
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1             12      64
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2             22      64
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3             18      64
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             36      57
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             21      57
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             39      59
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             20      59
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             35      50
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             15      50
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             34      55
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             21      55
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4            409    1655
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1            501    1655
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1655
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3            413    1655
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4            265    1077
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1            327    1077
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2            230    1077
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3            255    1077
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1              2       2


The following strata were considered:

* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 6-12 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/807ea109-e8ed-4cce-9dc0-1ab8e551c2cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/807ea109-e8ed-4cce-9dc0-1ab8e551c2cf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                3.3990566   3.0992701   3.6988431
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                3.4183593   3.0509519   3.7857667
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                3.4791342   3.1529932   3.8052751
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                3.3881521   3.0238969   3.7524074
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                3.6397067   3.4981583   3.7812551
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                3.3919512   3.3013141   3.4825883
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4            NA                3.2286322   2.8326062   3.6246582
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1            NA                3.5931003   3.1289761   4.0572245
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2            NA                3.5323129   3.0151053   4.0495206
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3            NA                3.8418463   3.4853506   4.1983420
0-3 months     ki1000108-IRC               INDIA                          Wealth Q4            NA                3.2831466   3.0468662   3.5194270
0-3 months     ki1000108-IRC               INDIA                          Wealth Q1            NA                2.9382574   2.7252005   3.1513142
0-3 months     ki1000108-IRC               INDIA                          Wealth Q2            NA                3.1294262   2.9166904   3.3421619
0-3 months     ki1000108-IRC               INDIA                          Wealth Q3            NA                3.3553221   3.1299372   3.5807070
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            NA                3.5645408   3.4904959   3.6385856
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            NA                3.3982490   3.3162306   3.4802675
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            NA                3.4643214   3.3861307   3.5425122
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            NA                3.4964337   3.4192545   3.5736128
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q4            NA                3.9898145   3.8052975   4.1743315
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q1            NA                3.6471591   3.2148518   4.0794664
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q2            NA                3.4002936   3.1552176   3.6453696
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q3            NA                3.5733610   3.2070655   3.9396566
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q4            NA                2.5977458   2.5199206   2.6755710
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q1            NA                2.5703560   2.4790181   2.6616938
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q2            NA                2.6267206   2.5262680   2.7271731
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q3            NA                2.6617150   2.5757818   2.7476482
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4            NA                3.7601797   3.7417911   3.7785683
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1            NA                3.6775065   3.6584713   3.6965417
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2            NA                3.7025981   3.6847389   3.7204573
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3            NA                3.7384174   3.7209081   3.7559267
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            NA                3.6444546   3.5779568   3.7109525
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            NA                3.6095338   3.5490684   3.6699991
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            NA                3.6375944   3.5767372   3.6984516
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            NA                3.6615411   3.5961631   3.7269192
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                2.2078563   1.9423952   2.4733175
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                2.3733437   2.0249831   2.7217043
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                1.8240380   1.5358389   2.1122372
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                2.0028359   1.6904776   2.3151943
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.7123018   1.5844273   1.8401762
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.7768227   1.6940328   1.8596126
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4            NA                1.7853847   1.5806502   1.9901193
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1            NA                2.0084703   1.8197517   2.1971890
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2            NA                1.7064158   1.5111848   1.9016469
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3            NA                1.7190412   1.5094648   1.9286176
3-6 months     ki1000108-IRC               INDIA                          Wealth Q4            NA                1.8993306   1.7456184   2.0530427
3-6 months     ki1000108-IRC               INDIA                          Wealth Q1            NA                1.8457051   1.7369106   1.9544996
3-6 months     ki1000108-IRC               INDIA                          Wealth Q2            NA                1.8453766   1.7215215   1.9692318
3-6 months     ki1000108-IRC               INDIA                          Wealth Q3            NA                1.9344450   1.8108720   2.0580179
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            NA                1.9496998   1.8783006   2.0210990
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            NA                1.9311424   1.8574560   2.0048287
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            NA                1.9444450   1.8731989   2.0156911
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            NA                2.0358762   1.9730533   2.0986990
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7529404   1.6823949   1.8234858
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8578798   1.7931364   1.9226233
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8154517   1.7299232   1.9009801
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7373932   1.6686073   1.8061791
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            NA                1.6934321   1.6126103   1.7742538
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q1            NA                1.7152166   1.6387954   1.7916378
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q2            NA                1.6744707   1.5985391   1.7504022
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q3            NA                1.7402432   1.6616453   1.8188411
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q4            NA                2.0969752   1.9944791   2.1994712
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q1            NA                2.1073650   2.0086301   2.2061000
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q2            NA                2.1093902   2.0242966   2.1944838
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q3            NA                2.0201314   1.9273612   2.1129017
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q4            NA                1.7700897   1.7219883   1.8181912
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q1            NA                1.6990880   1.6295428   1.7686332
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q2            NA                1.7384546   1.6602018   1.8167073
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q3            NA                1.8048842   1.7434681   1.8663004
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4            NA                1.9296283   1.9109029   1.9483538
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1            NA                1.9134308   1.8928376   1.9340240
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2            NA                1.9222240   1.9014365   1.9430115
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3            NA                1.9136200   1.8952343   1.9320056
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            NA                1.9202899   1.8608166   1.9797633
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            NA                1.8919684   1.8350385   1.9488982
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            NA                1.8846259   1.8376807   1.9315712
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            NA                1.9009925   1.8323403   1.9696447
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                1.2722456   1.0462930   1.4981982
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                1.0082678   0.8401510   1.1763847
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                1.1525359   1.0175164   1.2875555
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                1.2688147   1.1473152   1.3903142
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0227297   0.9508007   1.0946588
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.0023940   0.9658503   1.0389377
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4            NA                1.1258074   1.0310449   1.2205699
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1            NA                1.0031877   0.9169130   1.0894624
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2            NA                1.0294856   0.9460213   1.1129498
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3            NA                1.0902387   0.9767097   1.2037677
6-12 months    ki1000108-IRC               INDIA                          Wealth Q4            NA                1.2851695   1.2162050   1.3541339
6-12 months    ki1000108-IRC               INDIA                          Wealth Q1            NA                1.2806680   1.2258701   1.3354659
6-12 months    ki1000108-IRC               INDIA                          Wealth Q2            NA                1.2275794   1.1767545   1.2784042
6-12 months    ki1000108-IRC               INDIA                          Wealth Q3            NA                1.2014627   1.1450722   1.2578531
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            NA                1.2463416   1.2128757   1.2798075
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            NA                1.0950857   1.0637830   1.1263883
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            NA                1.1609069   1.1281242   1.1936896
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            NA                1.1818880   1.1464034   1.2173727
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.1993432   1.1536813   1.2450051
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.1913950   1.1553172   1.2274728
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.2152337   1.1680132   1.2624542
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.1839100   1.1378477   1.2299723
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            NA                1.1793611   1.1397102   1.2190121
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q1            NA                1.1569123   1.1174640   1.1963607
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q2            NA                1.1717555   1.1327285   1.2107825
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q3            NA                1.1635160   1.1249543   1.2020778
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q4            NA                1.3550097   1.2990545   1.4109649
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q1            NA                1.2668428   1.2077853   1.3259003
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q2            NA                1.3265101   1.2707171   1.3823031
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q3            NA                1.2588250   1.2019871   1.3156629
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4            NA                1.0369939   1.0089428   1.0650450
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1            NA                1.0189722   0.9791682   1.0587762
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2            NA                1.0059735   0.9659118   1.0460351
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3            NA                0.9924215   0.9562375   1.0286054
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q4            NA                1.1251415   1.1024121   1.1478709
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q1            NA                0.9954799   0.9690410   1.0219189
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q2            NA                1.0700959   1.0420533   1.0981385
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q3            NA                1.0609983   1.0398412   1.0821553
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4            NA                1.2459967   1.2093170   1.2826763
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1            NA                1.2084814   1.1683469   1.2486159
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2            NA                1.2197287   1.1880905   1.2513669
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3            NA                1.2246383   1.1877459   1.2615307
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4            NA                1.2247202   1.1588786   1.2905618
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1            NA                1.2297643   1.1828302   1.2766985
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2            NA                1.1790414   1.1366493   1.2214336
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3            NA                1.1744768   1.1333848   1.2155688
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4            NA                1.2917187   1.2417650   1.3416725
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1            NA                1.2384399   1.1749779   1.3019020
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2            NA                1.2773508   1.2272908   1.3274109
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3            NA                1.3036325   1.2584791   1.3487859
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4            NA                1.1394232   1.1264465   1.1523999
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1            NA                1.0963202   1.0836665   1.1089740
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2            NA                1.0812170   1.0690897   1.0933442
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3            NA                1.1073015   1.0956483   1.1189548
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            NA                1.2419875   1.2207514   1.2632237
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            NA                1.1777679   1.1586628   1.1968731
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            NA                1.1834511   1.1626376   1.2042647
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            NA                1.2097528   1.1908072   1.2286985
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.8765239   0.7254596   1.0275881
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.8963442   0.8222897   0.9703988
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.8163201   0.7363269   0.8963133
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.8883104   0.8095289   0.9670919
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.7572635   0.7203750   0.7941519
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7108510   0.6842546   0.7374475
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4            NA                0.7725794   0.7175813   0.8275775
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1            NA                0.6966988   0.6476250   0.7457726
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2            NA                0.7426334   0.6910102   0.7942565
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3            NA                0.7444756   0.6873868   0.8015644
12-24 months   ki1000108-IRC               INDIA                          Wealth Q4            NA                0.8552254   0.8122289   0.8982219
12-24 months   ki1000108-IRC               INDIA                          Wealth Q1            NA                0.8025330   0.7714586   0.8336074
12-24 months   ki1000108-IRC               INDIA                          Wealth Q2            NA                0.8432461   0.8031778   0.8833144
12-24 months   ki1000108-IRC               INDIA                          Wealth Q3            NA                0.8189065   0.7783588   0.8594542
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4            NA                0.8438578   0.7752009   0.9125147
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1            NA                0.8987420   0.8225180   0.9749659
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2            NA                0.8371014   0.7722421   0.9019607
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3            NA                0.8653278   0.8009532   0.9297024
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4            NA                0.8448637   0.8076254   0.8821021
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1            NA                0.8289206   0.7921823   0.8656590
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2            NA                0.8551377   0.8242993   0.8859761
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3            NA                0.8615329   0.8362843   0.8867814
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            NA                0.8821697   0.8600122   0.9043272
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            NA                0.8197518   0.7972362   0.8422674
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            NA                0.8565025   0.8325236   0.8804814
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            NA                0.8653258   0.8398804   0.8907711
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            NA                0.8436326   0.8135217   0.8737434
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q1            NA                0.8274064   0.7962324   0.8585803
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q2            NA                0.8348821   0.8074667   0.8622975
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q3            NA                0.8452968   0.8100951   0.8804986
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q4            NA                0.9223297   0.7942771   1.0503824
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q1            NA                0.9164412   0.8739677   0.9589147
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q2            NA                0.9412926   0.8871407   0.9954445
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q3            NA                0.9256900   0.8457424   1.0056376
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4            NA                0.7998566   0.7817114   0.8180019
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1            NA                0.7695726   0.7436316   0.7955136
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2            NA                0.7750506   0.7519111   0.7981901
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3            NA                0.7563098   0.7344591   0.7781606
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q4            NA                0.7478201   0.7342924   0.7613478
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q1            NA                0.6995559   0.6821063   0.7170055
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q2            NA                0.6759606   0.6591982   0.6927231
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q3            NA                0.6931954   0.6810364   0.7053544
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4            NA                0.8407066   0.8163363   0.8650770
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1            NA                0.7956244   0.7633941   0.8278547
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2            NA                0.7956972   0.7677375   0.8236569
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3            NA                0.7997245   0.7720457   0.8274033
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4            NA                0.8123840   0.7716400   0.8531279
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1            NA                0.8522453   0.8213531   0.8831375
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2            NA                0.8196496   0.7901291   0.8491701
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3            NA                0.8380517   0.8140162   0.8620871
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4            NA                0.8452593   0.8176022   0.8729164
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1            NA                0.8607732   0.8201533   0.9013931
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2            NA                0.8150899   0.7819262   0.8482537
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3            NA                0.8407329   0.8073339   0.8741319
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4            NA                0.8143311   0.8039428   0.8247194
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1            NA                0.7825975   0.7726425   0.7925524
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2            NA                0.7943481   0.7853230   0.8033731
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3            NA                0.7942507   0.7828264   0.8056750
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            NA                0.8629927   0.8511490   0.8748364
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            NA                0.8384596   0.8281855   0.8487337
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            NA                0.8433350   0.8334668   0.8532032
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            NA                0.8519867   0.8429964   0.8609771


### Parameter: E(Y)


diffcat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                3.4273613   3.2500085   3.6047141
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5653800   3.3943198   3.7364403
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC               INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1114097-CONTENT           PERU                           NA                   NA                3.6499227   3.4691077   3.8307378
0-3 months     ki1135781-COHORTS           GUATEMALA                      NA                   NA                2.6146471   2.5705065   2.6587877
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                3.7184677   3.7081242   3.7288113
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                2.0417160   1.8774543   2.2059778
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7369370   1.5843725   1.8895016
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC               INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                1.9662173   1.9311292   2.0013054
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933678   1.7575489   1.8291867
3-6 months     ki1113344-GMS-Nepal         NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1114097-CONTENT           PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1135781-COHORTS           GUATEMALA                      NA                   NA                1.7591266   1.7281267   1.7901266
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                1.9201827   1.9097195   1.9306459
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                1.1843253   1.1031968   1.2654539
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0152376   0.9345169   1.0959583
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC               INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                1.1737150   1.1564064   1.1910236
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1966694   1.1750524   1.2182863
6-12 months    ki1113344-GMS-Nepal         NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1114097-CONTENT           PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                1.0171344   0.9996325   1.0346363
6-12 months    ki1135781-COHORTS           PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                1.2249327   1.2068873   1.2429782
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                1.1960390   1.1724665   1.2196115
6-12 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                1.2790810   1.2528925   1.3052695
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                1.1069558   1.1002095   1.1137021
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                1.2031603   1.1927643   1.2135564
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                0.8628601   0.8147601   0.9109601
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7415304   0.6957036   0.7873573
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC               INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.8610206   0.8251715   0.8968698
12-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.8481393   0.8318971   0.8643815
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.8575399   0.8455203   0.8695594
12-24 months   ki1113344-GMS-Nepal         NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1114097-CONTENT           PERU                           NA                   NA                0.9259464   0.8927736   0.9591191
12-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7790712   0.7681227   0.7900197
12-24 months   ki1135781-COHORTS           PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.8081095   0.7940125   0.8222065
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.8325979   0.8176481   0.8475477
12-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.8407809   0.8238743   0.8576875
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.7967251   0.7914074   0.8020427
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.8492263   0.8437928   0.8546597


### Parameter: ATE


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0193027   -0.4548915    0.4934969
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0800776   -0.3629121    0.5230673
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0109045   -0.4826606    0.4608517
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.2477555   -0.4158360   -0.0796751
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1            Wealth Q4          0.3644681   -0.2456531    0.9745893
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2            Wealth Q4          0.3036807   -0.3477334    0.9550948
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3            Wealth Q4          0.6132141    0.0803672    1.1460609
0-3 months     ki1000108-IRC               INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC               INDIA                          Wealth Q1            Wealth Q4         -0.3448893   -0.6630428   -0.0267358
0-3 months     ki1000108-IRC               INDIA                          Wealth Q2            Wealth Q4         -0.1537204   -0.4716590    0.1642181
0-3 months     ki1000108-IRC               INDIA                          Wealth Q3            Wealth Q4          0.0721755   -0.2543621    0.3987130
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1662918   -0.2767891   -0.0557944
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         -0.1002193   -0.2079061    0.0074674
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0681071   -0.1750616    0.0388474
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q1            Wealth Q4         -0.3426554   -0.8126938    0.1273830
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q2            Wealth Q4         -0.5895209   -0.8962924   -0.2827494
0-3 months     ki1114097-CONTENT           PERU                           Wealth Q3            Wealth Q4         -0.4164535   -0.8265985   -0.0063084
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q1            Wealth Q4         -0.0273898   -0.1473872    0.0926075
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q2            Wealth Q4          0.0289748   -0.0980980    0.1560475
0-3 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q3            Wealth Q4          0.0639692   -0.0519673    0.1799057
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0826732   -0.1085052   -0.0568412
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0575816   -0.0824708   -0.0326924
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0217623   -0.0456861    0.0021616
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0349209   -0.1255585    0.0557168
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0068602   -0.0998779    0.0861574
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            Wealth Q4          0.0170865   -0.0750011    0.1091740
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.1654874   -0.2724906    0.6034654
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3838183   -0.7756453    0.0080087
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2050204   -0.6149440    0.2049032
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1          0.0645209   -0.0878144    0.2168562
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1            Wealth Q4          0.2230856   -0.0553582    0.5015294
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2            Wealth Q4         -0.0789689   -0.3618671    0.2039293
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3            Wealth Q4         -0.0663435   -0.3593256    0.2266386
3-6 months     ki1000108-IRC               INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC               INDIA                          Wealth Q1            Wealth Q4         -0.0536255   -0.2419435    0.1346925
3-6 months     ki1000108-IRC               INDIA                          Wealth Q2            Wealth Q4         -0.0539539   -0.2513559    0.1434480
3-6 months     ki1000108-IRC               INDIA                          Wealth Q3            Wealth Q4          0.0351144   -0.1621106    0.2323394
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0185574   -0.1211611    0.0840463
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0052548   -0.1061203    0.0956108
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0861764   -0.0089265    0.1812793
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1049395    0.0091879    0.2006911
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0625113   -0.0483569    0.1733796
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0155472   -0.1140771    0.0829828
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q1            Wealth Q4          0.0217845   -0.0894466    0.1330156
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q2            Wealth Q4         -0.0189614   -0.1298567    0.0919338
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Wealth Q3            Wealth Q4          0.0468112   -0.0659265    0.1595488
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q1            Wealth Q4          0.0103899   -0.1319268    0.1527066
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q2            Wealth Q4          0.0124151   -0.1208004    0.1456306
3-6 months     ki1114097-CONTENT           PERU                           Wealth Q3            Wealth Q4         -0.0768437   -0.2150890    0.0614015
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q1            Wealth Q4         -0.0710017   -0.1555611    0.0135576
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q2            Wealth Q4         -0.0316352   -0.1234896    0.0602193
3-6 months     ki1135781-COHORTS           GUATEMALA                      Wealth Q3            Wealth Q4          0.0347945   -0.0432164    0.1128053
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0161975   -0.0438192    0.0114242
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0074043   -0.0341495    0.0193409
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0160084   -0.0423571    0.0103404
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0283216   -0.1109571    0.0543140
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0356640   -0.1111567    0.0398287
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0192974   -0.1093011    0.0707063
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2639777   -0.5456120    0.0176565
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1197097   -0.3829298    0.1435105
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0034309   -0.2599785    0.2531168
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.0203358   -0.1010156    0.0603440
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1            Wealth Q4         -0.1226198   -0.2507730    0.0055335
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2            Wealth Q4         -0.0963219   -0.2226002    0.0299565
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3            Wealth Q4         -0.0355687   -0.1834497    0.1123122
6-12 months    ki1000108-IRC               INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC               INDIA                          Wealth Q1            Wealth Q4         -0.0045014   -0.0925860    0.0835832
6-12 months    ki1000108-IRC               INDIA                          Wealth Q2            Wealth Q4         -0.0575901   -0.1432595    0.0280794
6-12 months    ki1000108-IRC               INDIA                          Wealth Q3            Wealth Q4         -0.0837068   -0.1727909    0.0053773
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1512559   -0.1970798   -0.1054321
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0854347   -0.1322820   -0.0385874
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0644536   -0.1132299   -0.0156773
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0079482   -0.0661428    0.0502464
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0158904   -0.0497966    0.0815775
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0154332   -0.0802926    0.0494262
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q1            Wealth Q4         -0.0224488   -0.0783807    0.0334830
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q2            Wealth Q4         -0.0076056   -0.0632411    0.0480298
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Wealth Q3            Wealth Q4         -0.0158451   -0.0711552    0.0394650
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q1            Wealth Q4         -0.0881669   -0.1695228   -0.0068110
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q2            Wealth Q4         -0.0284996   -0.1075176    0.0505184
6-12 months    ki1114097-CONTENT           PERU                           Wealth Q3            Wealth Q4         -0.0961847   -0.1759439   -0.0164255
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q1            Wealth Q4         -0.0180217   -0.0667169    0.0306735
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q2            Wealth Q4         -0.0310204   -0.0799264    0.0178856
6-12 months    ki1135781-COHORTS           GUATEMALA                      Wealth Q3            Wealth Q4         -0.0445724   -0.0903561    0.0012112
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q1            Wealth Q4         -0.1296616   -0.1645276   -0.0947955
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0550456   -0.0911428   -0.0189483
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0641432   -0.0951955   -0.0330910
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1            Wealth Q4         -0.0375153   -0.0918860    0.0168554
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2            Wealth Q4         -0.0262679   -0.0747073    0.0221714
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3            Wealth Q4         -0.0213583   -0.0733818    0.0306652
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1            Wealth Q4          0.0050441   -0.0758134    0.0859016
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2            Wealth Q4         -0.0456788   -0.1239872    0.0326296
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3            Wealth Q4         -0.0502434   -0.1278557    0.0273689
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q1            Wealth Q4         -0.0532788   -0.1340427    0.0274851
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q2            Wealth Q4         -0.0143679   -0.0850883    0.0563526
6-12 months    ki1148112-LCNI-5            MALAWI                         Wealth Q3            Wealth Q4          0.0119138   -0.0554227    0.0792503
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0431030   -0.0609528   -0.0252533
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0582063   -0.0754165   -0.0409961
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0321217   -0.0493176   -0.0149259
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0642196   -0.0919773   -0.0364619
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0585364   -0.0891346   -0.0279382
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0322347   -0.0602597   -0.0042097
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0198204   -0.1484190    0.1880597
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0602038   -0.2311403    0.1107328
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0117865   -0.1585864    0.1821594
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q1          0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q1         -0.0464124   -0.0918891   -0.0009357
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q1            Wealth Q4         -0.0758806   -0.1495897   -0.0021716
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q2            Wealth Q4         -0.0299460   -0.1053764    0.0454843
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Wealth Q3            Wealth Q4         -0.0281038   -0.1073750    0.0511674
12-24 months   ki1000108-IRC               INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC               INDIA                          Wealth Q1            Wealth Q4         -0.0526924   -0.1057425    0.0003577
12-24 months   ki1000108-IRC               INDIA                          Wealth Q2            Wealth Q4         -0.0119793   -0.0707515    0.0467928
12-24 months   ki1000108-IRC               INDIA                          Wealth Q3            Wealth Q4         -0.0363189   -0.0954190    0.0227811
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q1            Wealth Q4          0.0548842   -0.0477017    0.1574701
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q2            Wealth Q4         -0.0067564   -0.1012049    0.0876920
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Wealth Q3            Wealth Q4          0.0214700   -0.0726462    0.1155862
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q1            Wealth Q4         -0.0159431   -0.0682537    0.0363675
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q2            Wealth Q4          0.0102740   -0.0380758    0.0586237
12-24 months   ki1000111-WASH-Kenya        KENYA                          Wealth Q3            Wealth Q4          0.0166691   -0.0283218    0.0616601
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0624179   -0.0940076   -0.0308282
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0256672   -0.0583160    0.0069816
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0168439   -0.0505844    0.0168966
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q1            Wealth Q4         -0.0162262   -0.0595676    0.0271152
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q2            Wealth Q4         -0.0087505   -0.0494723    0.0319714
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Wealth Q3            Wealth Q4          0.0016642   -0.0446588    0.0479873
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q1            Wealth Q4         -0.0058886   -0.1408014    0.1290243
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q2            Wealth Q4          0.0189629   -0.1200692    0.1579949
12-24 months   ki1114097-CONTENT           PERU                           Wealth Q3            Wealth Q4          0.0033603   -0.1476003    0.1543209
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q1            Wealth Q4         -0.0302840   -0.0619413    0.0013733
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q2            Wealth Q4         -0.0248061   -0.0542116    0.0045995
12-24 months   ki1135781-COHORTS           GUATEMALA                      Wealth Q3            Wealth Q4         -0.0435468   -0.0719494   -0.0151443
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q1            Wealth Q4         -0.0482642   -0.0703433   -0.0261850
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0718594   -0.0933996   -0.0503192
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0546246   -0.0728136   -0.0364356
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q1            Wealth Q4         -0.0450822   -0.0854890   -0.0046754
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q2            Wealth Q4         -0.0450094   -0.0820993   -0.0079196
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Wealth Q3            Wealth Q4         -0.0409821   -0.0778607   -0.0041036
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q1            Wealth Q4          0.0398613   -0.0112698    0.0909925
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q2            Wealth Q4          0.0072656   -0.0430487    0.0575799
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Wealth Q3            Wealth Q4          0.0256677   -0.0216374    0.0729728
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q1            Wealth Q4          0.0155139   -0.0336276    0.0646554
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q2            Wealth Q4         -0.0301694   -0.0733521    0.0130134
12-24 months   ki1148112-LCNI-5            MALAWI                         Wealth Q3            Wealth Q4         -0.0045264   -0.0478901    0.0388372
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0317336   -0.0461129   -0.0173543
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0199830   -0.0333916   -0.0065744
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0200804   -0.0353199   -0.0048409
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0245331   -0.0397044   -0.0093617
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0196576   -0.0345536   -0.0047617
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0110059   -0.0256578    0.0036459
