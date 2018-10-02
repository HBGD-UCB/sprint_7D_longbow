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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* month
* brthmon
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan

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
![](/tmp/1cf766de-6aef-40fd-aa22-90d70a24b9f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1cf766de-6aef-40fd-aa22-90d70a24b9f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1cf766de-6aef-40fd-aa22-90d70a24b9f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1cf766de-6aef-40fd-aa22-90d70a24b9f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                0.1977675   0.1487749   0.2467600
0-3 months     ki1000108-IRC             INDIA         1                    NA                0.2959621   0.2071064   0.3848177
0-3 months     ki1000109-EE              PAKISTAN      0                    NA                0.4061105   0.3174185   0.4948026
0-3 months     ki1000109-EE              PAKISTAN      1                    NA                0.3436084   0.1540345   0.5331823
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.0454545   0.0319132   0.0589959
0-3 months     ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0686275   0.0388705   0.0983844
0-3 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.0730005   0.0440927   0.1019083
0-3 months     ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.0768552   0.0327069   0.1210036
0-3 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.0510204   0.0201527   0.0818882
0-3 months     ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1000000   0.0166762   0.1833238
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.0289389   0.0102854   0.0475924
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.0495050   0.0071490   0.0918609
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                0.1669708   0.1473163   0.1866253
0-3 months     ki1101329-Keneba          GAMBIA        1                    NA                0.5915777   0.4102115   0.7729439
0-3 months     ki1119695-PROBIT          BELARUS       0                    NA                0.0732376   0.0629108   0.0835645
0-3 months     ki1119695-PROBIT          BELARUS       1                    NA                0.0432260   0.0337732   0.0526789
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0869997   0.0817129   0.0922865
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.2145513   0.1978059   0.2312968
0-3 months     ki1135781-COHORTS         GUATEMALA     0                    NA                0.1981017   0.1653627   0.2308406
0-3 months     ki1135781-COHORTS         GUATEMALA     1                    NA                0.1464951   0.0988446   0.1941457
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                0.0680592   0.0611680   0.0749504
0-3 months     ki1135781-COHORTS         INDIA         1                    NA                0.0957262   0.0794572   0.1119952
0-3 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                0.0812716   0.0704671   0.0920761
0-3 months     ki1135781-COHORTS         PHILIPPINES   1                    NA                0.1214993   0.0939819   0.1490167
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0741989   0.0699461   0.0784516
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1325340   0.1169649   0.1481031
3-6 months     ki1000108-IRC             INDIA         0                    NA                0.1128384   0.0735532   0.1521237
3-6 months     ki1000108-IRC             INDIA         1                    NA                0.1320011   0.0689136   0.1950887
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                0.1805566   0.1096049   0.2515083
3-6 months     ki1000109-EE              PAKISTAN      1                    NA                0.6184769   0.4224229   0.8145310
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1462396   0.1173093   0.1751700
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.2142850   0.1323342   0.2962358
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.1421611   0.1009011   0.1834212
3-6 months     ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1528159   0.0885681   0.2170636
3-6 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.0625000   0.0266564   0.0983436
3-6 months     ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1162791   0.0202471   0.2123111
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1554057   0.1140813   0.1967301
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.1999988   0.1215002   0.2784974
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                0.0314949   0.0236293   0.0393605
3-6 months     ki1119695-PROBIT          BELARUS       1                    NA                0.0245128   0.0178100   0.0312156
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0717071   0.0657003   0.0777140
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1169990   0.1001776   0.1338204
3-6 months     ki1135781-COHORTS         GUATEMALA     0                    NA                0.2212467   0.1604448   0.2820487
3-6 months     ki1135781-COHORTS         GUATEMALA     1                    NA                0.1603920   0.0812884   0.2394957
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                0.1137344   0.1006554   0.1268134
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    NA                0.1025106   0.0752145   0.1298067
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0506869   0.0463057   0.0550681
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0534972   0.0410667   0.0659277
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.0854094   0.0693560   0.1014628
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.1018266   0.0538519   0.1498013
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                0.1182796   0.0717651   0.1647940
6-12 months    ki0047075b-MAL-ED         BANGLADESH    1                    NA                0.1351351   0.0247320   0.2455383
6-12 months    ki1000108-IRC             INDIA         0                    NA                0.0973807   0.0608182   0.1339431
6-12 months    ki1000108-IRC             INDIA         1                    NA                0.1359414   0.0695681   0.2023146
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.2266684   0.1912079   0.2621289
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1955097   0.1286303   0.2623891
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.1978500   0.1496240   0.2460760
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1699759   0.1004301   0.2395217
6-12 months    ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.1118012   0.0630032   0.1605992
6-12 months    ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1282051   0.0230176   0.2333926
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1491525   0.1084489   0.1898562
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.0618557   0.0138556   0.1098557
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                0.0368743   0.0291762   0.0445725
6-12 months    ki1119695-PROBIT          BELARUS       1                    NA                0.0412540   0.0307963   0.0517116
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.1211450   0.1139575   0.1283326
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1114400   0.0957358   0.1271442
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                0.3290381   0.2876206   0.3704557
6-12 months    ki1135781-COHORTS         GUATEMALA     1                    NA                0.3484516   0.2815528   0.4153504
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                0.2296891   0.2178121   0.2415661
6-12 months    ki1135781-COHORTS         INDIA         1                    NA                0.2303680   0.2068281   0.2539080
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                0.2094453   0.1925831   0.2263074
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                0.2090249   0.1723183   0.2457315
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0798501   0.0741016   0.0855987
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0568235   0.0432709   0.0703760
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.1641526   0.1449453   0.1833599
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.2119373   0.1536005   0.2702740
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                0.2247191   0.1632581   0.2861802
12-24 months   ki0047075b-MAL-ED         BANGLADESH    1                    NA                0.1621622   0.0431163   0.2812080
12-24 months   ki0047075b-MAL-ED         NEPAL         0                    NA                0.1527778   0.0938348   0.2117207
12-24 months   ki0047075b-MAL-ED         NEPAL         1                    NA                0.3157895   0.1061364   0.5254426
12-24 months   ki1000108-IRC             INDIA         0                    NA                0.1713183   0.1249711   0.2176656
12-24 months   ki1000108-IRC             INDIA         1                    NA                0.1375679   0.0703646   0.2047712
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1951220   0.1615863   0.2286576
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1720430   0.0847756   0.2593104
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.2901315   0.2331165   0.3471465
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1949957   0.1242665   0.2657248
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                0.1509434   0.0951568   0.2067300
12-24 months   ki1017093b-PROVIDE        BANGLADESH    1                    NA                0.1578947   0.0416620   0.2741275
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.1449167   0.1042854   0.1855479
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.1568329   0.0846088   0.2290570
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                0.0342054   0.0262485   0.0421624
12-24 months   ki1119695-PROBIT          BELARUS       1                    NA                0.0452854   0.0286685   0.0619022
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.1386313   0.1296179   0.1476447
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.1132293   0.0953977   0.1310609
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                0.2004667   0.1618566   0.2390768
12-24 months   ki1135781-COHORTS         GUATEMALA     1                    NA                0.2094777   0.1453897   0.2735658
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                0.3313707   0.3115538   0.3511876
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                0.2848318   0.2426050   0.3270585
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.1656588   0.1574551   0.1738625
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1379282   0.1163243   0.1595322
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.2081320   0.1876051   0.2286590
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.1725187   0.1170702   0.2279672


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
0-3 months     ki1000108-IRC             INDIA         1                    0                 1.4965157   1.0154927   2.2053917
0-3 months     ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1000109-EE              PAKISTAN      1                    0                 0.8460959   0.4670136   1.5328850
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.5098039   0.8115715   2.8087578
0-3 months     ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.0528040   0.5238101   2.1160271
0-3 months     ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH    1                    0                 1.9600000   0.6999309   5.4885417
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 1.7106711   0.5860573   4.9933605
0-3 months     ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1101329-Keneba          GAMBIA        1                    0                 3.5430009   2.5509841   4.9207892
0-3 months     ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1119695-PROBIT          BELARUS       1                    0                 0.5902164   0.4617233   0.7544678
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 2.4661157   2.2341124   2.7222116
0-3 months     ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1135781-COHORTS         GUATEMALA     1                    0                 0.7394947   0.5134084   1.0651412
0-3 months     ki1135781-COHORTS         INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1135781-COHORTS         INDIA         1                    0                 1.4065144   1.1548347   1.7130441
0-3 months     ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     ki1135781-COHORTS         PHILIPPINES   1                    0                 1.4949790   1.1501038   1.9432699
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.7862003   1.5684172   2.0342236
3-6 months     ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000108-IRC             INDIA         1                    0                 1.1698244   0.6494124   2.1072727
3-6 months     ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000109-EE              PAKISTAN      1                    0                 3.4253904   2.0662929   5.6784299
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.4653007   0.9485877   2.2634768
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.0749483   0.6449512   1.7916299
3-6 months     ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH    1                    0                 1.8604651   0.6806936   5.0850049
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 1.2869460   0.8010610   2.0675457
3-6 months     ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1119695-PROBIT          BELARUS       1                    0                 0.7783103   0.5951739   1.0177981
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.6316231   1.3818166   1.9265901
3-6 months     ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1135781-COHORTS         GUATEMALA     1                    0                 0.7249465   0.4122571   1.2748047
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    0                 0.9013158   0.6744666   1.2044631
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.0554442   0.8290758   1.3436195
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.1922179   0.7216803   1.9695474
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH    1                    0                 1.1425061   0.4614042   2.8290167
6-12 months    ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1000108-IRC             INDIA         1                    0                 1.3959794   0.7533258   2.5868733
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    0                 0.8625360   0.5869982   1.2674116
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    0                 0.8591149   0.5330674   1.3845872
6-12 months    ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH    1                    0                 1.1467236   0.4527446   2.9044526
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 0.4147142   0.1821812   0.9440482
6-12 months    ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1119695-PROBIT          BELARUS       1                    0                 1.1187714   0.8868853   1.4112867
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 0.9198895   0.7895854   1.0716974
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         GUATEMALA     1                    0                 1.0590006   0.8424824   1.3311641
6-12 months    ki1135781-COHORTS         INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         INDIA         1                    0                 1.0029560   0.8950114   1.1239194
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    0                 0.9979929   0.8229542   1.2102615
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    0                 0.7116268   0.5554376   0.9117364
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.2910989   0.9631794   1.7306602
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH    1                    0                 0.7216216   0.3296699   1.5795732
12-24 months   ki0047075b-MAL-ED         NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL         1                    0                 2.0669856   0.9590889   4.4546753
12-24 months   ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1000108-IRC             INDIA         1                    0                 0.8029959   0.4605093   1.4001940
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    0                 0.8817204   0.5245552   1.4820766
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    0                 0.6720941   0.4458794   1.0130776
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH    1                    0                 1.0460526   0.4590090   2.3838884
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 1.0822282   0.6318244   1.8537077
12-24 months   ki1119695-PROBIT          BELARUS       0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1119695-PROBIT          BELARUS       1                    0                 1.3239224   1.0268152   1.7069972
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 0.8167658   0.6888810   0.9683913
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1135781-COHORTS         GUATEMALA     1                    0                 1.0449504   0.7281135   1.4996580
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    0                 0.8595563   0.7327239   1.0083431
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    0                 0.8326044   0.7091164   0.9775972
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    0                 0.8288907   0.5922407   1.1601022


### Parameter: PAR


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                 0.0179760   -0.0098116    0.0457636
0-3 months     ki1000109-EE              PAKISTAN      0                    NA                -0.0031254   -0.0340688    0.0278179
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0024070   -0.0018247    0.0066386
0-3 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0044482   -0.0121600    0.0210565
0-3 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0099552   -0.0082731    0.0281835
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0050417   -0.0063362    0.0164196
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0073736    0.0028251    0.0119221
0-3 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0061936   -0.0101360   -0.0022513
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0190785    0.0160794    0.0220776
0-3 months     ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0155620   -0.0306689   -0.0004551
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                 0.0055723    0.0022037    0.0089409
0-3 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0046201   -0.0001811    0.0094213
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0065497    0.0047201    0.0083792
3-6 months     ki1000108-IRC             INDIA         0                    NA                 0.0051557   -0.0170161    0.0273275
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                 0.0364976   -0.0000992    0.0730944
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0071270   -0.0037017    0.0179556
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0047461   -0.0184107    0.0279028
3-6 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0105594   -0.0097656    0.0308844
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0112609   -0.0112222    0.0337441
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0014468   -0.0030635    0.0001698
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0064273    0.0036052    0.0092493
3-6 months     ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0147690   -0.0454019    0.0158639
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0024151   -0.0073144    0.0024843
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0005931   -0.0008725    0.0020587
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0037210   -0.0019201    0.0093622
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0027967   -0.0170979    0.0226912
6-12 months    ki1000108-IRC             INDIA         0                    NA                 0.0049585   -0.0154780    0.0253951
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0032047   -0.0111817    0.0047723
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0085843   -0.0181627    0.0353313
6-12 months    ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0031988   -0.0194306    0.0258281
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                -0.0216015   -0.0376161   -0.0055870
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                 0.0009138   -0.0011112    0.0029388
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0020231   -0.0047000    0.0006538
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0149985   -0.0064791    0.0364762
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                -0.0035645   -0.0084269    0.0012979
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0005395   -0.0059742    0.0070532
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0028032   -0.0043249   -0.0012814
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0025912   -0.0032425    0.0084249
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                -0.0107656   -0.0340379    0.0125066
12-24 months   ki0047075b-MAL-ED         NEPAL         0                    NA                 0.0190014   -0.0076316    0.0456343
12-24 months   ki1000108-IRC             INDIA         0                    NA                -0.0109685   -0.0331848    0.0112479
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0024614   -0.0119760    0.0070532
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                -0.0327350   -0.0614199   -0.0040502
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0013409   -0.0235313    0.0262130
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0031353   -0.0175525    0.0238231
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                 0.0023095   -0.0003761    0.0049952
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0033713   -0.0067936    0.0000509
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0076462   -0.0129535    0.0282459
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0051212   -0.0125783    0.0023359
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0032310   -0.0056375   -0.0008244
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                -0.0048456   -0.0106782    0.0009870


### Parameter: PAF


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                 0.0833211   -0.0540517    0.2027904
0-3 months     ki1000109-EE              PAKISTAN      0                    NA                -0.0077557   -0.0875738    0.0662044
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0502901   -0.0484019    0.1396918
0-3 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0574344   -0.1824959    0.2486825
0-3 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.1632653   -0.1821910    0.4077734
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.1483693   -0.2495763    0.4195834
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0422934    0.0161206    0.0677701
0-3 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0923819   -0.1516786   -0.0361383
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.1798532    0.1523361    0.2064770
0-3 months     ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0852526   -0.1709209   -0.0058521
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                 0.0756785    0.0292568    0.1198803
0-3 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0537897   -0.0034607    0.1077739
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0811118    0.0586520    0.1030357
3-6 months     ki1000108-IRC             INDIA         0                    NA                 0.0436943   -0.1631357    0.2137456
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                 0.1681498   -0.0115583    0.3159320
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0464702   -0.0276693    0.1152610
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0323067   -0.1386756    0.1776145
3-6 months     ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.1445312   -0.1740883    0.3766850
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0675656   -0.0769823    0.1927129
3-6 months     ki1119695-PROBIT          BELARUS       0                    NA                -0.0481501   -0.0982606   -0.0003260
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0822591    0.0458917    0.1172403
3-6 months     ki1135781-COHORTS         GUATEMALA     0                    NA                -0.0715283   -0.2305388    0.0669348
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0216950   -0.0666380    0.0213543
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0115664   -0.0173550    0.0396657
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0417483   -0.0234788    0.1028185
6-12 months    ki0047075b-MAL-ED         BANGLADESH    0                    NA                 0.0230984   -0.1556664    0.1742108
6-12 months    ki1000108-IRC             INDIA         0                    NA                 0.0484519   -0.1728043    0.2279669
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0143412   -0.0502296    0.0203209
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0415837   -0.0971022    0.1627381
6-12 months    ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0278153   -0.1900230    0.2057775
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                -0.1693559   -0.2961691   -0.0549498
6-12 months    ki1119695-PROBIT          BELARUS       0                    NA                 0.0241823   -0.0307752    0.0762097
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0169836   -0.0396954    0.0052320
6-12 months    ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0435958   -0.0208659    0.1039871
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                -0.0157634   -0.0375010    0.0055187
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0025692   -0.0289376    0.0331112
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0363824   -0.0562681   -0.0168712
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0155403   -0.0200347    0.0498745
12-24 months   ki0047075b-MAL-ED         BANGLADESH    0                    NA                -0.0503175   -0.1645569    0.0527153
12-24 months   ki0047075b-MAL-ED         NEPAL         0                    NA                 0.1106151   -0.0553458    0.2504774
12-24 months   ki1000108-IRC             INDIA         0                    NA                -0.0684033   -0.2159131    0.0612113
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0127758   -0.0633612    0.0354031
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                -0.1271775   -0.2445814   -0.0208486
12-24 months   ki1017093b-PROVIDE        BANGLADESH    0                    NA                 0.0088050   -0.1687293    0.1593713
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0211770   -0.1289737    0.1513580
12-24 months   ki1119695-PROBIT          BELARUS       0                    NA                 0.0632484   -0.0043706    0.1263150
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                -0.0249249   -0.0505154    0.0000424
12-24 months   ki1135781-COHORTS         GUATEMALA     0                    NA                 0.0367406   -0.0674549    0.1307655
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                -0.0156972   -0.0388151    0.0069063
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0198917   -0.0348779   -0.0051225
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                -0.0238364   -0.0529017    0.0044265
