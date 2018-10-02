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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** born_stunted

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                         born_stunted   ever_stunted   n_cell       n
-------------  -------------------------  -----------------------------  -------------  -------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                 0              0      184     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                 0              1       28     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                 1              0       32     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                 1              1        0     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                                     0              0      156     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                     0              1       13     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                     1              0       14     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                     1              1        0     183
0-3 months     ki0047075b-MAL-ED          INDIA                                      0              0      151     204
0-3 months     ki0047075b-MAL-ED          INDIA                                      0              1       23     204
0-3 months     ki0047075b-MAL-ED          INDIA                                      1              0       30     204
0-3 months     ki0047075b-MAL-ED          INDIA                                      1              1        0     204
0-3 months     ki0047075b-MAL-ED          NEPAL                                      0              0      147     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                      0              1        7     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                      1              0       14     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                      1              1        0     168
0-3 months     ki0047075b-MAL-ED          PERU                                       0              0      195     282
0-3 months     ki0047075b-MAL-ED          PERU                                       0              1       61     282
0-3 months     ki0047075b-MAL-ED          PERU                                       1              0       26     282
0-3 months     ki0047075b-MAL-ED          PERU                                       1              1        0     282
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                               0              0      192     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                               0              1       40     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                               1              0       26     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                               1              1        0     258
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0              0      110     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0              1       18     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1              0       17     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1              1        0     145
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                      0              0       51      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                      0              1       22      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                      1              0       11      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                      1              1        0      84
0-3 months     ki1000108-IRC              INDIA                                      0              0      244     343
0-3 months     ki1000108-IRC              INDIA                                      0              1       74     343
0-3 months     ki1000108-IRC              INDIA                                      1              0       25     343
0-3 months     ki1000108-IRC              INDIA                                      1              1        0     343
0-3 months     ki1000109-EE               PAKISTAN                                   0              0      132     268
0-3 months     ki1000109-EE               PAKISTAN                                   0              1      108     268
0-3 months     ki1000109-EE               PAKISTAN                                   1              0       28     268
0-3 months     ki1000109-EE               PAKISTAN                                   1              1        0     268
0-3 months     ki1000109-ResPak           PAKISTAN                                   0              0       12      25
0-3 months     ki1000109-ResPak           PAKISTAN                                   0              1        6      25
0-3 months     ki1000109-ResPak           PAKISTAN                                   1              0        7      25
0-3 months     ki1000109-ResPak           PAKISTAN                                   1              1        0      25
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                      0              0      754     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                      0              1       47     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                      1              0      181     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                      1              1        0     982
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                 0              0      350     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                 0              1       34     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                 1              0       55     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                 1              1        0     439
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                 0              0      213     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                 0              1       15     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                 1              0       18     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                 1              1        0     246
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                 0              0      348     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                 0              1       14     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                 1              0       50     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                 1              1        0     412
0-3 months     ki1101329-Keneba           GAMBIA                                     0              0     1103    1412
0-3 months     ki1101329-Keneba           GAMBIA                                     0              1      246    1412
0-3 months     ki1101329-Keneba           GAMBIA                                     1              0       63    1412
0-3 months     ki1101329-Keneba           GAMBIA                                     1              1        0    1412
0-3 months     ki1114097-CMIN             BANGLADESH                                 0              0       11      14
0-3 months     ki1114097-CMIN             BANGLADESH                                 0              1        1      14
0-3 months     ki1114097-CMIN             BANGLADESH                                 1              0        2      14
0-3 months     ki1114097-CMIN             BANGLADESH                                 1              1        0      14
0-3 months     ki1114097-CMIN             BRAZIL                                     0              0      109     111
0-3 months     ki1114097-CMIN             BRAZIL                                     0              1        1     111
0-3 months     ki1114097-CMIN             BRAZIL                                     1              0        1     111
0-3 months     ki1114097-CMIN             BRAZIL                                     1              1        0     111
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                              0              0        3       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                              0              1        0       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                              1              0        1       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                              1              1        0       4
0-3 months     ki1114097-CMIN             PERU                                       0              0       37      39
0-3 months     ki1114097-CMIN             PERU                                       0              1        2      39
0-3 months     ki1114097-CMIN             PERU                                       1              0        0      39
0-3 months     ki1114097-CMIN             PERU                                       1              1        0      39
0-3 months     ki1114097-CONTENT          PERU                                       0              0        2       2
0-3 months     ki1114097-CONTENT          PERU                                       0              1        0       2
0-3 months     ki1114097-CONTENT          PERU                                       1              0        0       2
0-3 months     ki1114097-CONTENT          PERU                                       1              1        0       2
0-3 months     ki1119695-PROBIT           BELARUS                                    0              0    12832   13782
0-3 months     ki1119695-PROBIT           BELARUS                                    0              1      924   13782
0-3 months     ki1119695-PROBIT           BELARUS                                    1              0       26   13782
0-3 months     ki1119695-PROBIT           BELARUS                                    1              1        0   13782
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                   0              0    10856   12916
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                   0              1     1370   12916
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                   1              0      690   12916
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                   1              1        0   12916
0-3 months     ki1135781-COHORTS          GUATEMALA                                  0              0      594     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                  0              1      138     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                  1              0       24     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                  1              1        0     756
0-3 months     ki1135781-COHORTS          INDIA                                      0              0     5357    6193
0-3 months     ki1135781-COHORTS          INDIA                                      0              1      456    6193
0-3 months     ki1135781-COHORTS          INDIA                                      1              0      380    6193
0-3 months     ki1135781-COHORTS          INDIA                                      1              1        0    6193
0-3 months     ki1135781-COHORTS          PHILIPPINES                                0              0     2564    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                                0              1      249    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                                1              0       86    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                                1              1        0    2899
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                 0              0    26740   35272
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                 0              1     2848   35272
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                 1              0     5684   35272
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                 1              1        0   35272
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                 0              0     3532    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                 0              1       10    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                 1              0      790    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                 1              1        0    4332
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                 0              0      185     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                 0              1       16     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                 1              0       22     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                 1              1        6     229
3-6 months     ki0047075b-MAL-ED          BRAZIL                                     0              0      157     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                     0              1        5     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                     1              0       10     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                     1              1        1     173
3-6 months     ki0047075b-MAL-ED          INDIA                                      0              0      149     193
3-6 months     ki0047075b-MAL-ED          INDIA                                      0              1       15     193
3-6 months     ki0047075b-MAL-ED          INDIA                                      1              0       25     193
3-6 months     ki0047075b-MAL-ED          INDIA                                      1              1        4     193
3-6 months     ki0047075b-MAL-ED          NEPAL                                      0              0      151     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                      0              1        2     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                      1              0       13     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                      1              1        1     167
3-6 months     ki0047075b-MAL-ED          PERU                                       0              0      211     263
3-6 months     ki0047075b-MAL-ED          PERU                                       0              1       27     263
3-6 months     ki0047075b-MAL-ED          PERU                                       1              0       23     263
3-6 months     ki0047075b-MAL-ED          PERU                                       1              1        2     263
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                               0              0      181     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                               0              1       23     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                               1              0       20     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                               1              1        3     227
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0              0      112     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0              1       13     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1              0       12     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1              1        4     141
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                      0              0       61      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                      0              1       11      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                      1              0        8      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                      1              1        2      82
3-6 months     ki1000108-IRC              INDIA                                      0              0      277     339
3-6 months     ki1000108-IRC              INDIA                                      0              1       37     339
3-6 months     ki1000108-IRC              INDIA                                      1              0       22     339
3-6 months     ki1000108-IRC              INDIA                                      1              1        3     339
3-6 months     ki1000109-EE               PAKISTAN                                   0              0      184     258
3-6 months     ki1000109-EE               PAKISTAN                                   0              1       52     258
3-6 months     ki1000109-EE               PAKISTAN                                   1              0       18     258
3-6 months     ki1000109-EE               PAKISTAN                                   1              1        4     258
3-6 months     ki1000109-ResPak           PAKISTAN                                   0              0       11      21
3-6 months     ki1000109-ResPak           PAKISTAN                                   0              1        4      21
3-6 months     ki1000109-ResPak           PAKISTAN                                   1              0        6      21
3-6 months     ki1000109-ResPak           PAKISTAN                                   1              1        0      21
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                      0              0      553     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                      0              1      104     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                      1              0      126     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                      1              1       19     802
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                 0              0      283     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                 0              1       55     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                 1              0       48     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                 1              1        2     388
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                 0              0      190     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                 0              1       15     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                 1              0       13     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                 1              1        1     219
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                 0              0      287     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                 0              1       61     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                 1              0       43     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                 1              1        5     396
3-6 months     ki1101329-Keneba           GAMBIA                                     0              0     1181    1344
3-6 months     ki1101329-Keneba           GAMBIA                                     0              1      107    1344
3-6 months     ki1101329-Keneba           GAMBIA                                     1              0       51    1344
3-6 months     ki1101329-Keneba           GAMBIA                                     1              1        5    1344
3-6 months     ki1114097-CMIN             BANGLADESH                                 0              0        5       6
3-6 months     ki1114097-CMIN             BANGLADESH                                 0              1        0       6
3-6 months     ki1114097-CMIN             BANGLADESH                                 1              0        1       6
3-6 months     ki1114097-CMIN             BANGLADESH                                 1              1        0       6
3-6 months     ki1114097-CMIN             BRAZIL                                     0              0       74      83
3-6 months     ki1114097-CMIN             BRAZIL                                     0              1        8      83
3-6 months     ki1114097-CMIN             BRAZIL                                     1              0        1      83
3-6 months     ki1114097-CMIN             BRAZIL                                     1              1        0      83
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                              0              0        3       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                              0              1        0       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                              1              0        1       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                              1              1        0       4
3-6 months     ki1114097-CMIN             PERU                                       0              0       34      36
3-6 months     ki1114097-CMIN             PERU                                       0              1        2      36
3-6 months     ki1114097-CMIN             PERU                                       1              0        0      36
3-6 months     ki1114097-CMIN             PERU                                       1              1        0      36
3-6 months     ki1114097-CONTENT          PERU                                       0              0        2       2
3-6 months     ki1114097-CONTENT          PERU                                       0              1        0       2
3-6 months     ki1114097-CONTENT          PERU                                       1              0        0       2
3-6 months     ki1114097-CONTENT          PERU                                       1              1        0       2
3-6 months     ki1119695-PROBIT           BELARUS                                    0              0    12888   13312
3-6 months     ki1119695-PROBIT           BELARUS                                    0              1      400   13312
3-6 months     ki1119695-PROBIT           BELARUS                                    1              0       24   13312
3-6 months     ki1119695-PROBIT           BELARUS                                    1              1        0   13312
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                   0              0     7255    8321
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                   0              1      646    8321
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                   1              0      415    8321
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                   1              1        5    8321
3-6 months     ki1135781-COHORTS          GUATEMALA                                  0              0      187     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                  0              1       51     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                  1              0        9     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                  1              1        0     247
3-6 months     ki1135781-COHORTS          PHILIPPINES                                0              0     2307    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                                0              1      281    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                                1              0       64    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                                1              1       16    2668
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                 0              0    20066   25314
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                 0              1     1294   25314
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                 1              0     3950   25314
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                 1              1        4   25314
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                 0              0     2692    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                 0              1      326    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                 1              0      660    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                 1              1        2    3680
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                 0              0      175     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                 0              1       22     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                 1              0       21     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                 1              1        5     223
6-12 months    ki0047075b-MAL-ED          BRAZIL                                     0              0      151     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                     0              1        2     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                     1              0       11     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                     1              1        0     164
6-12 months    ki0047075b-MAL-ED          INDIA                                      0              0      140     189
6-12 months    ki0047075b-MAL-ED          INDIA                                      0              1       22     189
6-12 months    ki0047075b-MAL-ED          INDIA                                      1              0       25     189
6-12 months    ki0047075b-MAL-ED          INDIA                                      1              1        2     189
6-12 months    ki0047075b-MAL-ED          NEPAL                                      0              0      146     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                      0              1        5     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                      1              0       14     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                      1              1        0     165
6-12 months    ki0047075b-MAL-ED          PERU                                       0              0      209     252
6-12 months    ki0047075b-MAL-ED          PERU                                       0              1       19     252
6-12 months    ki0047075b-MAL-ED          PERU                                       1              0       16     252
6-12 months    ki0047075b-MAL-ED          PERU                                       1              1        8     252
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                               0              0      179     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                               0              1       18     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                               1              0       17     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                               1              1        4     218
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0              0       86     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0              1       35     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1              0       15     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1              1        1     137
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                      0              0       64      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                      0              1        9      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                      1              0        7      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                      1              1        4      84
6-12 months    ki1000108-IRC              INDIA                                      0              0      286     342
6-12 months    ki1000108-IRC              INDIA                                      0              1       31     342
6-12 months    ki1000108-IRC              INDIA                                      1              0       21     342
6-12 months    ki1000108-IRC              INDIA                                      1              1        4     342
6-12 months    ki1000109-EE               PAKISTAN                                   0              0      214     260
6-12 months    ki1000109-EE               PAKISTAN                                   0              1       18     260
6-12 months    ki1000109-EE               PAKISTAN                                   1              0       28     260
6-12 months    ki1000109-EE               PAKISTAN                                   1              1        0     260
6-12 months    ki1000109-ResPak           PAKISTAN                                   0              0       11      18
6-12 months    ki1000109-ResPak           PAKISTAN                                   0              1        1      18
6-12 months    ki1000109-ResPak           PAKISTAN                                   1              0        3      18
6-12 months    ki1000109-ResPak           PAKISTAN                                   1              1        3      18
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                      0              0      570     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                      0              1      162     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                      1              0      125     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                      1              1       38     895
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                 0              0      264     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                 0              1       60     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                 1              0       32     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                 1              1       17     373
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                 0              0      166     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                 0              1       20     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                 1              0       11     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                 1              1        3     200
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                 0              0      305     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                 0              1       39     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                 1              0       37     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                 1              1       11     392
6-12 months    ki1101329-Keneba           GAMBIA                                     0              0     1131    1329
6-12 months    ki1101329-Keneba           GAMBIA                                     0              1      145    1329
6-12 months    ki1101329-Keneba           GAMBIA                                     1              0       45    1329
6-12 months    ki1101329-Keneba           GAMBIA                                     1              1        8    1329
6-12 months    ki1114097-CMIN             BANGLADESH                                 0              0        3       6
6-12 months    ki1114097-CMIN             BANGLADESH                                 0              1        2       6
6-12 months    ki1114097-CMIN             BANGLADESH                                 1              0        1       6
6-12 months    ki1114097-CMIN             BANGLADESH                                 1              1        0       6
6-12 months    ki1114097-CMIN             BRAZIL                                     0              0       90     108
6-12 months    ki1114097-CMIN             BRAZIL                                     0              1       17     108
6-12 months    ki1114097-CMIN             BRAZIL                                     1              0        1     108
6-12 months    ki1114097-CMIN             BRAZIL                                     1              1        0     108
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                              0              0        2       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                              0              1        1       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                              1              0        1       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                              1              1        0       4
6-12 months    ki1114097-CMIN             PERU                                       0              0       33      35
6-12 months    ki1114097-CMIN             PERU                                       0              1        2      35
6-12 months    ki1114097-CMIN             PERU                                       1              0        0      35
6-12 months    ki1114097-CMIN             PERU                                       1              1        0      35
6-12 months    ki1114097-CONTENT          PERU                                       0              0        2       2
6-12 months    ki1114097-CONTENT          PERU                                       0              1        0       2
6-12 months    ki1114097-CONTENT          PERU                                       1              0        0       2
6-12 months    ki1114097-CONTENT          PERU                                       1              1        0       2
6-12 months    ki1119695-PROBIT           BELARUS                                    0              0    13171   13708
6-12 months    ki1119695-PROBIT           BELARUS                                    0              1      511   13708
6-12 months    ki1119695-PROBIT           BELARUS                                    1              0       19   13708
6-12 months    ki1119695-PROBIT           BELARUS                                    1              1        7   13708
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                   0              0     7788    9295
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                   0              1     1027    9295
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                   1              0      400    9295
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                   1              1       80    9295
6-12 months    ki1135781-COHORTS          GUATEMALA                                  0              0      414     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                  0              1      221     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                  1              0       15     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                  1              1        4     654
6-12 months    ki1135781-COHORTS          INDIA                                      0              0     4220    5780
6-12 months    ki1135781-COHORTS          INDIA                                      0              1     1208    5780
6-12 months    ki1135781-COHORTS          INDIA                                      1              0      253    5780
6-12 months    ki1135781-COHORTS          INDIA                                      1              1       99    5780
6-12 months    ki1135781-COHORTS          PHILIPPINES                                0              0     2022    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                                0              1      524    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                                1              0       51    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                                1              1       27    2624
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                 0              0    17634   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                 0              1     1202   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                 1              0     2994   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                 1              1      520   22350
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                 0              0     2978    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                 0              1      552    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                 1              0      620    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                 1              1      168    4318
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                 0              0      145     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                 0              1       44     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                 1              0       24     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                 1              1        2     215
12-24 months   ki0047075b-MAL-ED          BRAZIL                                     0              0      137     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                     0              1        6     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                     1              0       10     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                     1              1        0     153
12-24 months   ki0047075b-MAL-ED          INDIA                                      0              0      132     183
12-24 months   ki0047075b-MAL-ED          INDIA                                      0              1       26     183
12-24 months   ki0047075b-MAL-ED          INDIA                                      1              0       21     183
12-24 months   ki0047075b-MAL-ED          INDIA                                      1              1        4     183
12-24 months   ki0047075b-MAL-ED          NEPAL                                      0              0      124     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                      0              1       25     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                      1              0       11     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                      1              1        3     163
12-24 months   ki0047075b-MAL-ED          PERU                                       0              0      168     228
12-24 months   ki0047075b-MAL-ED          PERU                                       0              1       38     228
12-24 months   ki0047075b-MAL-ED          PERU                                       1              0       20     228
12-24 months   ki0047075b-MAL-ED          PERU                                       1              1        2     228
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                               0              0      158     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                               0              1       34     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                               1              0       17     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                               1              1        4     213
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0              0       82     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0              1       33     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1              0       14     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1              1        2     131
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                      0              0       51      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                      0              1       22      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                      1              0        9      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                      1              1        2      84
12-24 months   ki1000108-IRC              INDIA                                      0              0      269     343
12-24 months   ki1000108-IRC              INDIA                                      0              1       49     343
12-24 months   ki1000108-IRC              INDIA                                      1              0       19     343
12-24 months   ki1000108-IRC              INDIA                                      1              1        6     343
12-24 months   ki1000109-EE               PAKISTAN                                   0              0      198     254
12-24 months   ki1000109-EE               PAKISTAN                                   0              1       28     254
12-24 months   ki1000109-EE               PAKISTAN                                   1              0       26     254
12-24 months   ki1000109-EE               PAKISTAN                                   1              1        2     254
12-24 months   ki1000109-ResPak           PAKISTAN                                   0              0       10      14
12-24 months   ki1000109-ResPak           PAKISTAN                                   0              1        0      14
12-24 months   ki1000109-ResPak           PAKISTAN                                   1              0        4      14
12-24 months   ki1000109-ResPak           PAKISTAN                                   1              1        0      14
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                      0              0      572     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                      0              1      140     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                      1              0      132     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                      1              1       28     872
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                 0              0      212     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                 0              1       79     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                 1              0       39     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                 1              1        8     338
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                 0              0      154     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                 0              1       29     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                 1              0       13     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                 1              1        1     197
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                 0              0      287     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                 0              1       50     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                 1              0       41     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                 1              1        7     385
12-24 months   ki1101329-Keneba           GAMBIA                                     0              0     1013    1292
12-24 months   ki1101329-Keneba           GAMBIA                                     0              1      224    1292
12-24 months   ki1101329-Keneba           GAMBIA                                     1              0       41    1292
12-24 months   ki1101329-Keneba           GAMBIA                                     1              1       14    1292
12-24 months   ki1114097-CMIN             BANGLADESH                                 0              0        4       6
12-24 months   ki1114097-CMIN             BANGLADESH                                 0              1        1       6
12-24 months   ki1114097-CMIN             BANGLADESH                                 1              0        1       6
12-24 months   ki1114097-CMIN             BANGLADESH                                 1              1        0       6
12-24 months   ki1114097-CMIN             BRAZIL                                     0              0      101     111
12-24 months   ki1114097-CMIN             BRAZIL                                     0              1        9     111
12-24 months   ki1114097-CMIN             BRAZIL                                     1              0        1     111
12-24 months   ki1114097-CMIN             BRAZIL                                     1              1        0     111
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                              0              0        1       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                              0              1        1       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                              1              0        1       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                              1              1        0       3
12-24 months   ki1114097-CMIN             PERU                                       0              0       26      29
12-24 months   ki1114097-CMIN             PERU                                       0              1        3      29
12-24 months   ki1114097-CMIN             PERU                                       1              0        0      29
12-24 months   ki1114097-CMIN             PERU                                       1              1        0      29
12-24 months   ki1114097-CONTENT          PERU                                       0              0        2       2
12-24 months   ki1114097-CONTENT          PERU                                       0              1        0       2
12-24 months   ki1114097-CONTENT          PERU                                       1              0        0       2
12-24 months   ki1114097-CONTENT          PERU                                       1              1        0       2
12-24 months   ki1119695-PROBIT           BELARUS                                    0              0    12826   13337
12-24 months   ki1119695-PROBIT           BELARUS                                    0              1      485   13337
12-24 months   ki1119695-PROBIT           BELARUS                                    1              0       24   13337
12-24 months   ki1119695-PROBIT           BELARUS                                    1              1        2   13337
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                   0              0     5520    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                   0              1      828    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                   1              0      285    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                   1              1       80    6713
12-24 months   ki1135781-COHORTS          GUATEMALA                                  0              0      432     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                  0              1      118     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                  1              0       17     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                  1              1        0     567
12-24 months   ki1135781-COHORTS          PHILIPPINES                                0              0     1648    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                                0              1      818    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                                1              0       64    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                                1              1       11    2541
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                 0              0    14152   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                 0              1     2522   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                 1              0     2380   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                 1              1      684   19738
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                 0              0     2812    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                 0              1      666    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                 1              0      582    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                 1              1      200    4260


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
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/c31482d0-d668-47c5-811e-24999447a798/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c31482d0-d668-47c5-811e-24999447a798/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c31482d0-d668-47c5-811e-24999447a798/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c31482d0-d668-47c5-811e-24999447a798/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED         BANGLADESH    0                    NA                0.0796020   0.0421004   0.1171036
3-6 months     ki0047075b-MAL-ED         BANGLADESH    1                    NA                0.2142857   0.0619687   0.3666027
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1582953   0.1285473   0.1880432
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1310345   0.0876100   0.1744589
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1752874   0.1352897   0.2152850
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.1041667   0.0176391   0.1906942
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                0.0830745   0.0679962   0.0981528
3-6 months     ki1101329-Keneba          GAMBIA        1                    NA                0.0892857   0.0145724   0.1639990
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0817618   0.0757197   0.0878039
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0119048   0.0015317   0.0222779
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                0.1085781   0.0965897   0.1205664
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    NA                0.2000000   0.1123313   0.2876687
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                0.1116751   0.0675938   0.1557565
6-12 months    ki0047075b-MAL-ED         BANGLADESH    1                    NA                0.1923077   0.0404773   0.3441381
6-12 months    ki0047075b-MAL-ED         PERU          0                    NA                0.0833333   0.0473866   0.1192800
6-12 months    ki0047075b-MAL-ED         PERU          1                    NA                0.3333333   0.1443604   0.5223063
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.2213115   0.1885224   0.2541006
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.2331288   0.1725937   0.2936640
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.1851852   0.1428315   0.2275389
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.3469388   0.2134833   0.4803942
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1133721   0.0798256   0.1469186
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.2291667   0.1101143   0.3482191
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                0.1136364   0.0962163   0.1310565
6-12 months    ki1101329-Keneba          GAMBIA        1                    NA                0.1509434   0.0545274   0.2473594
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                0.0373483   0.0298218   0.0448749
6-12 months    ki1119695-PROBIT          BELARUS       1                    NA                0.2692308   0.0535401   0.4849215
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.1165060   0.1098081   0.1232038
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1666667   0.1333252   0.2000081
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                0.2225497   0.2114831   0.2336164
6-12 months    ki1135781-COHORTS         INDIA         1                    NA                0.2812500   0.2342769   0.3282231
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                0.2058130   0.1901058   0.2215203
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                0.3461538   0.2405558   0.4517519
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0638140   0.0584983   0.0691297
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1479795   0.1300089   0.1659501
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.1563739   0.1366367   0.1761111
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.2131980   0.1702610   0.2561350
12-24 months   ki1000108-IRC             INDIA         0                    NA                0.1540881   0.1143492   0.1938269
12-24 months   ki1000108-IRC             INDIA         1                    NA                0.2400000   0.0723419   0.4076581
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1966292   0.1626865   0.2305719
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1750000   0.1188658   0.2311342
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.2714777   0.2203055   0.3226498
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1702128   0.0626104   0.2778152
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1483680   0.1103670   0.1863689
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.1458333   0.0458582   0.2458085
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                0.1810833   0.1596153   0.2025512
12-24 months   ki1101329-Keneba          GAMBIA        1                    NA                0.2545455   0.1393784   0.3697125
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.1304348   0.1221495   0.1387201
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.2191781   0.1767348   0.2616213
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                0.3317113   0.3131247   0.3502978
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                0.1466667   0.0665859   0.2267474
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.1512534   0.1427195   0.1597874
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.2232376   0.2005724   0.2459028
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.1914894   0.1708716   0.2121071
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.2557545   0.2023328   0.3091762


### Parameter: E(Y)


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.0960699   0.0578190   0.1343208
3-6 months     ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1533666   0.1270023   0.1797309
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.1666667   0.1299145   0.2034189
3-6 months     ki1101329-Keneba          GAMBIA        NA                   NA                0.0833333   0.0685516   0.0981151
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0782358   0.0724655   0.0840061
3-6 months     ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1113193   0.0993824   0.1232563
6-12 months    ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.1210762   0.0781644   0.1639880
6-12 months    ki0047075b-MAL-ED         PERU          NA                   NA                0.1071429   0.0688794   0.1454063
6-12 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2234637   0.1907158   0.2562116
6-12 months    ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2064343   0.1653043   0.2475643
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.1275510   0.0944858   0.1606163
6-12 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.1151242   0.0979580   0.1322903
6-12 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.0377882   0.0302168   0.0453595
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1190963   0.1125112   0.1256814
6-12 months    ki1135781-COHORTS         INDIA         NA                   NA                0.2261246   0.2153393   0.2369098
6-12 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2099848   0.1943978   0.2255717
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0770470   0.0716324   0.0824616
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1667439   0.1481671   0.1853207
12-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1603499   0.1214616   0.1992381
12-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1926606   0.1608065   0.2245146
12-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2573964   0.2107184   0.3040745
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.1480519   0.1125301   0.1835738
12-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.1842105   0.1630644   0.2053567
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1352599   0.1270781   0.1434418
12-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.3262495   0.3080166   0.3444824
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1624278   0.1545118   0.1703438
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.2032864   0.1839142   0.2226586


### Parameter: RR


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
3-6 months     ki0047075b-MAL-ED         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH    1                    0                 2.6919643   1.1474121    6.3156661
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    0                 0.8277851   0.5732900    1.1952559
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 0.5942623   0.2511085    1.4063549
3-6 months     ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1101329-Keneba          GAMBIA        1                    0                 1.0747664   0.4565105    2.5303312
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 0.1456035   0.0607289    0.3490984
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    0                 1.8419929   1.1721185    2.8947053
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH    1                    0                 1.7220280   0.7123459    4.1628377
6-12 months    ki0047075b-MAL-ED         PERU          0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki0047075b-MAL-ED         PERU          1                    0                 4.0000000   1.9619245    8.1552579
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.0533970   0.8259327    1.3435055
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.8734694   1.1975407    2.9309131
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 2.0213675   1.1117263    3.6752991
6-12 months    ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1101329-Keneba          GAMBIA        1                    0                 1.3283019   0.6886707    2.5620168
6-12 months    ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1119695-PROBIT          BELARUS       1                    0                 7.2086407   3.1819925   16.3308055
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.4305420   1.1617273    1.7615584
6-12 months    ki1135781-COHORTS         INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1135781-COHORTS         INDIA         1                    0                 1.2637624   1.0616584    1.5043403
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    0                 1.6818849   1.2280808    2.3033801
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    0                 2.3189202   2.0043146    2.6829076
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.3633856   1.0857062    1.7120840
12-24 months   ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1000108-IRC             INDIA         1                    0                 1.5575510   0.7396743    3.2797747
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    0                 0.8900000   0.6446229    1.2287804
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    0                 0.6269863   0.3241663    1.2126855
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 0.9829167   0.4728118    2.0433611
12-24 months   ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1101329-Keneba          GAMBIA        1                    0                 1.4056818   0.8805631    2.2439521
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.6803653   1.3705496    2.0602154
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    0                 0.4421516   0.2553871    0.7654970
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.4759174   1.3108510    1.6617694
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.3356067   1.0540284    1.6924073


### Parameter: PAR


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0164679   -0.0035490    0.0364848
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0049287   -0.0140987    0.0042413
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                -0.0086207   -0.0203998    0.0031584
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0002588   -0.0029177    0.0034353
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0035260   -0.0042153   -0.0028367
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0027413    0.0000229    0.0054597
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0094011   -0.0093438    0.0281460
6-12 months    ki0047075b-MAL-ED         PERU          0                    NA                 0.0238095    0.0033632    0.0442558
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0021522   -0.0081344    0.0124388
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0212491    0.0020359    0.0404623
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0141789   -0.0014269    0.0297848
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                 0.0014878   -0.0024392    0.0054148
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                 0.0004398   -0.0001460    0.0010256
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0025903    0.0008197    0.0043609
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                 0.0035748    0.0006137    0.0065360
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0041717    0.0008697    0.0074737
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0132330    0.0102787    0.0161873
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0103699    0.0021538    0.0185860
12-24 months   ki1000108-IRC             INDIA         0                    NA                 0.0062618   -0.0065178    0.0190414
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0039687   -0.0147083    0.0067710
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                -0.0140812   -0.0310666    0.0029041
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                -0.0003160   -0.0136508    0.0130187
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                 0.0031273   -0.0019250    0.0081795
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0048252    0.0024251    0.0072252
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0054618   -0.0081768   -0.0027468
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0111744    0.0072916    0.0150572
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0117970    0.0012124    0.0223816


### Parameter: PAF


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.1714156   -0.0534323    0.3482713
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0321367   -0.0926763    0.0250487
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                -0.0517241   -0.1242551    0.0161276
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0031056   -0.0357473    0.0405010
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0450690   -0.0533805   -0.0368231
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0246254    0.0000082    0.0486366
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0776462   -0.0887560    0.2186160
6-12 months    ki0047075b-MAL-ED         PERU          0                    NA                 0.2222222    0.0235864    0.3804487
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0096311   -0.0372841    0.0544245
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.1029341    0.0062073    0.1902464
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.1111628   -0.0170996    0.2232505
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                 0.0129234   -0.0217417    0.0464123
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                 0.0116389   -0.0038918    0.0269293
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0217499    0.0068056    0.0364693
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                 0.0158091    0.0026356    0.0288086
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0198668    0.0040488    0.0354335
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.1717524    0.1344292    0.2074663
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0621907    0.0116374    0.1101584
12-24 months   ki1000108-IRC             INDIA         0                    NA                 0.0390509   -0.0436581    0.1152053
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0205993   -0.0778875    0.0336442
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                -0.0547063   -0.1225897    0.0090721
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                -0.0021344   -0.0963729    0.0840039
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                 0.0169766   -0.0107966    0.0439866
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0356732    0.0178585    0.0531649
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0167411   -0.0250963   -0.0084540
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0687958    0.0446152    0.0923644
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0580315    0.0050776    0.1081671
