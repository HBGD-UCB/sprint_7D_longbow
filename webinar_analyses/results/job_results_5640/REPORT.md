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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** born_wasted

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                         born_wasted   ever_wasted   n_cell       n
-------------  -------------------------  -----------------------------  ------------  ------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                0             0      195     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                0             1        9     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                1             0       40     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                1             1        0     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                                    0             0      171     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                    0             1        6     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                    1             0        6     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                    1             1        0     183
0-3 months     ki0047075b-MAL-ED          INDIA                                     0             0      149     204
0-3 months     ki0047075b-MAL-ED          INDIA                                     0             1       21     204
0-3 months     ki0047075b-MAL-ED          INDIA                                     1             0       34     204
0-3 months     ki0047075b-MAL-ED          INDIA                                     1             1        0     204
0-3 months     ki0047075b-MAL-ED          NEPAL                                     0             0      143     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                     0             1        5     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                     1             0       20     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                     1             1        0     168
0-3 months     ki0047075b-MAL-ED          PERU                                      0             0      274     282
0-3 months     ki0047075b-MAL-ED          PERU                                      0             1        2     282
0-3 months     ki0047075b-MAL-ED          PERU                                      1             0        6     282
0-3 months     ki0047075b-MAL-ED          PERU                                      1             1        0     282
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                              0             0      234     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                              0             1        6     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                              1             0       18     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                              1             1        0     258
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0             0      142     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0             1        1     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1             0        2     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1             1        0     145
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                     0             0       42      88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                     0             1       32      88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                     1             0       14      88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                     1             1        0      88
0-3 months     ki1000108-IRC              INDIA                                     0             0      173     343
0-3 months     ki1000108-IRC              INDIA                                     0             1       78     343
0-3 months     ki1000108-IRC              INDIA                                     1             0       90     343
0-3 months     ki1000108-IRC              INDIA                                     1             1        2     343
0-3 months     ki1000109-EE               PAKISTAN                                  0             0      216     268
0-3 months     ki1000109-EE               PAKISTAN                                  0             1       18     268
0-3 months     ki1000109-EE               PAKISTAN                                  1             0       34     268
0-3 months     ki1000109-EE               PAKISTAN                                  1             1        0     268
0-3 months     ki1000109-ResPak           PAKISTAN                                  0             0       19      25
0-3 months     ki1000109-ResPak           PAKISTAN                                  0             1        3      25
0-3 months     ki1000109-ResPak           PAKISTAN                                  1             0        3      25
0-3 months     ki1000109-ResPak           PAKISTAN                                  1             1        0      25
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                     0             0      829     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                     0             1       51     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                     1             0      102     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                     1             1        0     982
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                0             0      291     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                0             1       16     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                1             0      132     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                1             1        0     439
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                0             0      192     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                0             1        4     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                1             0       50     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                1             1        0     246
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                0             0      311     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                0             1        0     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                1             0      101     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                1             1        0     412
0-3 months     ki1101329-Keneba           GAMBIA                                    0             0     1276    1427
0-3 months     ki1101329-Keneba           GAMBIA                                    0             1      122    1427
0-3 months     ki1101329-Keneba           GAMBIA                                    1             0       29    1427
0-3 months     ki1101329-Keneba           GAMBIA                                    1             1        0    1427
0-3 months     ki1114097-CMIN             BANGLADESH                                0             0       11      14
0-3 months     ki1114097-CMIN             BANGLADESH                                0             1        0      14
0-3 months     ki1114097-CMIN             BANGLADESH                                1             0        3      14
0-3 months     ki1114097-CMIN             BANGLADESH                                1             1        0      14
0-3 months     ki1114097-CMIN             BRAZIL                                    0             0      103     111
0-3 months     ki1114097-CMIN             BRAZIL                                    0             1        0     111
0-3 months     ki1114097-CMIN             BRAZIL                                    1             0        8     111
0-3 months     ki1114097-CMIN             BRAZIL                                    1             1        0     111
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                             0             0        3       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                             0             1        0       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                             1             0        1       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                             1             1        0       4
0-3 months     ki1114097-CMIN             PERU                                      0             0       34      39
0-3 months     ki1114097-CMIN             PERU                                      0             1        3      39
0-3 months     ki1114097-CMIN             PERU                                      1             0        2      39
0-3 months     ki1114097-CMIN             PERU                                      1             1        0      39
0-3 months     ki1114097-CONTENT          PERU                                      0             0        2       2
0-3 months     ki1114097-CONTENT          PERU                                      0             1        0       2
0-3 months     ki1114097-CONTENT          PERU                                      1             0        0       2
0-3 months     ki1114097-CONTENT          PERU                                      1             1        0       2
0-3 months     ki1119695-PROBIT           BELARUS                                   0             0    10269   13829
0-3 months     ki1119695-PROBIT           BELARUS                                   0             1      672   13829
0-3 months     ki1119695-PROBIT           BELARUS                                   1             0     2888   13829
0-3 months     ki1119695-PROBIT           BELARUS                                   1             1        0   13829
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                  0             0    10634   12916
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                  0             1      222   12916
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                  1             0     2060   12916
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                  1             1        0   12916
0-3 months     ki1135781-COHORTS          GUATEMALA                                 0             0      553     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                 0             1       11     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                 1             0      192     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                 1             1        0     756
0-3 months     ki1135781-COHORTS          INDIA                                     0             0     4564    6193
0-3 months     ki1135781-COHORTS          INDIA                                     0             1      533    6193
0-3 months     ki1135781-COHORTS          INDIA                                     1             0     1096    6193
0-3 months     ki1135781-COHORTS          INDIA                                     1             1        0    6193
0-3 months     ki1135781-COHORTS          PHILIPPINES                               0             0     2321    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                               0             1      127    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                               1             0      451    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                               1             1        0    2899
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                0             0    29632   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                0             1     1902   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                1             0     3736   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                1             1        0   35270
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                0             0     3908    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                0             1        8    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                1             0      416    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                1             1        0    4332
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                0             0      184     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                0             1        6     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                1             0       36     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                1             1        3     229
3-6 months     ki0047075b-MAL-ED          BRAZIL                                    0             0      166     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                    0             1        1     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                    1             0        6     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                    1             1        0     173
3-6 months     ki0047075b-MAL-ED          INDIA                                     0             0      152     193
3-6 months     ki0047075b-MAL-ED          INDIA                                     0             1        8     193
3-6 months     ki0047075b-MAL-ED          INDIA                                     1             0       32     193
3-6 months     ki0047075b-MAL-ED          INDIA                                     1             1        1     193
3-6 months     ki0047075b-MAL-ED          NEPAL                                     0             0      142     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                     0             1        5     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                     1             0       20     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                     1             1        0     167
3-6 months     ki0047075b-MAL-ED          PERU                                      0             0      255     263
3-6 months     ki0047075b-MAL-ED          PERU                                      0             1        3     263
3-6 months     ki0047075b-MAL-ED          PERU                                      1             0        5     263
3-6 months     ki0047075b-MAL-ED          PERU                                      1             1        0     263
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                              0             0      209     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                              0             1        4     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                              1             0       13     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                              1             1        1     227
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0             0      134     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0             1        5     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1             0        2     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1             1        0     141
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                     0             0       65      87
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                     0             1        8      87
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                     1             0       10      87
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                     1             1        4      87
3-6 months     ki1000108-IRC              INDIA                                     0             0      226     340
3-6 months     ki1000108-IRC              INDIA                                     0             1       23     340
3-6 months     ki1000108-IRC              INDIA                                     1             0       80     340
3-6 months     ki1000108-IRC              INDIA                                     1             1       11     340
3-6 months     ki1000109-EE               PAKISTAN                                  0             0      192     260
3-6 months     ki1000109-EE               PAKISTAN                                  0             1       34     260
3-6 months     ki1000109-EE               PAKISTAN                                  1             0       34     260
3-6 months     ki1000109-EE               PAKISTAN                                  1             1        0     260
3-6 months     ki1000109-ResPak           PAKISTAN                                  0             0       15      21
3-6 months     ki1000109-ResPak           PAKISTAN                                  0             1        3      21
3-6 months     ki1000109-ResPak           PAKISTAN                                  1             0        3      21
3-6 months     ki1000109-ResPak           PAKISTAN                                  1             1        0      21
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                     0             0      644     805
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                     0             1       77     805
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                     1             0       77     805
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                     1             1        7     805
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                0             0      252     389
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                0             1       22     389
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                1             0      115     389
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                1             1        0     389
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                0             0      169     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                0             1        7     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                1             0       41     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                1             1        2     219
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                0             0      286     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                0             1       10     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                1             0       99     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                1             1        1     396
3-6 months     ki1101329-Keneba           GAMBIA                                    0             0     1243    1359
3-6 months     ki1101329-Keneba           GAMBIA                                    0             1       91    1359
3-6 months     ki1101329-Keneba           GAMBIA                                    1             0       19    1359
3-6 months     ki1101329-Keneba           GAMBIA                                    1             1        6    1359
3-6 months     ki1114097-CMIN             BANGLADESH                                0             0        5       6
3-6 months     ki1114097-CMIN             BANGLADESH                                0             1        1       6
3-6 months     ki1114097-CMIN             BANGLADESH                                1             0        0       6
3-6 months     ki1114097-CMIN             BANGLADESH                                1             1        0       6
3-6 months     ki1114097-CMIN             BRAZIL                                    0             0       76      83
3-6 months     ki1114097-CMIN             BRAZIL                                    0             1        1      83
3-6 months     ki1114097-CMIN             BRAZIL                                    1             0        6      83
3-6 months     ki1114097-CMIN             BRAZIL                                    1             1        0      83
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                             0             0        3       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                             0             1        0       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                             1             0        1       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                             1             1        0       4
3-6 months     ki1114097-CMIN             PERU                                      0             0       34      36
3-6 months     ki1114097-CMIN             PERU                                      0             1        0      36
3-6 months     ki1114097-CMIN             PERU                                      1             0        2      36
3-6 months     ki1114097-CMIN             PERU                                      1             1        0      36
3-6 months     ki1114097-CONTENT          PERU                                      0             0        2       2
3-6 months     ki1114097-CONTENT          PERU                                      0             1        0       2
3-6 months     ki1114097-CONTENT          PERU                                      1             0        0       2
3-6 months     ki1114097-CONTENT          PERU                                      1             1        0       2
3-6 months     ki1119695-PROBIT           BELARUS                                   0             0    10363   13366
3-6 months     ki1119695-PROBIT           BELARUS                                   0             1      211   13366
3-6 months     ki1119695-PROBIT           BELARUS                                   1             0     2749   13366
3-6 months     ki1119695-PROBIT           BELARUS                                   1             1       43   13366
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                  0             0     6896    8340
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                  0             1      175    8340
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                  1             0     1259    8340
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                  1             1       10    8340
3-6 months     ki1135781-COHORTS          GUATEMALA                                 0             0      173     248
3-6 months     ki1135781-COHORTS          GUATEMALA                                 0             1        5     248
3-6 months     ki1135781-COHORTS          GUATEMALA                                 1             0       69     248
3-6 months     ki1135781-COHORTS          GUATEMALA                                 1             1        1     248
3-6 months     ki1135781-COHORTS          PHILIPPINES                               0             0     2135    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                               0             1      118    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                               1             0      381    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                               1             1       34    2668
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                0             0    21532   25326
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                0             1     1046   25326
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                1             0     2748   25326
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                1             1        0   25326
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                0             0     3142    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                0             1      160    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                1             0      378    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                1             1        0    3680
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                0             0      178     224
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                0             1        9     224
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                1             0       32     224
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                1             1        5     224
6-12 months    ki0047075b-MAL-ED          BRAZIL                                    0             0      156     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                    0             1        2     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                    1             0        6     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                    1             1        0     164
6-12 months    ki0047075b-MAL-ED          INDIA                                     0             0      134     189
6-12 months    ki0047075b-MAL-ED          INDIA                                     0             1       24     189
6-12 months    ki0047075b-MAL-ED          INDIA                                     1             0       25     189
6-12 months    ki0047075b-MAL-ED          INDIA                                     1             1        6     189
6-12 months    ki0047075b-MAL-ED          NEPAL                                     0             0      139     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                     0             1        7     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                     1             0       18     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                     1             1        1     165
6-12 months    ki0047075b-MAL-ED          PERU                                      0             0      241     252
6-12 months    ki0047075b-MAL-ED          PERU                                      0             1        6     252
6-12 months    ki0047075b-MAL-ED          PERU                                      1             0        5     252
6-12 months    ki0047075b-MAL-ED          PERU                                      1             1        0     252
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                              0             0      187     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                              0             1       17     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                              1             0       13     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                              1             1        1     218
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0             0      128     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0             1        7     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1             0        1     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1             1        1     137
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                     0             0       62      88
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                     0             1       12      88
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                     1             0       11      88
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                     1             1        3      88
6-12 months    ki1000108-IRC              INDIA                                     0             0      210     342
6-12 months    ki1000108-IRC              INDIA                                     0             1       40     342
6-12 months    ki1000108-IRC              INDIA                                     1             0       77     342
6-12 months    ki1000108-IRC              INDIA                                     1             1       15     342
6-12 months    ki1000109-EE               PAKISTAN                                  0             0      176     260
6-12 months    ki1000109-EE               PAKISTAN                                  0             1       52     260
6-12 months    ki1000109-EE               PAKISTAN                                  1             0       24     260
6-12 months    ki1000109-EE               PAKISTAN                                  1             1        8     260
6-12 months    ki1000109-ResPak           PAKISTAN                                  0             0       12      18
6-12 months    ki1000109-ResPak           PAKISTAN                                  0             1        3      18
6-12 months    ki1000109-ResPak           PAKISTAN                                  1             0        3      18
6-12 months    ki1000109-ResPak           PAKISTAN                                  1             1        0      18
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                     0             0      653     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                     0             1      150     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                     1             0       54     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                     1             1       38     895
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                0             0      231     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                0             1       33     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                1             0       90     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                1             1       19     373
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                0             0      151     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                0             1       10     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                1             0       38     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                1             1        1     200
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                0             0      279     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                0             1       16     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                1             0       84     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                1             1       13     392
6-12 months    ki1101329-Keneba           GAMBIA                                    0             0     1051    1343
6-12 months    ki1101329-Keneba           GAMBIA                                    0             1      267    1343
6-12 months    ki1101329-Keneba           GAMBIA                                    1             0       20    1343
6-12 months    ki1101329-Keneba           GAMBIA                                    1             1        5    1343
6-12 months    ki1114097-CMIN             BANGLADESH                                0             0        4       6
6-12 months    ki1114097-CMIN             BANGLADESH                                0             1        2       6
6-12 months    ki1114097-CMIN             BANGLADESH                                1             0        0       6
6-12 months    ki1114097-CMIN             BANGLADESH                                1             1        0       6
6-12 months    ki1114097-CMIN             BRAZIL                                    0             0       99     108
6-12 months    ki1114097-CMIN             BRAZIL                                    0             1        1     108
6-12 months    ki1114097-CMIN             BRAZIL                                    1             0        8     108
6-12 months    ki1114097-CMIN             BRAZIL                                    1             1        0     108
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                             0             0        3       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                             0             1        0       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                             1             0        1       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                             1             1        0       4
6-12 months    ki1114097-CMIN             PERU                                      0             0       30      35
6-12 months    ki1114097-CMIN             PERU                                      0             1        3      35
6-12 months    ki1114097-CMIN             PERU                                      1             0        0      35
6-12 months    ki1114097-CMIN             PERU                                      1             1        2      35
6-12 months    ki1114097-CONTENT          PERU                                      0             0        2       2
6-12 months    ki1114097-CONTENT          PERU                                      0             1        0       2
6-12 months    ki1114097-CONTENT          PERU                                      1             0        0       2
6-12 months    ki1114097-CONTENT          PERU                                      1             1        0       2
6-12 months    ki1119695-PROBIT           BELARUS                                   0             0    10825   13758
6-12 months    ki1119695-PROBIT           BELARUS                                   0             1       58   13758
6-12 months    ki1119695-PROBIT           BELARUS                                   1             0     2859   13758
6-12 months    ki1119695-PROBIT           BELARUS                                   1             1       16   13758
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                  0             0     7530    9308
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                  0             1      367    9308
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                  1             0     1320    9308
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                  1             1       91    9308
6-12 months    ki1135781-COHORTS          GUATEMALA                                 0             0      461     659
6-12 months    ki1135781-COHORTS          GUATEMALA                                 0             1       28     659
6-12 months    ki1135781-COHORTS          GUATEMALA                                 1             0      162     659
6-12 months    ki1135781-COHORTS          GUATEMALA                                 1             1        8     659
6-12 months    ki1135781-COHORTS          INDIA                                     0             0     4236    5782
6-12 months    ki1135781-COHORTS          INDIA                                     0             1      524    5782
6-12 months    ki1135781-COHORTS          INDIA                                     1             0      878    5782
6-12 months    ki1135781-COHORTS          INDIA                                     1             1      144    5782
6-12 months    ki1135781-COHORTS          PHILIPPINES                               0             0     1957    2628
6-12 months    ki1135781-COHORTS          PHILIPPINES                               0             1      271    2628
6-12 months    ki1135781-COHORTS          PHILIPPINES                               1             0      342    2628
6-12 months    ki1135781-COHORTS          PHILIPPINES                               1             1       58    2628
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                0             0    19056   22372
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                0             1     1044   22372
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                1             0     2100   22372
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                1             1      172   22372
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                0             0     3588    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                0             1      316    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                1             0      338    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                1             1       76    4318
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                0             0      152     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                0             1       26     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                1             0       31     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                1             1        6     215
12-24 months   ki0047075b-MAL-ED          BRAZIL                                    0             0      143     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                    0             1        4     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                    1             0        6     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                    1             1        0     153
12-24 months   ki0047075b-MAL-ED          INDIA                                     0             0      125     183
12-24 months   ki0047075b-MAL-ED          INDIA                                     0             1       27     183
12-24 months   ki0047075b-MAL-ED          INDIA                                     1             0       24     183
12-24 months   ki0047075b-MAL-ED          INDIA                                     1             1        7     183
12-24 months   ki0047075b-MAL-ED          NEPAL                                     0             0      124     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                     0             1       20     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                     1             0       16     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                     1             1        3     163
12-24 months   ki0047075b-MAL-ED          PERU                                      0             0      211     228
12-24 months   ki0047075b-MAL-ED          PERU                                      0             1       12     228
12-24 months   ki0047075b-MAL-ED          PERU                                      1             0        5     228
12-24 months   ki0047075b-MAL-ED          PERU                                      1             1        0     228
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                              0             0      181     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                              0             1       18     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                              1             0       13     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                              1             1        1     213
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0             0      118     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0             1       11     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1             0        2     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1             1        0     131
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                     0             0       70      88
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                     0             1        4      88
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                     1             0       13      88
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                     1             1        1      88
12-24 months   ki1000108-IRC              INDIA                                     0             0      205     343
12-24 months   ki1000108-IRC              INDIA                                     0             1       46     343
12-24 months   ki1000108-IRC              INDIA                                     1             0       71     343
12-24 months   ki1000108-IRC              INDIA                                     1             1       21     343
12-24 months   ki1000109-EE               PAKISTAN                                  0             0      172     256
12-24 months   ki1000109-EE               PAKISTAN                                  0             1       52     256
12-24 months   ki1000109-EE               PAKISTAN                                  1             0       24     256
12-24 months   ki1000109-EE               PAKISTAN                                  1             1        8     256
12-24 months   ki1000109-ResPak           PAKISTAN                                  0             0       10      14
12-24 months   ki1000109-ResPak           PAKISTAN                                  0             1        1      14
12-24 months   ki1000109-ResPak           PAKISTAN                                  1             0        3      14
12-24 months   ki1000109-ResPak           PAKISTAN                                  1             1        0      14
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                     0             0      684     874
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                     0             1       97     874
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                     1             0       80     874
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                     1             1       13     874
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                0             0      182     339
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                0             1       58     339
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                1             0       72     339
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                1             1       27     339
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                0             0      138     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                0             1       21     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                1             0       33     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                1             1        5     197
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                0             0      265     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                0             1       24     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                1             0       85     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                1             1       11     385
12-24 months   ki1101329-Keneba           GAMBIA                                    0             0      996    1306
12-24 months   ki1101329-Keneba           GAMBIA                                    0             1      285    1306
12-24 months   ki1101329-Keneba           GAMBIA                                    1             0       18    1306
12-24 months   ki1101329-Keneba           GAMBIA                                    1             1        7    1306
12-24 months   ki1114097-CMIN             BANGLADESH                                0             0        4       6
12-24 months   ki1114097-CMIN             BANGLADESH                                0             1        2       6
12-24 months   ki1114097-CMIN             BANGLADESH                                1             0        0       6
12-24 months   ki1114097-CMIN             BANGLADESH                                1             1        0       6
12-24 months   ki1114097-CMIN             BRAZIL                                    0             0      100     111
12-24 months   ki1114097-CMIN             BRAZIL                                    0             1        3     111
12-24 months   ki1114097-CMIN             BRAZIL                                    1             0        8     111
12-24 months   ki1114097-CMIN             BRAZIL                                    1             1        0     111
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                             0             0        3       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                             0             1        0       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                             1             0        0       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                             1             1        0       3
12-24 months   ki1114097-CMIN             PERU                                      0             0       26      29
12-24 months   ki1114097-CMIN             PERU                                      0             1        1      29
12-24 months   ki1114097-CMIN             PERU                                      1             0        2      29
12-24 months   ki1114097-CMIN             PERU                                      1             1        0      29
12-24 months   ki1114097-CONTENT          PERU                                      0             0        2       2
12-24 months   ki1114097-CONTENT          PERU                                      0             1        0       2
12-24 months   ki1114097-CONTENT          PERU                                      1             0        0       2
12-24 months   ki1114097-CONTENT          PERU                                      1             1        0       2
12-24 months   ki1119695-PROBIT           BELARUS                                   0             0    10531   13393
12-24 months   ki1119695-PROBIT           BELARUS                                   0             1       57   13393
12-24 months   ki1119695-PROBIT           BELARUS                                   1             0     2792   13393
12-24 months   ki1119695-PROBIT           BELARUS                                   1             1       13   13393
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                  0             0     5250    6734
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                  0             1      380    6734
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                  1             0     1013    6734
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                  1             1       91    6734
12-24 months   ki1135781-COHORTS          GUATEMALA                                 0             0      404     579
12-24 months   ki1135781-COHORTS          GUATEMALA                                 0             1       22     579
12-24 months   ki1135781-COHORTS          GUATEMALA                                 1             0      141     579
12-24 months   ki1135781-COHORTS          GUATEMALA                                 1             1       12     579
12-24 months   ki1135781-COHORTS          PHILIPPINES                               0             0     1772    2551
12-24 months   ki1135781-COHORTS          PHILIPPINES                               0             1      393    2551
12-24 months   ki1135781-COHORTS          PHILIPPINES                               1             0      299    2551
12-24 months   ki1135781-COHORTS          PHILIPPINES                               1             1       87    2551
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                0             0    15762   19762
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                0             1     1980   19762
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                1             0     1688   19762
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                1             1      332   19762
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                0             0     3222    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                0             1      634    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                1             0      292    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                1             1      112    4260


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
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 12-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4fda2db1-77ad-496d-af08-8a5d3ad7b92c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4fda2db1-77ad-496d-af08-8a5d3ad7b92c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4fda2db1-77ad-496d-af08-8a5d3ad7b92c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4fda2db1-77ad-496d-af08-8a5d3ad7b92c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1000108-IRC             INDIA         0                    NA                0.0923695   0.0563525   0.1283864
3-6 months     ki1000108-IRC             INDIA         1                    NA                0.1208791   0.0538032   0.1879551
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1067961   0.0747761   0.1388161
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0833333   0.0315802   0.1350865
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                0.0682159   0.0546818   0.0817500
3-6 months     ki1101329-Keneba          GAMBIA        1                    NA                0.2400000   0.0725249   0.4074751
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                0.0199546   0.0155825   0.0243268
3-6 months     ki1119695-PROBIT          BELARUS       1                    NA                0.0154011   0.0094518   0.0213505
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0247490   0.0211276   0.0283703
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0078802   0.0030151   0.0127454
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                0.0523746   0.0431738   0.0615755
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0819277   0.0555365   0.1083189
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                0.0481283   0.0173824   0.0788743
6-12 months    ki0047075b-MAL-ED         BANGLADESH    1                    NA                0.1351351   0.0247331   0.2455372
6-12 months    ki0047075b-MAL-ED         INDIA         0                    NA                0.1518987   0.0957846   0.2080129
6-12 months    ki0047075b-MAL-ED         INDIA         1                    NA                0.1935484   0.0541033   0.3329935
6-12 months    ki1000108-IRC             INDIA         0                    NA                0.1600000   0.1144893   0.2055107
6-12 months    ki1000108-IRC             INDIA         1                    NA                0.1630435   0.0874485   0.2386385
6-12 months    ki1000109-EE              PAKISTAN      0                    NA                0.2280702   0.1507495   0.3053909
6-12 months    ki1000109-EE              PAKISTAN      1                    NA                0.2500000   0.0370069   0.4629931
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1867995   0.1580626   0.2155364
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.4130435   0.3395973   0.4864897
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.1250000   0.0850526   0.1649474
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1743119   0.1029955   0.2456283
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.0542373   0.0283592   0.0801154
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.1340206   0.0661383   0.2019029
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                0.2025797   0.1808730   0.2242864
6-12 months    ki1101329-Keneba          GAMBIA        1                    NA                0.2000000   0.0431445   0.3568555
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                0.0053294   0.0038269   0.0068320
6-12 months    ki1119695-PROBIT          BELARUS       1                    NA                0.0055652   0.0016230   0.0095074
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0464733   0.0418302   0.0511165
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0644933   0.0516762   0.0773103
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                0.0572597   0.0366513   0.0778681
6-12 months    ki1135781-COHORTS         GUATEMALA     1                    NA                0.0470588   0.0152017   0.0789160
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                0.1100840   0.1011916   0.1189764
6-12 months    ki1135781-COHORTS         INDIA         1                    NA                0.1409002   0.1195679   0.1622325
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                0.1216338   0.1080588   0.1352087
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                0.1450000   0.1104882   0.1795118
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0519403   0.0473281   0.0565525
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0757042   0.0590271   0.0923814
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.0809426   0.0667385   0.0951467
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.1835749   0.1302764   0.2368733
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                0.1460674   0.0940632   0.1980717
12-24 months   ki0047075b-MAL-ED         BANGLADESH    1                    NA                0.1621622   0.0431163   0.2812080
12-24 months   ki0047075b-MAL-ED         INDIA         0                    NA                0.1776316   0.1167046   0.2385585
12-24 months   ki0047075b-MAL-ED         INDIA         1                    NA                0.2258065   0.0782188   0.3733941
12-24 months   ki1000108-IRC             INDIA         0                    NA                0.1832669   0.1353347   0.2311991
12-24 months   ki1000108-IRC             INDIA         1                    NA                0.2282609   0.1423715   0.3141502
12-24 months   ki1000109-EE              PAKISTAN      0                    NA                0.2321429   0.1536446   0.3106411
12-24 months   ki1000109-EE              PAKISTAN      1                    NA                0.2500000   0.0369940   0.4630060
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1241997   0.1054745   0.1429250
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1397849   0.0484819   0.2310880
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.2416667   0.1874263   0.2959070
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.2727273   0.1848685   0.3605860
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.1320755   0.0793152   0.1848357
12-24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1315789   0.0238283   0.2393296
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.0830450   0.0511887   0.1149012
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.1145833   0.0507846   0.1783820
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                0.2224824   0.1996978   0.2452671
12-24 months   ki1101329-Keneba          GAMBIA        1                    NA                0.2800000   0.1039282   0.4560718
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                0.0053835   0.0029485   0.0078184
12-24 months   ki1119695-PROBIT          BELARUS       1                    NA                0.0046346   0.0009143   0.0083548
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0674956   0.0609418   0.0740493
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0824275   0.0662038   0.0986513
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                0.0516432   0.0306097   0.0726767
12-24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                0.0784314   0.0357944   0.1210684
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                0.1815242   0.1652847   0.1977638
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                0.2253886   0.1836971   0.2670801
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.1115996   0.1045688   0.1186304
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1643564   0.1395003   0.1892126
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.1644191   0.1452398   0.1835983
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.2772277   0.2052906   0.3491648


### Parameter: E(Y)


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1000108-IRC             INDIA         NA                   NA                0.1000000   0.0680648   0.1319352
3-6 months     ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1043478   0.0742151   0.1344806
3-6 months     ki1101329-Keneba          GAMBIA        NA                   NA                0.0713760   0.0576831   0.0850689
3-6 months     ki1119695-PROBIT          BELARUS       NA                   NA                0.0190034   0.0148301   0.0231768
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0221823   0.0190213   0.0253432
3-6 months     ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0569715   0.0481747   0.0657684
6-12 months    ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.0625000   0.0307297   0.0942703
6-12 months    ki0047075b-MAL-ED         INDIA         NA                   NA                0.1587302   0.1064946   0.2109658
6-12 months    ki1000108-IRC             INDIA         NA                   NA                0.1608187   0.1218275   0.1998100
6-12 months    ki1000109-EE              PAKISTAN      NA                   NA                0.2307692   0.1580632   0.3034753
6-12 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2100559   0.1780909   0.2420208
6-12 months    ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.1394102   0.1042119   0.1746085
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0739796   0.0480362   0.0999229
6-12 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.2025316   0.1810298   0.2240335
6-12 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.0053787   0.0037427   0.0070147
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0492050   0.0448107   0.0535993
6-12 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0546282   0.0372644   0.0719920
6-12 months    ki1135781-COHORTS         INDIA         NA                   NA                0.1155310   0.1072908   0.1237711
6-12 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1251903   0.1125353   0.1378452
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0543537   0.0498489   0.0588584
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0907828   0.0771434   0.1044222
12-24 months   ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.1488372   0.1011498   0.1965246
12-24 months   ki0047075b-MAL-ED         INDIA         NA                   NA                0.1857923   0.1292864   0.2422983
12-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1953353   0.1533175   0.2373530
12-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.2343750   0.1607017   0.3080483
12-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1258581   0.1080384   0.1436778
12-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2507375   0.2045295   0.2969454
12-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.1319797   0.0845949   0.1793644
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0909091   0.0621557   0.1196625
12-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.2235835   0.2009782   0.2461887
12-24 months   ki1119695-PROBIT          BELARUS       NA                   NA                0.0052266   0.0028868   0.0075664
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0699436   0.0638514   0.0760357
12-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0587219   0.0395554   0.0778885
12-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1881615   0.1729918   0.2033312
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1169922   0.1100927   0.1238917
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1751174   0.1566212   0.1936135


### Parameter: RR


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000108-IRC             INDIA         1                    0                 1.3086479   0.6641779   2.5784648
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    0                 0.7803030   0.4132212   1.4734791
3-6 months     ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1101329-Keneba          GAMBIA        1                    0                 3.5182418   1.7031708   7.2676357
3-6 months     ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1119695-PROBIT          BELARUS       1                    0                 0.7718093   0.5314532   1.1208692
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 0.3184059   0.1688210   0.6005315
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    0                 1.5642638   1.0838276   2.2576666
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH    1                    0                 2.8078078   0.9953247   7.9208169
6-12 months    ki0047075b-MAL-ED         INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki0047075b-MAL-ED         INDIA         1                    0                 1.2741935   0.5670308   2.8632821
6-12 months    ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1000108-IRC             INDIA         1                    0                 1.0190217   0.5914941   1.7555634
6-12 months    ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1000109-EE              PAKISTAN      1                    0                 1.0961538   0.4381737   2.7421848
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    0                 2.2111594   1.7921937   2.7280679
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.3944954   0.8297596   2.3435915
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 2.4710052   1.2321753   4.9553552
6-12 months    ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1101329-Keneba          GAMBIA        1                    0                 0.9872659   0.4473655   2.1787421
6-12 months    ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1119695-PROBIT          BELARUS       1                    0                 1.0442459   0.5298253   2.0581302
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.3877475   1.1109847   1.7334559
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         GUATEMALA     1                    0                 0.8218488   0.3817876   1.7691393
6-12 months    ki1135781-COHORTS         INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         INDIA         1                    0                 1.2799331   1.0781064   1.5195427
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    0                 1.1921033   0.9165302   1.5505331
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.4575239   1.1505934   1.8463307
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    0                 2.2679631   1.6085462   3.1977051
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH    1                    0                 1.1101871   0.4909733   2.5103514
12-24 months   ki0047075b-MAL-ED         INDIA         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki0047075b-MAL-ED         INDIA         1                    0                 1.2712067   0.6076429   2.6594016
12-24 months   ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1000108-IRC             INDIA         1                    0                 1.2455104   0.7876508   1.9695226
12-24 months   ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1000109-EE              PAKISTAN      1                    0                 1.0769231   0.4306049   2.6933350
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.1254850   0.5613509   2.2565501
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.1285266   0.7620737   1.6711932
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH    1                    0                 0.9962406   0.4005529   2.4778132
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 1.3797743   0.7017210   2.7130113
12-24 months   ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1101329-Keneba          GAMBIA        1                    0                 1.2585263   0.6655304   2.3798891
12-24 months   ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1119695-PROBIT          BELARUS       1                    0                 0.8608938   0.4023790   1.8418903
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.2212290   0.9805763   1.5209426
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1135781-COHORTS         GUATEMALA     1                    0                 1.5187166   0.7699710   2.9955676
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    0                 1.2416446   1.0110229   1.5248728
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.4727333   1.2528964   1.7311434
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.6861043   1.2647550   2.2478248


### Parameter: PAR


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1000108-IRC             INDIA         0                    NA                 0.0076305   -0.0127908    0.0280518
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0024483   -0.0086158    0.0037192
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0031601   -0.0001657    0.0064859
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0009512   -0.0023037    0.0004014
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0025667   -0.0034987   -0.0016348
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0045969    0.0002305    0.0089633
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0143717   -0.0050275    0.0337708
6-12 months    ki0047075b-MAL-ED         INDIA         0                    NA                 0.0068314   -0.0179213    0.0315842
6-12 months    ki1000108-IRC             INDIA         0                    NA                 0.0008187   -0.0229181    0.0245555
6-12 months    ki1000109-EE              PAKISTAN      0                    NA                 0.0026991   -0.0252171    0.0306152
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0232564    0.0140791    0.0324336
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0144102   -0.0095855    0.0384058
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0197423    0.0014447    0.0380399
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                -0.0000480   -0.0029958    0.0028997
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                 0.0000493   -0.0007346    0.0008332
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0027316    0.0006610    0.0048023
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0026315   -0.0124252    0.0071622
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                 0.0054469    0.0013506    0.0095432
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0035565   -0.0020973    0.0092103
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0024134    0.0006588    0.0041679
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0098401    0.0047072    0.0149731
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0027698   -0.0196015    0.0251410
12-24 months   ki0047075b-MAL-ED         INDIA         0                    NA                 0.0081608   -0.0190141    0.0353356
12-24 months   ki1000108-IRC             INDIA         0                    NA                 0.0120683   -0.0143981    0.0385348
12-24 months   ki1000109-EE              PAKISTAN      0                    NA                 0.0022321   -0.0261627    0.0306270
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0016584   -0.0087838    0.0121006
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0090708   -0.0211203    0.0392619
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                -0.0000958   -0.0232380    0.0230465
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0078641   -0.0099693    0.0256976
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                 0.0011010   -0.0023243    0.0045264
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                -0.0001568   -0.0009166    0.0006030
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0024480   -0.0004236    0.0053197
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0070787   -0.0055212    0.0196787
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0066373   -0.0001603    0.0134348
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0053926    0.0027749    0.0080104
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0106983    0.0034761    0.0179205


### Parameter: PAF


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1000108-IRC             INDIA         0                    NA                 0.0763052   -0.1507973    0.2585905
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0234628   -0.0831795    0.0329617
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0442743   -0.0027778    0.0891185
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0500522   -0.1247303    0.0196676
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.1157105   -0.1552139   -0.0775580
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0806877    0.0017449    0.1533877
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.2299465   -0.1221620    0.4715715
6-12 months    ki0047075b-MAL-ED         INDIA         0                    NA                 0.0430380   -0.1258451    0.1865877
6-12 months    ki1000108-IRC             INDIA         0                    NA                 0.0050909   -0.1540158    0.1422612
6-12 months    ki1000109-EE              PAKISTAN      0                    NA                 0.0116959   -0.1169631    0.1255351
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.1107151    0.0712699    0.1484851
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.1033654   -0.0846815    0.2588113
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.2668615   -0.0049137    0.4651361
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                -0.0002371   -0.0148981    0.0142121
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                 0.0091613   -0.1465732    0.1437431
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0555155    0.0127579    0.0964214
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0481709   -0.2430114    0.1161286
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                 0.0471469    0.0111471    0.0818361
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0284088   -0.0177499    0.0724741
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0444010    0.0118588    0.0758716
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.1083922    0.0488486    0.1642083
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0186096   -0.1437279    0.1579053
12-24 months   ki0047075b-MAL-ED         INDIA         0                    NA                 0.0439241   -0.1137207    0.1792547
12-24 months   ki1000108-IRC             INDIA         0                    NA                 0.0617827   -0.0835711    0.1876383
12-24 months   ki1000109-EE              PAKISTAN      0                    NA                 0.0095238   -0.1193320    0.1235459
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0131766   -0.0729868    0.0924209
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0361765   -0.0920029    0.1493102
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                -0.0007257   -0.1923729    0.1601185
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0865052   -0.1303789    0.2617761
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                 0.0049244   -0.0105108    0.0201239
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                -0.0300084   -0.1873845    0.1065091
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0349998   -0.0068417    0.0751025
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                 0.1205468   -0.1183416    0.3084064
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0352742   -0.0014727    0.0706729
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0460938    0.0236728    0.0679998
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0610921    0.0190703    0.1013137
