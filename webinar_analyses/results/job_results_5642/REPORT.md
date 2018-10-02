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

**Intervention Variable:** born_wasted

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                         born_wasted   ever_stunted   n_cell       n
-------------  -------------------------  -----------------------------  ------------  -------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                0              0      179     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                0              1       25     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                1              0       37     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                1              1        3     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                                    0              0      164     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                    0              1       13     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                    1              0        6     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                    1              1        0     183
0-3 months     ki0047075b-MAL-ED          INDIA                                     0              0      151     204
0-3 months     ki0047075b-MAL-ED          INDIA                                     0              1       19     204
0-3 months     ki0047075b-MAL-ED          INDIA                                     1              0       30     204
0-3 months     ki0047075b-MAL-ED          INDIA                                     1              1        4     204
0-3 months     ki0047075b-MAL-ED          NEPAL                                     0              0      142     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                     0              1        6     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                     1              0       19     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                     1              1        1     168
0-3 months     ki0047075b-MAL-ED          PERU                                      0              0      216     282
0-3 months     ki0047075b-MAL-ED          PERU                                      0              1       60     282
0-3 months     ki0047075b-MAL-ED          PERU                                      1              0        5     282
0-3 months     ki0047075b-MAL-ED          PERU                                      1              1        1     282
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                              0              0      201     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                              0              1       39     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                              1              0       17     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                              1              1        1     258
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0              0      125     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0              1       18     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1              0        2     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1              1        0     145
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                     0              0       56      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                     0              1       18      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                     1              0        6      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                     1              1        4      84
0-3 months     ki1000108-IRC              INDIA                                     0              0      202     343
0-3 months     ki1000108-IRC              INDIA                                     0              1       49     343
0-3 months     ki1000108-IRC              INDIA                                     1              0       67     343
0-3 months     ki1000108-IRC              INDIA                                     1              1       25     343
0-3 months     ki1000109-EE               PAKISTAN                                  0              0      138     268
0-3 months     ki1000109-EE               PAKISTAN                                  0              1       96     268
0-3 months     ki1000109-EE               PAKISTAN                                  1              0       22     268
0-3 months     ki1000109-EE               PAKISTAN                                  1              1       12     268
0-3 months     ki1000109-ResPak           PAKISTAN                                  0              0       16      25
0-3 months     ki1000109-ResPak           PAKISTAN                                  0              1        6      25
0-3 months     ki1000109-ResPak           PAKISTAN                                  1              0        3      25
0-3 months     ki1000109-ResPak           PAKISTAN                                  1              1        0      25
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                     0              0      840     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                     0              1       40     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                     1              0       95     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                     1              1        7     982
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                0              0      284     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                0              1       23     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                1              0      121     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                1              1       11     439
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                0              0      186     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                0              1       10     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                1              0       45     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                1              1        5     246
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                0              0      302     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                0              1        9     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                1              0       96     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                1              1        5     412
0-3 months     ki1101329-Keneba           GAMBIA                                    0              0     1153    1411
0-3 months     ki1101329-Keneba           GAMBIA                                    0              1      231    1411
0-3 months     ki1101329-Keneba           GAMBIA                                    1              0       12    1411
0-3 months     ki1101329-Keneba           GAMBIA                                    1              1       15    1411
0-3 months     ki1114097-CMIN             BANGLADESH                                0              0       10      14
0-3 months     ki1114097-CMIN             BANGLADESH                                0              1        1      14
0-3 months     ki1114097-CMIN             BANGLADESH                                1              0        3      14
0-3 months     ki1114097-CMIN             BANGLADESH                                1              1        0      14
0-3 months     ki1114097-CMIN             BRAZIL                                    0              0      103     111
0-3 months     ki1114097-CMIN             BRAZIL                                    0              1        0     111
0-3 months     ki1114097-CMIN             BRAZIL                                    1              0        7     111
0-3 months     ki1114097-CMIN             BRAZIL                                    1              1        1     111
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                             0              0        3       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                             0              1        0       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                             1              0        1       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                             1              1        0       4
0-3 months     ki1114097-CMIN             PERU                                      0              0       35      39
0-3 months     ki1114097-CMIN             PERU                                      0              1        2      39
0-3 months     ki1114097-CMIN             PERU                                      1              0        2      39
0-3 months     ki1114097-CMIN             PERU                                      1              1        0      39
0-3 months     ki1114097-CONTENT          PERU                                      0              0        2       2
0-3 months     ki1114097-CONTENT          PERU                                      0              1        0       2
0-3 months     ki1114097-CONTENT          PERU                                      1              0        0       2
0-3 months     ki1114097-CONTENT          PERU                                      1              1        0       2
0-3 months     ki1119695-PROBIT           BELARUS                                   0              0    10139   13782
0-3 months     ki1119695-PROBIT           BELARUS                                   0              1      798   13782
0-3 months     ki1119695-PROBIT           BELARUS                                   1              0     2719   13782
0-3 months     ki1119695-PROBIT           BELARUS                                   1              1      126   13782
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                  0              0     9910   12915
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                  0              1      946   12915
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                  1              0     1635   12915
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                  1              1      424   12915
0-3 months     ki1135781-COHORTS          GUATEMALA                                 0              0      453     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                 0              1      111     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                 1              0      165     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                 1              1       27     756
0-3 months     ki1135781-COHORTS          INDIA                                     0              0     4751    6193
0-3 months     ki1135781-COHORTS          INDIA                                     0              1      346    6193
0-3 months     ki1135781-COHORTS          INDIA                                     1              0      986    6193
0-3 months     ki1135781-COHORTS          INDIA                                     1              1      110    6193
0-3 months     ki1135781-COHORTS          PHILIPPINES                               0              0     2249    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                               0              1      199    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                               1              0      401    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                               1              1       50    2899
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                0              0    29198   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                0              1     2336   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                1              0     3224   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                1              1      512   35270
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                0              0     3906    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                0              1       10    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                1              0      416    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                1              1        0    4332
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                0              0      169     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                0              1       21     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                1              0       38     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                1              1        1     229
3-6 months     ki0047075b-MAL-ED          BRAZIL                                    0              0      161     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                    0              1        6     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                    1              0        6     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                    1              1        0     173
3-6 months     ki0047075b-MAL-ED          INDIA                                     0              0      143     193
3-6 months     ki0047075b-MAL-ED          INDIA                                     0              1       17     193
3-6 months     ki0047075b-MAL-ED          INDIA                                     1              0       31     193
3-6 months     ki0047075b-MAL-ED          INDIA                                     1              1        2     193
3-6 months     ki0047075b-MAL-ED          NEPAL                                     0              0      145     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                     0              1        2     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                     1              0       19     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                     1              1        1     167
3-6 months     ki0047075b-MAL-ED          PERU                                      0              0      229     263
3-6 months     ki0047075b-MAL-ED          PERU                                      0              1       29     263
3-6 months     ki0047075b-MAL-ED          PERU                                      1              0        5     263
3-6 months     ki0047075b-MAL-ED          PERU                                      1              1        0     263
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                              0              0      187     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                              0              1       26     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                              1              0       14     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                              1              1        0     227
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0              0      122     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0              1       17     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1              0        2     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1              1        0     141
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                     0              0       61      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                     0              1       12      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                     1              0        8      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                     1              1        1      82
3-6 months     ki1000108-IRC              INDIA                                     0              0      222     339
3-6 months     ki1000108-IRC              INDIA                                     0              1       27     339
3-6 months     ki1000108-IRC              INDIA                                     1              0       77     339
3-6 months     ki1000108-IRC              INDIA                                     1              1       13     339
3-6 months     ki1000109-EE               PAKISTAN                                  0              0      184     258
3-6 months     ki1000109-EE               PAKISTAN                                  0              1       40     258
3-6 months     ki1000109-EE               PAKISTAN                                  1              0       18     258
3-6 months     ki1000109-EE               PAKISTAN                                  1              1       16     258
3-6 months     ki1000109-ResPak           PAKISTAN                                  0              0       15      21
3-6 months     ki1000109-ResPak           PAKISTAN                                  0              1        3      21
3-6 months     ki1000109-ResPak           PAKISTAN                                  1              0        2      21
3-6 months     ki1000109-ResPak           PAKISTAN                                  1              1        1      21
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                     0              0      613     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                     0              1      105     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                     1              0       66     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                     1              1       18     802
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                0              0      235     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                0              1       39     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                1              0       96     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                1              1       18     388
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                0              0      165     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                0              1       11     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                1              0       38     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                1              1        5     219
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                0              0      250     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                0              1       46     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                1              0       80     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                1              1       20     396
3-6 months     ki1101329-Keneba           GAMBIA                                    0              0     1208    1343
3-6 months     ki1101329-Keneba           GAMBIA                                    0              1      111    1343
3-6 months     ki1101329-Keneba           GAMBIA                                    1              0       23    1343
3-6 months     ki1101329-Keneba           GAMBIA                                    1              1        1    1343
3-6 months     ki1114097-CMIN             BANGLADESH                                0              0        6       6
3-6 months     ki1114097-CMIN             BANGLADESH                                0              1        0       6
3-6 months     ki1114097-CMIN             BANGLADESH                                1              0        0       6
3-6 months     ki1114097-CMIN             BANGLADESH                                1              1        0       6
3-6 months     ki1114097-CMIN             BRAZIL                                    0              0       69      83
3-6 months     ki1114097-CMIN             BRAZIL                                    0              1        8      83
3-6 months     ki1114097-CMIN             BRAZIL                                    1              0        6      83
3-6 months     ki1114097-CMIN             BRAZIL                                    1              1        0      83
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                             0              0        3       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                             0              1        0       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                             1              0        1       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                             1              1        0       4
3-6 months     ki1114097-CMIN             PERU                                      0              0       32      36
3-6 months     ki1114097-CMIN             PERU                                      0              1        2      36
3-6 months     ki1114097-CMIN             PERU                                      1              0        2      36
3-6 months     ki1114097-CMIN             PERU                                      1              1        0      36
3-6 months     ki1114097-CONTENT          PERU                                      0              0        2       2
3-6 months     ki1114097-CONTENT          PERU                                      0              1        0       2
3-6 months     ki1114097-CONTENT          PERU                                      1              0        0       2
3-6 months     ki1114097-CONTENT          PERU                                      1              1        0       2
3-6 months     ki1119695-PROBIT           BELARUS                                   0              0    10232   13312
3-6 months     ki1119695-PROBIT           BELARUS                                   0              1      332   13312
3-6 months     ki1119695-PROBIT           BELARUS                                   1              0     2680   13312
3-6 months     ki1119695-PROBIT           BELARUS                                   1              1       68   13312
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                  0              0     6551    8319
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                  0              1      506    8319
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                  1              0     1118    8319
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                  1              1      144    8319
3-6 months     ki1135781-COHORTS          GUATEMALA                                 0              0      138     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                 0              1       39     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                 1              0       58     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                 1              1       12     247
3-6 months     ki1135781-COHORTS          PHILIPPINES                               0              0     1997    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                               0              1      256    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                               1              0      374    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                               1              1       41    2668
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                0              0    21420   25312
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                0              1     1146   25312
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                1              0     2594   25312
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                1              1      152   25312
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                0              0     3020    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                0              1      282    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                1              0      332    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                1              1       46    3680
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                0              0      164     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                0              1       22     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                1              0       32     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                1              1        5     223
6-12 months    ki0047075b-MAL-ED          BRAZIL                                    0              0      156     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                    0              1        2     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                    1              0        6     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                    1              1        0     164
6-12 months    ki0047075b-MAL-ED          INDIA                                     0              0      137     189
6-12 months    ki0047075b-MAL-ED          INDIA                                     0              1       21     189
6-12 months    ki0047075b-MAL-ED          INDIA                                     1              0       28     189
6-12 months    ki0047075b-MAL-ED          INDIA                                     1              1        3     189
6-12 months    ki0047075b-MAL-ED          NEPAL                                     0              0      141     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                     0              1        5     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                     1              0       19     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                     1              1        0     165
6-12 months    ki0047075b-MAL-ED          PERU                                      0              0      221     252
6-12 months    ki0047075b-MAL-ED          PERU                                      0              1       26     252
6-12 months    ki0047075b-MAL-ED          PERU                                      1              0        4     252
6-12 months    ki0047075b-MAL-ED          PERU                                      1              1        1     252
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                              0              0      183     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                              0              1       21     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                              1              0       13     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                              1              1        1     218
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0              0       99     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0              1       36     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1              0        2     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1              1        0     137
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                     0              0       63      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                     0              1       11      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                     1              0        8      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                     1              1        2      84
6-12 months    ki1000108-IRC              INDIA                                     0              0      226     342
6-12 months    ki1000108-IRC              INDIA                                     0              1       24     342
6-12 months    ki1000108-IRC              INDIA                                     1              0       81     342
6-12 months    ki1000108-IRC              INDIA                                     1              1       11     342
6-12 months    ki1000109-EE               PAKISTAN                                  0              0      210     260
6-12 months    ki1000109-EE               PAKISTAN                                  0              1       18     260
6-12 months    ki1000109-EE               PAKISTAN                                  1              0       32     260
6-12 months    ki1000109-EE               PAKISTAN                                  1              1        0     260
6-12 months    ki1000109-ResPak           PAKISTAN                                  0              0       12      18
6-12 months    ki1000109-ResPak           PAKISTAN                                  0              1        3      18
6-12 months    ki1000109-ResPak           PAKISTAN                                  1              0        2      18
6-12 months    ki1000109-ResPak           PAKISTAN                                  1              1        1      18
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                     0              0      621     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                     0              1      182     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                     1              0       74     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                     1              1       18     895
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                0              0      210     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                0              1       54     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                1              0       86     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                1              1       23     373
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                0              0      143     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                0              1       18     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                1              0       34     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                1              1        5     200
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                0              0      251     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                0              1       44     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                1              0       91     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                1              1        6     392
6-12 months    ki1101329-Keneba           GAMBIA                                    0              0     1152    1328
6-12 months    ki1101329-Keneba           GAMBIA                                    0              1      152    1328
6-12 months    ki1101329-Keneba           GAMBIA                                    1              0       23    1328
6-12 months    ki1101329-Keneba           GAMBIA                                    1              1        1    1328
6-12 months    ki1114097-CMIN             BANGLADESH                                0              0        4       6
6-12 months    ki1114097-CMIN             BANGLADESH                                0              1        2       6
6-12 months    ki1114097-CMIN             BANGLADESH                                1              0        0       6
6-12 months    ki1114097-CMIN             BANGLADESH                                1              1        0       6
6-12 months    ki1114097-CMIN             BRAZIL                                    0              0       84     108
6-12 months    ki1114097-CMIN             BRAZIL                                    0              1       16     108
6-12 months    ki1114097-CMIN             BRAZIL                                    1              0        7     108
6-12 months    ki1114097-CMIN             BRAZIL                                    1              1        1     108
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                             0              0        2       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                             0              1        1       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                             1              0        1       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                             1              1        0       4
6-12 months    ki1114097-CMIN             PERU                                      0              0       32      35
6-12 months    ki1114097-CMIN             PERU                                      0              1        1      35
6-12 months    ki1114097-CMIN             PERU                                      1              0        1      35
6-12 months    ki1114097-CMIN             PERU                                      1              1        1      35
6-12 months    ki1114097-CONTENT          PERU                                      0              0        2       2
6-12 months    ki1114097-CONTENT          PERU                                      0              1        0       2
6-12 months    ki1114097-CONTENT          PERU                                      1              0        0       2
6-12 months    ki1114097-CONTENT          PERU                                      1              1        0       2
6-12 months    ki1119695-PROBIT           BELARUS                                   0              0    10478   13708
6-12 months    ki1119695-PROBIT           BELARUS                                   0              1      400   13708
6-12 months    ki1119695-PROBIT           BELARUS                                   1              0     2712   13708
6-12 months    ki1119695-PROBIT           BELARUS                                   1              1      118   13708
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                  0              0     6931    9293
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                  0              1      955    9293
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                  1              0     1255    9293
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                  1              1      152    9293
6-12 months    ki1135781-COHORTS          GUATEMALA                                 0              0      324     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                 0              1      161     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                 1              0      105     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                 1              1       64     654
6-12 months    ki1135781-COHORTS          INDIA                                     0              0     3672    5780
6-12 months    ki1135781-COHORTS          INDIA                                     0              1     1087    5780
6-12 months    ki1135781-COHORTS          INDIA                                     1              0      801    5780
6-12 months    ki1135781-COHORTS          INDIA                                     1              1      220    5780
6-12 months    ki1135781-COHORTS          PHILIPPINES                               0              0     1757    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                               0              1      469    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                               1              0      316    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                               1              1       82    2624
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                0              0    18476   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                0              1     1604   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                1              0     2152   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                1              1      118   22350
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                0              0     3264    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                0              1      640    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                1              0      334    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                1              1       80    4318
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                0              0      138     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                0              1       40     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                1              0       31     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                1              1        6     215
12-24 months   ki0047075b-MAL-ED          BRAZIL                                    0              0      142     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                    0              1        5     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                    1              0        5     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                    1              1        1     153
12-24 months   ki0047075b-MAL-ED          INDIA                                     0              0      124     183
12-24 months   ki0047075b-MAL-ED          INDIA                                     0              1       28     183
12-24 months   ki0047075b-MAL-ED          INDIA                                     1              0       29     183
12-24 months   ki0047075b-MAL-ED          INDIA                                     1              1        2     183
12-24 months   ki0047075b-MAL-ED          NEPAL                                     0              0      122     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                     0              1       22     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                     1              0       13     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                     1              1        6     163
12-24 months   ki0047075b-MAL-ED          PERU                                      0              0      184     228
12-24 months   ki0047075b-MAL-ED          PERU                                      0              1       39     228
12-24 months   ki0047075b-MAL-ED          PERU                                      1              0        4     228
12-24 months   ki0047075b-MAL-ED          PERU                                      1              1        1     228
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                              0              0      162     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                              0              1       37     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                              1              0       13     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                              1              1        1     213
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0              0       96     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              0              1       33     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1              0        0     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF              1              1        2     131
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                     0              0       51      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                     0              1       23      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                     1              0        9      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                     1              1        1      84
12-24 months   ki1000108-IRC              INDIA                                     0              0      208     343
12-24 months   ki1000108-IRC              INDIA                                     0              1       43     343
12-24 months   ki1000108-IRC              INDIA                                     1              0       80     343
12-24 months   ki1000108-IRC              INDIA                                     1              1       12     343
12-24 months   ki1000109-EE               PAKISTAN                                  0              0      194     254
12-24 months   ki1000109-EE               PAKISTAN                                  0              1       28     254
12-24 months   ki1000109-EE               PAKISTAN                                  1              0       30     254
12-24 months   ki1000109-EE               PAKISTAN                                  1              1        2     254
12-24 months   ki1000109-ResPak           PAKISTAN                                  0              0       11      14
12-24 months   ki1000109-ResPak           PAKISTAN                                  0              1        0      14
12-24 months   ki1000109-ResPak           PAKISTAN                                  1              0        3      14
12-24 months   ki1000109-ResPak           PAKISTAN                                  1              1        0      14
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                     0              0      627     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                     0              1      152     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                     1              0       77     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                     1              1       16     872
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                0              0      171     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                0              1       68     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                1              0       80     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                1              1       19     338
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                0              0      135     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                0              1       24     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                1              0       32     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                1              1        6     197
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                0              0      247     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                0              1       42     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                1              0       81     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                1              1       15     385
12-24 months   ki1101329-Keneba           GAMBIA                                    0              0     1030    1291
12-24 months   ki1101329-Keneba           GAMBIA                                    0              1      237    1291
12-24 months   ki1101329-Keneba           GAMBIA                                    1              0       23    1291
12-24 months   ki1101329-Keneba           GAMBIA                                    1              1        1    1291
12-24 months   ki1114097-CMIN             BANGLADESH                                0              0        5       6
12-24 months   ki1114097-CMIN             BANGLADESH                                0              1        1       6
12-24 months   ki1114097-CMIN             BANGLADESH                                1              0        0       6
12-24 months   ki1114097-CMIN             BANGLADESH                                1              1        0       6
12-24 months   ki1114097-CMIN             BRAZIL                                    0              0       94     111
12-24 months   ki1114097-CMIN             BRAZIL                                    0              1        9     111
12-24 months   ki1114097-CMIN             BRAZIL                                    1              0        8     111
12-24 months   ki1114097-CMIN             BRAZIL                                    1              1        0     111
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                             0              0        2       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                             0              1        1       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                             1              0        0       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                             1              1        0       3
12-24 months   ki1114097-CMIN             PERU                                      0              0       24      29
12-24 months   ki1114097-CMIN             PERU                                      0              1        3      29
12-24 months   ki1114097-CMIN             PERU                                      1              0        2      29
12-24 months   ki1114097-CMIN             PERU                                      1              1        0      29
12-24 months   ki1114097-CONTENT          PERU                                      0              0        2       2
12-24 months   ki1114097-CONTENT          PERU                                      0              1        0       2
12-24 months   ki1114097-CONTENT          PERU                                      1              0        0       2
12-24 months   ki1114097-CONTENT          PERU                                      1              1        0       2
12-24 months   ki1119695-PROBIT           BELARUS                                   0              0    10213   13337
12-24 months   ki1119695-PROBIT           BELARUS                                   0              1      361   13337
12-24 months   ki1119695-PROBIT           BELARUS                                   1              0     2637   13337
12-24 months   ki1119695-PROBIT           BELARUS                                   1              1      126   13337
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                  0              0     4833    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                  0              1      781    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                  1              0      972    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                  1              1      127    6713
12-24 months   ki1135781-COHORTS          GUATEMALA                                 0              0      330     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                 0              1       84     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                 1              0      119     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                 1              1       34     567
12-24 months   ki1135781-COHORTS          PHILIPPINES                               0              0     1440    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                               0              1      717    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                               1              0      272    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                               1              1      112    2541
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                0              0    14788   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                0              1     2938   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                1              0     1744   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                1              1      268   19738
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                0              0     3054    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                0              1      802    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                1              0      340    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                1              1       64    4260


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
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/10c9dfe4-40e0-4b39-b216-0d74bea8f900/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/10c9dfe4-40e0-4b39-b216-0d74bea8f900/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/10c9dfe4-40e0-4b39-b216-0d74bea8f900/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/10c9dfe4-40e0-4b39-b216-0d74bea8f900/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                0.1952191   0.1461119   0.2443263
0-3 months     ki1000108-IRC             INDIA         1                    NA                0.2717391   0.1807043   0.3627740
0-3 months     ki1000109-EE              PAKISTAN      0                    NA                0.4102564   0.3207939   0.4997189
0-3 months     ki1000109-EE              PAKISTAN      1                    NA                0.3529412   0.1249210   0.5809613
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.0454545   0.0319132   0.0589959
0-3 months     ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0686275   0.0388705   0.0983844
0-3 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.0749186   0.0454364   0.1044007
0-3 months     ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.0833333   0.0361301   0.1305365
0-3 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.0510204   0.0201527   0.0818882
0-3 months     ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1000000   0.0166762   0.1833238
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.0289389   0.0102854   0.0475924
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.0495050   0.0071490   0.0918609
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                0.1669075   0.1472550   0.1865600
0-3 months     ki1101329-Keneba          GAMBIA        1                    NA                0.5555556   0.3680593   0.7430518
0-3 months     ki1119695-PROBIT          BELARUS       0                    NA                0.0729633   0.0627173   0.0832094
0-3 months     ki1119695-PROBIT          BELARUS       1                    NA                0.0442882   0.0342680   0.0543085
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0871408   0.0818351   0.0924464
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.2059252   0.1884581   0.2233924
0-3 months     ki1135781-COHORTS         GUATEMALA     0                    NA                0.1968085   0.1639742   0.2296428
0-3 months     ki1135781-COHORTS         GUATEMALA     1                    NA                0.1406250   0.0914202   0.1898298
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                0.0678831   0.0609768   0.0747893
0-3 months     ki1135781-COHORTS         INDIA         1                    NA                0.1003650   0.0825739   0.1181560
0-3 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                0.0812908   0.0704634   0.0921183
0-3 months     ki1135781-COHORTS         PHILIPPINES   1                    NA                0.1108647   0.0818836   0.1398459
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0740788   0.0698280   0.0783296
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1370450   0.1203980   0.1536919
3-6 months     ki1000108-IRC             INDIA         0                    NA                0.1084337   0.0697571   0.1471104
3-6 months     ki1000108-IRC             INDIA         1                    NA                0.1444444   0.0717095   0.2171793
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                0.1785714   0.1073649   0.2497780
3-6 months     ki1000109-EE              PAKISTAN      1                    NA                0.4705882   0.2323942   0.7087822
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1462396   0.1173092   0.1751699
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.2142857   0.1323334   0.2962380
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.1423358   0.1009121   0.1837595
3-6 months     ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1578947   0.0908719   0.2249176
3-6 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.0625000   0.0266564   0.0983436
3-6 months     ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1162791   0.0202471   0.2123111
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1554054   0.1140808   0.1967300
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.2000000   0.1215023   0.2784977
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                0.0314275   0.0235184   0.0393366
3-6 months     ki1119695-PROBIT          BELARUS       1                    NA                0.0247453   0.0178583   0.0316322
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0717019   0.0656822   0.0777215
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1141046   0.0965623   0.1316469
3-6 months     ki1135781-COHORTS         GUATEMALA     0                    NA                0.2203390   0.1591545   0.2815234
3-6 months     ki1135781-COHORTS         GUATEMALA     1                    NA                0.1714286   0.0829605   0.2598966
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                0.1136263   0.1005195   0.1267331
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0987952   0.0700818   0.1275086
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0507844   0.0463962   0.0551725
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0553532   0.0422323   0.0684742
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.0854028   0.0693771   0.1014285
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.1216931   0.0686395   0.1747467
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                0.1182796   0.0717651   0.1647940
6-12 months    ki0047075b-MAL-ED         BANGLADESH    1                    NA                0.1351351   0.0247320   0.2455383
6-12 months    ki1000108-IRC             INDIA         0                    NA                0.0960000   0.0594293   0.1325707
6-12 months    ki1000108-IRC             INDIA         1                    NA                0.1195652   0.0531693   0.1859611
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.2266501   0.1911874   0.2621127
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1956522   0.1286192   0.2626852
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.2045455   0.1558227   0.2532682
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.2110092   0.1343076   0.2877108
6-12 months    ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.1118012   0.0630032   0.1605992
6-12 months    ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1282051   0.0230176   0.2333926
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1491525   0.1084489   0.1898562
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.0618557   0.0138556   0.1098557
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                0.0367715   0.0290571   0.0444858
6-12 months    ki1119695-PROBIT          BELARUS       1                    NA                0.0416961   0.0304249   0.0529673
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.1211007   0.1138998   0.1283016
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1080313   0.0918104   0.1242521
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                0.3319588   0.2900164   0.3739012
6-12 months    ki1135781-COHORTS         GUATEMALA     1                    NA                0.3786982   0.3055111   0.4518854
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                0.2284093   0.2164810   0.2403376
6-12 months    ki1135781-COHORTS         INDIA         1                    NA                0.2154750   0.1902533   0.2406967
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                0.2106918   0.1937478   0.2276358
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                0.2060302   0.1662875   0.2457728
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0798805   0.0741112   0.0856498
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0519824   0.0379888   0.0659760
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.1639344   0.1447143   0.1831546
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.1932367   0.1344343   0.2520391
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                0.2247191   0.1632581   0.2861802
12-24 months   ki0047075b-MAL-ED         BANGLADESH    1                    NA                0.1621622   0.0431163   0.2812080
12-24 months   ki0047075b-MAL-ED         NEPAL         0                    NA                0.1527778   0.0938348   0.2117207
12-24 months   ki0047075b-MAL-ED         NEPAL         1                    NA                0.3157895   0.1061364   0.5254426
12-24 months   ki1000108-IRC             INDIA         0                    NA                0.1713147   0.1246340   0.2179954
12-24 months   ki1000108-IRC             INDIA         1                    NA                0.1304348   0.0615163   0.1993533
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1951220   0.1615863   0.2286576
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1720430   0.0847756   0.2593104
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.2845188   0.2272330   0.3418047
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1919192   0.1142300   0.2696084
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.1509434   0.0951568   0.2067300
12-24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1578947   0.0416620   0.2741275
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1453287   0.1046433   0.1860142
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.1562500   0.0835233   0.2289767
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                0.0341403   0.0261903   0.0420904
12-24 months   ki1119695-PROBIT          BELARUS       1                    NA                0.0456026   0.0290736   0.0621316
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.1391165   0.1300632   0.1481698
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1155596   0.0966571   0.1344621
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                0.2028986   0.1641257   0.2416714
12-24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                0.2222222   0.1562886   0.2881559
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                0.3324061   0.3125223   0.3522899
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                0.2916667   0.2461961   0.3371372
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.1657452   0.1575401   0.1739504
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1332008   0.1105823   0.1558193
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.2079876   0.1874571   0.2285180
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.1584158   0.1023098   0.2145218


### Parameter: E(Y)


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC             INDIA         NA                   NA                0.2157434   0.1721488   0.2593381
0-3 months     ki1000109-EE              PAKISTAN      NA                   NA                0.4029851   0.3196248   0.4863454
0-3 months     ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0478615   0.0366224   0.0591006
0-3 months     ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0774487   0.0524157   0.1024818
0-3 months     ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.0609756   0.0310129   0.0909384
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0339806   0.0164646   0.0514966
0-3 months     ki1101329-Keneba          GAMBIA        NA                   NA                0.1743444   0.1545409   0.1941479
0-3 months     ki1119695-PROBIT          BELARUS       NA                   NA                0.0670440   0.0582181   0.0758698
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1060782   0.1007672   0.1113893
0-3 months     ki1135781-COHORTS         GUATEMALA     NA                   NA                0.1825397   0.1549856   0.2100938
0-3 months     ki1135781-COHORTS         INDIA         NA                   NA                0.0736315   0.0671264   0.0801367
0-3 months     ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0858917   0.0756900   0.0960934
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0807485   0.0765206   0.0849764
3-6 months     ki1000108-IRC             INDIA         NA                   NA                0.1179941   0.0836022   0.1523860
3-6 months     ki1000109-EE              PAKISTAN      NA                   NA                0.2170543   0.1456387   0.2884699
3-6 months     ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1533666   0.1270023   0.1797309
3-6 months     ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.1469072   0.1116367   0.1821778
3-6 months     ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.0730594   0.0385145   0.1076042
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.1666667   0.1299145   0.2034189
3-6 months     ki1119695-PROBIT          BELARUS       NA                   NA                0.0300481   0.0231480   0.0369482
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0781344   0.0723668   0.0839020
3-6 months     ki1135781-COHORTS         GUATEMALA     NA                   NA                0.2064777   0.1558957   0.2570598
3-6 months     ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1113193   0.0993824   0.1232563
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0512800   0.0470124   0.0555477
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0891304   0.0736243   0.1046365
6-12 months    ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.1210762   0.0781644   0.1639880
6-12 months    ki1000108-IRC             INDIA         NA                   NA                0.1023392   0.0701694   0.1345090
6-12 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2234637   0.1907158   0.2562116
6-12 months    ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2064343   0.1653043   0.2475643
6-12 months    ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.1150000   0.0706757   0.1593243
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.1275510   0.0944858   0.1606163
6-12 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.0377882   0.0302168   0.0453595
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1191219   0.1125355   0.1257083
6-12 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.3440367   0.3076004   0.3804729
6-12 months    ki1135781-COHORTS         INDIA         NA                   NA                0.2261246   0.2153393   0.2369098
6-12 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2099848   0.1943978   0.2255717
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0770470   0.0716324   0.0824616
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1667439   0.1481671   0.1853207
12-24 months   ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.2139535   0.1590089   0.2688981
12-24 months   ki0047075b-MAL-ED         NEPAL         NA                   NA                0.1717791   0.1136962   0.2298621
12-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1603499   0.1214616   0.1992381
12-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1926606   0.1608065   0.2245146
12-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2573964   0.2107184   0.3040745
12-24 months   ki1017093b-PROVIDE        BANGLADESH    NA                   NA                0.1522843   0.1019837   0.2025848
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.1480519   0.1125301   0.1835738
12-24 months   ki1119695-PROBIT          BELARUS       NA                   NA                0.0365150   0.0272579   0.0457720
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1352599   0.1270781   0.1434418
12-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.2081129   0.1746687   0.2415571
12-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.3262495   0.3080166   0.3444824
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1624278   0.1545118   0.1703438
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.2032864   0.1839142   0.2226586


### Parameter: RR


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1000108-IRC             INDIA         1                    0                 1.3919698   0.9155628   2.1162721
0-3 months     ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1000109-EE              PAKISTAN      1                    0                 0.8602941   0.4350268   1.7012881
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.5098039   0.8115715   2.8087578
0-3 months     ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.1123188   0.5580693   2.2170242
0-3 months     ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH    1                    0                 1.9600000   0.6999309   5.4885417
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 1.7106711   0.5860573   4.9933605
0-3 months     ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1101329-Keneba          GAMBIA        1                    0                 3.3285233   2.3281771   4.7586877
0-3 months     ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1119695-PROBIT          BELARUS       1                    0                 0.6069929   0.4737587   0.7776963
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 2.3631332   2.1288360   2.6232169
0-3 months     ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1135781-COHORTS         GUATEMALA     1                    0                 0.7145270   0.4849189   1.0528541
0-3 months     ki1135781-COHORTS         INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1135781-COHORTS         INDIA         1                    0                 1.4784977   1.2051961   1.8137759
0-3 months     ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1135781-COHORTS         PHILIPPINES   1                    0                 1.3638035   1.0170341   1.8288078
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.8499897   1.6183539   2.1147797
3-6 months     ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000108-IRC             INDIA         1                    0                 1.3320988   0.7186917   2.4690520
3-6 months     ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000109-EE              PAKISTAN      1                    0                 2.6352941   1.3835175   5.0196510
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.4653061   0.9485860   2.2634975
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.1093117   0.6630371   1.8559632
3-6 months     ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH    1                    0                 1.8604651   0.6806936   5.0850049
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 1.2869565   0.8010705   2.0675548
3-6 months     ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1119695-PROBIT          BELARUS       1                    0                 0.7873766   0.5930109   1.0454478
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.5913758   1.3356665   1.8960398
3-6 months     ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1135781-COHORTS         GUATEMALA     1                    0                 0.7780220   0.4329949   1.3979800
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    0                 0.8694748   0.6360006   1.1886567
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.0899662   0.8524514   1.3936587
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.4249315   0.8901616   2.2809677
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH    1                    0                 1.1425061   0.4614042   2.8290167
6-12 months    ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1000108-IRC             INDIA         1                    0                 1.2454710   0.6351446   2.4422751
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    0                 0.8632346   0.5871717   1.2690904
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.0316004   0.6679906   1.5931353
6-12 months    ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH    1                    0                 1.1467236   0.4527446   2.9044526
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 0.4147142   0.1821812   0.9440482
6-12 months    ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1119695-PROBIT          BELARUS       1                    0                 1.1339258   0.8739546   1.4712295
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 0.8920781   0.7590432   1.0484297
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         GUATEMALA     1                    0                 1.1407990   0.9055908   1.4370976
6-12 months    ki1135781-COHORTS         INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         INDIA         1                    0                 0.9433723   0.8298855   1.0723783
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    0                 0.9778744   0.7934506   1.2051644
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    0                 0.6507520   0.4932929   0.8584719
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.1787440   0.8560005   1.6231734
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH    1                    0                 0.7216216   0.3296699   1.5795732
12-24 months   ki0047075b-MAL-ED         NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL         1                    0                 2.0669856   0.9590889   4.4546753
12-24 months   ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1000108-IRC             INDIA         1                    0                 0.7613751   0.4201566   1.3797047
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    0                 0.8817204   0.5245552   1.4820766
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    0                 0.6745395   0.4291990   1.0601227
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH    1                    0                 1.0460526   0.4590090   2.3838884
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 1.0751488   0.6245663   1.8507963
12-24 months   ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1119695-PROBIT          BELARUS       1                    0                 1.3357395   1.0418061   1.7126027
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 0.8306679   0.6965827   0.9905630
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1135781-COHORTS         GUATEMALA     1                    0                 1.0952381   0.7695548   1.5587539
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    0                 0.8774407   0.7425041   1.0368997
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    0                 0.8036478   0.6760727   0.9552964
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    0                 0.7616602   0.5274439   1.0998825


### Parameter: PAR


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                 0.0205243   -0.0074509    0.0484996
0-3 months     ki1000109-EE              PAKISTAN      0                    NA                -0.0072713   -0.0385148    0.0239721
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0024070   -0.0018247    0.0066386
0-3 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0025302   -0.0142079    0.0192682
0-3 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0099552   -0.0082731    0.0281835
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0050417   -0.0063362    0.0164196
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0074369    0.0028831    0.0119908
0-3 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0059194   -0.0097666   -0.0020722
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0189375    0.0159320    0.0219429
0-3 months     ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0142688   -0.0293930    0.0008554
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                 0.0057485    0.0023569    0.0091400
0-3 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0046008   -0.0002280    0.0094296
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0066697    0.0048335    0.0085060
3-6 months     ki1000108-IRC             INDIA         0                    NA                 0.0095604   -0.0123757    0.0314964
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                 0.0384828    0.0015208    0.0754449
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0071270   -0.0037018    0.0179558
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0045715   -0.0185892    0.0277321
3-6 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0105594   -0.0097656    0.0308844
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0112613   -0.0112218    0.0337443
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0013794   -0.0030779    0.0003191
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0064325    0.0036001    0.0092650
3-6 months     ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0138613   -0.0444693    0.0167468
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0023069   -0.0072208    0.0026069
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0004957   -0.0009697    0.0019610
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0037276   -0.0019132    0.0093685
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0027967   -0.0170979    0.0226912
6-12 months    ki1000108-IRC             INDIA         0                    NA                 0.0063392   -0.0140819    0.0267603
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0031864   -0.0111781    0.0048053
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0018889   -0.0246668    0.0284445
6-12 months    ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0031988   -0.0194306    0.0258281
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                -0.0216015   -0.0376161   -0.0055870
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                 0.0010167   -0.0012561    0.0032895
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0019788   -0.0046675    0.0007100
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0120779   -0.0097763    0.0339321
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                -0.0022848   -0.0072148    0.0026453
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0007071   -0.0072604    0.0058463
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0028335   -0.0043658   -0.0013012
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0028094   -0.0030110    0.0086298
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                -0.0107656   -0.0340379    0.0125066
12-24 months   ki0047075b-MAL-ED         NEPAL         0                    NA                 0.0190014   -0.0076316    0.0456343
12-24 months   ki1000108-IRC             INDIA         0                    NA                -0.0109649   -0.0333739    0.0114442
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0024614   -0.0119760    0.0070532
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                -0.0271224   -0.0557506    0.0015058
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0013409   -0.0235313    0.0262130
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0027232   -0.0180614    0.0235079
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                 0.0023746   -0.0003109    0.0050601
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0038566   -0.0072941   -0.0004190
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0052143   -0.0154377    0.0258663
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0061566   -0.0136779    0.0013647
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0033174   -0.0057206   -0.0009143
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                -0.0047012   -0.0105060    0.0011037


### Parameter: PAF


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                 0.0951330   -0.0434595    0.2153176
0-3 months     ki1000109-EE              PAKISTAN      0                    NA                -0.0180437   -0.0986385    0.0566388
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0502901   -0.0484019    0.1396918
0-3 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0326691   -0.2092236    0.2261737
0-3 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.1632653   -0.1821910    0.4077734
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.1483693   -0.2495763    0.4195834
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0426565    0.0164535    0.0681614
0-3 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0882908   -0.1462307   -0.0332796
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.1785235    0.1508954    0.2052526
0-3 months     ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0781684   -0.1638178    0.0011778
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                 0.0780705    0.0313048    0.1225785
0-3 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0535656   -0.0040425    0.1078683
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0825989    0.0600646    0.1045930
3-6 months     ki1000108-IRC             INDIA         0                    NA                 0.0810241   -0.1236352    0.2484067
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                 0.1772959   -0.0051283    0.3266113
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0464705   -0.0276700    0.1152623
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0311179   -0.1399497    0.1765142
3-6 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.1445312   -0.1740883    0.3766850
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0675676   -0.0769798    0.1927144
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0459069   -0.0991123    0.0047230
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0823265    0.0458002    0.1174546
3-6 months     ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0671319   -0.2256944    0.0709180
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0207236   -0.0657903    0.0224375
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0096657   -0.0192646    0.0377749
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0418224   -0.0233626    0.1028553
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0230984   -0.1556664    0.1742108
6-12 months    ki1000108-IRC             INDIA         0                    NA                 0.0619428   -0.1594874    0.2410860
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0142590   -0.0502188    0.0204695
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0091499   -0.1282067    0.1297837
6-12 months    ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0278153   -0.1900230    0.2057775
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                -0.1693559   -0.2961691   -0.0549498
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                 0.0269049   -0.0348990    0.0850180
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0166113   -0.0394210    0.0056979
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0351065   -0.0305554    0.0965848
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                -0.0101040   -0.0321410    0.0114625
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0033672   -0.0350658    0.0273606
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0367762   -0.0567705   -0.0171603
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0168488   -0.0186508    0.0511113
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                -0.0503175   -0.1645569    0.0527153
12-24 months   ki0047075b-MAL-ED         NEPAL         0                    NA                 0.1106151   -0.0553458    0.2504774
12-24 months   ki1000108-IRC             INDIA         0                    NA                -0.0683810   -0.2170190    0.0621034
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0127758   -0.0633612    0.0354031
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                -0.1053720   -0.2219573    0.0000900
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0088050   -0.1687293    0.1593713
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0183937   -0.1324763    0.1491647
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                 0.0650313   -0.0023388    0.1278732
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0285121   -0.0542022   -0.0034481
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0250553   -0.0793614    0.1193707
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0188709   -0.0421872    0.0039238
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0204240   -0.0353905   -0.0056739
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                -0.0231258   -0.0520442    0.0049976
