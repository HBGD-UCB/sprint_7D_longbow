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

**Intervention Variable:** born_stunted

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

agecat         studyid                    country                         born_stunted   ever_wasted   n_cell       n
-------------  -------------------------  -----------------------------  -------------  ------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                 0             0      205     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                 0             1        7     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                 1             0       30     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                                 1             1        2     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                                     0             0      163     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                     0             1        6     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                     1             0       14     183
0-3 months     ki0047075b-MAL-ED          BRAZIL                                     1             1        0     183
0-3 months     ki0047075b-MAL-ED          INDIA                                      0             0      154     204
0-3 months     ki0047075b-MAL-ED          INDIA                                      0             1       20     204
0-3 months     ki0047075b-MAL-ED          INDIA                                      1             0       29     204
0-3 months     ki0047075b-MAL-ED          INDIA                                      1             1        1     204
0-3 months     ki0047075b-MAL-ED          NEPAL                                      0             0      150     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                      0             1        4     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                      1             0       13     168
0-3 months     ki0047075b-MAL-ED          NEPAL                                      1             1        1     168
0-3 months     ki0047075b-MAL-ED          PERU                                       0             0      254     282
0-3 months     ki0047075b-MAL-ED          PERU                                       0             1        2     282
0-3 months     ki0047075b-MAL-ED          PERU                                       1             0       26     282
0-3 months     ki0047075b-MAL-ED          PERU                                       1             1        0     282
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                               0             0      226     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                               0             1        6     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                               1             0       26     258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                               1             1        0     258
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0             0      127     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0             1        1     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1             0       17     145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1             1        0     145
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                      0             0       44      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                      0             1       29      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                      1             0        8      84
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                                      1             1        3      84
0-3 months     ki1000108-IRC              INDIA                                      0             0      244     343
0-3 months     ki1000108-IRC              INDIA                                      0             1       74     343
0-3 months     ki1000108-IRC              INDIA                                      1             0       19     343
0-3 months     ki1000108-IRC              INDIA                                      1             1        6     343
0-3 months     ki1000109-EE               PAKISTAN                                   0             0      224     268
0-3 months     ki1000109-EE               PAKISTAN                                   0             1       16     268
0-3 months     ki1000109-EE               PAKISTAN                                   1             0       26     268
0-3 months     ki1000109-EE               PAKISTAN                                   1             1        2     268
0-3 months     ki1000109-ResPak           PAKISTAN                                   0             0       15      25
0-3 months     ki1000109-ResPak           PAKISTAN                                   0             1        3      25
0-3 months     ki1000109-ResPak           PAKISTAN                                   1             0        7      25
0-3 months     ki1000109-ResPak           PAKISTAN                                   1             1        0      25
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                      0             0      755     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                      0             1       46     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                      1             0      176     982
0-3 months     ki1000304b-SAS-CompFeed    INDIA                                      1             1        5     982
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                 0             0      371     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                 0             1       13     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                 1             0       52     439
0-3 months     ki1017093-NIH-Birth        BANGLADESH                                 1             1        3     439
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                 0             0      225     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                 0             1        3     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                 1             0       17     246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                                 1             1        1     246
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                 0             0      362     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                 0             1        0     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                 1             0       50     412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                                 1             1        0     412
0-3 months     ki1101329-Keneba           GAMBIA                                     0             0     1232    1411
0-3 months     ki1101329-Keneba           GAMBIA                                     0             1      116    1411
0-3 months     ki1101329-Keneba           GAMBIA                                     1             0       57    1411
0-3 months     ki1101329-Keneba           GAMBIA                                     1             1        6    1411
0-3 months     ki1114097-CMIN             BANGLADESH                                 0             0       12      14
0-3 months     ki1114097-CMIN             BANGLADESH                                 0             1        0      14
0-3 months     ki1114097-CMIN             BANGLADESH                                 1             0        2      14
0-3 months     ki1114097-CMIN             BANGLADESH                                 1             1        0      14
0-3 months     ki1114097-CMIN             BRAZIL                                     0             0      110     111
0-3 months     ki1114097-CMIN             BRAZIL                                     0             1        0     111
0-3 months     ki1114097-CMIN             BRAZIL                                     1             0        1     111
0-3 months     ki1114097-CMIN             BRAZIL                                     1             1        0     111
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                              0             0        3       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                              0             1        0       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                              1             0        1       4
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                              1             1        0       4
0-3 months     ki1114097-CMIN             PERU                                       0             0       36      39
0-3 months     ki1114097-CMIN             PERU                                       0             1        3      39
0-3 months     ki1114097-CMIN             PERU                                       1             0        0      39
0-3 months     ki1114097-CMIN             PERU                                       1             1        0      39
0-3 months     ki1114097-CONTENT          PERU                                       0             0        2       2
0-3 months     ki1114097-CONTENT          PERU                                       0             1        0       2
0-3 months     ki1114097-CONTENT          PERU                                       1             0        0       2
0-3 months     ki1114097-CONTENT          PERU                                       1             1        0       2
0-3 months     ki1119695-PROBIT           BELARUS                                    0             0    13086   13782
0-3 months     ki1119695-PROBIT           BELARUS                                    0             1      670   13782
0-3 months     ki1119695-PROBIT           BELARUS                                    1             0       25   13782
0-3 months     ki1119695-PROBIT           BELARUS                                    1             1        1   13782
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                   0             0    12015   12915
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                   0             1      210   12915
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                   1             0      678   12915
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                                   1             1       12   12915
0-3 months     ki1135781-COHORTS          GUATEMALA                                  0             0      722     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                  0             1       10     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                  1             0       23     756
0-3 months     ki1135781-COHORTS          GUATEMALA                                  1             1        1     756
0-3 months     ki1135781-COHORTS          INDIA                                      0             0     5320    6193
0-3 months     ki1135781-COHORTS          INDIA                                      0             1      493    6193
0-3 months     ki1135781-COHORTS          INDIA                                      1             0      340    6193
0-3 months     ki1135781-COHORTS          INDIA                                      1             1       40    6193
0-3 months     ki1135781-COHORTS          PHILIPPINES                                0             0     2687    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                                0             1      126    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                                1             0       85    2899
0-3 months     ki1135781-COHORTS          PHILIPPINES                                1             1        1    2899
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                 0             0    27936   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                 0             1     1652   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                 1             0     5432   35270
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                                 1             1      250   35270
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                 0             0     3534    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                 0             1        8    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                 1             0      790    4332
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                                 1             1        0    4332
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                 0             0      194     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                 0             1        7     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                 1             0       26     229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                                 1             1        2     229
3-6 months     ki0047075b-MAL-ED          BRAZIL                                     0             0      161     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                     0             1        1     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                     1             0       11     173
3-6 months     ki0047075b-MAL-ED          BRAZIL                                     1             1        0     173
3-6 months     ki0047075b-MAL-ED          INDIA                                      0             0      156     193
3-6 months     ki0047075b-MAL-ED          INDIA                                      0             1        8     193
3-6 months     ki0047075b-MAL-ED          INDIA                                      1             0       28     193
3-6 months     ki0047075b-MAL-ED          INDIA                                      1             1        1     193
3-6 months     ki0047075b-MAL-ED          NEPAL                                      0             0      149     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                      0             1        4     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                      1             0       13     167
3-6 months     ki0047075b-MAL-ED          NEPAL                                      1             1        1     167
3-6 months     ki0047075b-MAL-ED          PERU                                       0             0      237     263
3-6 months     ki0047075b-MAL-ED          PERU                                       0             1        1     263
3-6 months     ki0047075b-MAL-ED          PERU                                       1             0       23     263
3-6 months     ki0047075b-MAL-ED          PERU                                       1             1        2     263
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                               0             0      201     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                               0             1        3     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                               1             0       21     227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                               1             1        2     227
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0             0      120     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0             1        5     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1             0       16     141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1             1        0     141
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                      0             0       61      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                      0             1       11      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                      1             0       10      82
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                                      1             1        0      82
3-6 months     ki1000108-IRC              INDIA                                      0             0      281     339
3-6 months     ki1000108-IRC              INDIA                                      0             1       33     339
3-6 months     ki1000108-IRC              INDIA                                      1             0       24     339
3-6 months     ki1000108-IRC              INDIA                                      1             1        1     339
3-6 months     ki1000109-EE               PAKISTAN                                   0             0      208     258
3-6 months     ki1000109-EE               PAKISTAN                                   0             1       28     258
3-6 months     ki1000109-EE               PAKISTAN                                   1             0       16     258
3-6 months     ki1000109-EE               PAKISTAN                                   1             1        6     258
3-6 months     ki1000109-ResPak           PAKISTAN                                   0             0       13      21
3-6 months     ki1000109-ResPak           PAKISTAN                                   0             1        2      21
3-6 months     ki1000109-ResPak           PAKISTAN                                   1             0        5      21
3-6 months     ki1000109-ResPak           PAKISTAN                                   1             1        1      21
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                      0             0      591     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                      0             1       66     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                      1             0      128     802
3-6 months     ki1000304b-SAS-CompFeed    INDIA                                      1             1       17     802
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                 0             0      322     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                 0             1       16     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                 1             0       44     388
3-6 months     ki1017093-NIH-Birth        BANGLADESH                                 1             1        6     388
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                 0             0      197     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                 0             1        8     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                 1             0       13     219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                                 1             1        1     219
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                 0             0      338     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                 0             1       10     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                 1             0       47     396
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                                 1             1        1     396
3-6 months     ki1101329-Keneba           GAMBIA                                     0             0     1197    1343
3-6 months     ki1101329-Keneba           GAMBIA                                     0             1       90    1343
3-6 months     ki1101329-Keneba           GAMBIA                                     1             0       50    1343
3-6 months     ki1101329-Keneba           GAMBIA                                     1             1        6    1343
3-6 months     ki1114097-CMIN             BANGLADESH                                 0             0        4       6
3-6 months     ki1114097-CMIN             BANGLADESH                                 0             1        1       6
3-6 months     ki1114097-CMIN             BANGLADESH                                 1             0        1       6
3-6 months     ki1114097-CMIN             BANGLADESH                                 1             1        0       6
3-6 months     ki1114097-CMIN             BRAZIL                                     0             0       81      83
3-6 months     ki1114097-CMIN             BRAZIL                                     0             1        1      83
3-6 months     ki1114097-CMIN             BRAZIL                                     1             0        1      83
3-6 months     ki1114097-CMIN             BRAZIL                                     1             1        0      83
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                              0             0        3       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                              0             1        0       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                              1             0        1       4
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                              1             1        0       4
3-6 months     ki1114097-CMIN             PERU                                       0             0       36      36
3-6 months     ki1114097-CMIN             PERU                                       0             1        0      36
3-6 months     ki1114097-CMIN             PERU                                       1             0        0      36
3-6 months     ki1114097-CMIN             PERU                                       1             1        0      36
3-6 months     ki1114097-CONTENT          PERU                                       0             0        2       2
3-6 months     ki1114097-CONTENT          PERU                                       0             1        0       2
3-6 months     ki1114097-CONTENT          PERU                                       1             0        0       2
3-6 months     ki1114097-CONTENT          PERU                                       1             1        0       2
3-6 months     ki1119695-PROBIT           BELARUS                                    0             0    13036   13312
3-6 months     ki1119695-PROBIT           BELARUS                                    0             1      252   13312
3-6 months     ki1119695-PROBIT           BELARUS                                    1             0       22   13312
3-6 months     ki1119695-PROBIT           BELARUS                                    1             1        2   13312
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                   0             0     7728    8319
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                   0             1      171    8319
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                   1             0      410    8319
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                                   1             1       10    8319
3-6 months     ki1135781-COHORTS          GUATEMALA                                  0             0      232     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                  0             1        6     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                  1             0        9     247
3-6 months     ki1135781-COHORTS          GUATEMALA                                  1             1        0     247
3-6 months     ki1135781-COHORTS          PHILIPPINES                                0             0     2443    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                                0             1      145    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                                1             0       73    2668
3-6 months     ki1135781-COHORTS          PHILIPPINES                                1             1        7    2668
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                 0             0    20490   25312
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                 0             1      870   25312
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                 1             0     3776   25312
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                                 1             1      176   25312
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                 0             0     2884    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                 0             1      134    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                 1             0      636    3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                                 1             1       26    3680
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                 0             0      186     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                 0             1       11     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                 1             0       23     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                                 1             1        3     223
6-12 months    ki0047075b-MAL-ED          BRAZIL                                     0             0      151     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                     0             1        2     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                     1             0       11     164
6-12 months    ki0047075b-MAL-ED          BRAZIL                                     1             1        0     164
6-12 months    ki0047075b-MAL-ED          INDIA                                      0             0      135     189
6-12 months    ki0047075b-MAL-ED          INDIA                                      0             1       27     189
6-12 months    ki0047075b-MAL-ED          INDIA                                      1             0       24     189
6-12 months    ki0047075b-MAL-ED          INDIA                                      1             1        3     189
6-12 months    ki0047075b-MAL-ED          NEPAL                                      0             0      145     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                      0             1        6     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                      1             0       12     165
6-12 months    ki0047075b-MAL-ED          NEPAL                                      1             1        2     165
6-12 months    ki0047075b-MAL-ED          PERU                                       0             0      222     252
6-12 months    ki0047075b-MAL-ED          PERU                                       0             1        6     252
6-12 months    ki0047075b-MAL-ED          PERU                                       1             0       24     252
6-12 months    ki0047075b-MAL-ED          PERU                                       1             1        0     252
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                               0             0      181     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                               0             1       16     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                               1             0       19     218
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                               1             1        2     218
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0             0      115     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0             1        6     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1             0       14     137
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1             1        2     137
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                      0             0       63      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                      0             1       10      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                      1             0        7      84
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                                      1             1        4      84
6-12 months    ki1000108-IRC              INDIA                                      0             0      268     342
6-12 months    ki1000108-IRC              INDIA                                      0             1       49     342
6-12 months    ki1000108-IRC              INDIA                                      1             0       19     342
6-12 months    ki1000108-IRC              INDIA                                      1             1        6     342
6-12 months    ki1000109-EE               PAKISTAN                                   0             0      178     260
6-12 months    ki1000109-EE               PAKISTAN                                   0             1       54     260
6-12 months    ki1000109-EE               PAKISTAN                                   1             0       22     260
6-12 months    ki1000109-EE               PAKISTAN                                   1             1        6     260
6-12 months    ki1000109-ResPak           PAKISTAN                                   0             0       10      18
6-12 months    ki1000109-ResPak           PAKISTAN                                   0             1        2      18
6-12 months    ki1000109-ResPak           PAKISTAN                                   1             0        5      18
6-12 months    ki1000109-ResPak           PAKISTAN                                   1             1        1      18
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                      0             0      590     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                      0             1      142     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                      1             0      117     895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                                      1             1       46     895
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                 0             0      277     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                 0             1       47     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                 1             0       44     373
6-12 months    ki1017093-NIH-Birth        BANGLADESH                                 1             1        5     373
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                 0             0      175     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                 0             1       11     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                 1             0       14     200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                                 1             1        0     200
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                 0             0      323     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                 0             1       21     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                 1             0       40     392
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                                 1             1        8     392
6-12 months    ki1101329-Keneba           GAMBIA                                     0             0     1018    1328
6-12 months    ki1101329-Keneba           GAMBIA                                     0             1      257    1328
6-12 months    ki1101329-Keneba           GAMBIA                                     1             0       40    1328
6-12 months    ki1101329-Keneba           GAMBIA                                     1             1       13    1328
6-12 months    ki1114097-CMIN             BANGLADESH                                 0             0        3       6
6-12 months    ki1114097-CMIN             BANGLADESH                                 0             1        2       6
6-12 months    ki1114097-CMIN             BANGLADESH                                 1             0        1       6
6-12 months    ki1114097-CMIN             BANGLADESH                                 1             1        0       6
6-12 months    ki1114097-CMIN             BRAZIL                                     0             0      106     108
6-12 months    ki1114097-CMIN             BRAZIL                                     0             1        1     108
6-12 months    ki1114097-CMIN             BRAZIL                                     1             0        1     108
6-12 months    ki1114097-CMIN             BRAZIL                                     1             1        0     108
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                              0             0        3       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                              0             1        0       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                              1             0        1       4
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                              1             1        0       4
6-12 months    ki1114097-CMIN             PERU                                       0             0       30      35
6-12 months    ki1114097-CMIN             PERU                                       0             1        5      35
6-12 months    ki1114097-CMIN             PERU                                       1             0        0      35
6-12 months    ki1114097-CMIN             PERU                                       1             1        0      35
6-12 months    ki1114097-CONTENT          PERU                                       0             0        2       2
6-12 months    ki1114097-CONTENT          PERU                                       0             1        0       2
6-12 months    ki1114097-CONTENT          PERU                                       1             0        0       2
6-12 months    ki1114097-CONTENT          PERU                                       1             1        0       2
6-12 months    ki1119695-PROBIT           BELARUS                                    0             0    13608   13708
6-12 months    ki1119695-PROBIT           BELARUS                                    0             1       74   13708
6-12 months    ki1119695-PROBIT           BELARUS                                    1             0       26   13708
6-12 months    ki1119695-PROBIT           BELARUS                                    1             1        0   13708
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                   0             0     8393    9293
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                   0             1      420    9293
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                   1             0      444    9293
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                                   1             1       36    9293
6-12 months    ki1135781-COHORTS          GUATEMALA                                  0             0      601     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                  0             1       34     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                  1             0       18     654
6-12 months    ki1135781-COHORTS          GUATEMALA                                  1             1        1     654
6-12 months    ki1135781-COHORTS          INDIA                                      0             0     4828    5780
6-12 months    ki1135781-COHORTS          INDIA                                      0             1      600    5780
6-12 months    ki1135781-COHORTS          INDIA                                      1             0      284    5780
6-12 months    ki1135781-COHORTS          INDIA                                      1             1       68    5780
6-12 months    ki1135781-COHORTS          PHILIPPINES                                0             0     2236    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                                0             1      310    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                                1             0       61    2624
6-12 months    ki1135781-COHORTS          PHILIPPINES                                1             1       17    2624
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                 0             0    17860   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                 0             1      976   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                 1             0     3280   22350
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                                 1             1      234   22350
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                 0             0     3234    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                 0             1      296    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                 1             0      692    4318
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                                 1             1       96    4318
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                 0             0      161     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                 0             1       28     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                 1             0       22     215
12-24 months   ki0047075b-MAL-ED          BANGLADESH                                 1             1        4     215
12-24 months   ki0047075b-MAL-ED          BRAZIL                                     0             0      140     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                     0             1        3     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                     1             0        9     153
12-24 months   ki0047075b-MAL-ED          BRAZIL                                     1             1        1     153
12-24 months   ki0047075b-MAL-ED          INDIA                                      0             0      131     183
12-24 months   ki0047075b-MAL-ED          INDIA                                      0             1       27     183
12-24 months   ki0047075b-MAL-ED          INDIA                                      1             0       18     183
12-24 months   ki0047075b-MAL-ED          INDIA                                      1             1        7     183
12-24 months   ki0047075b-MAL-ED          NEPAL                                      0             0      130     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                      0             1       19     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                      1             0       10     163
12-24 months   ki0047075b-MAL-ED          NEPAL                                      1             1        4     163
12-24 months   ki0047075b-MAL-ED          PERU                                       0             0      199     228
12-24 months   ki0047075b-MAL-ED          PERU                                       0             1        7     228
12-24 months   ki0047075b-MAL-ED          PERU                                       1             0       17     228
12-24 months   ki0047075b-MAL-ED          PERU                                       1             1        5     228
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                               0             0      176     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                               0             1       16     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                               1             0       18     213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                               1             1        3     213
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0             0      106     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               0             1        9     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1             0       14     131
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF               1             1        2     131
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                      0             0       69      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                      0             1        4      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                      1             0       10      84
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                                      1             1        1      84
12-24 months   ki1000108-IRC              INDIA                                      0             0      257     343
12-24 months   ki1000108-IRC              INDIA                                      0             1       61     343
12-24 months   ki1000108-IRC              INDIA                                      1             0       19     343
12-24 months   ki1000108-IRC              INDIA                                      1             1        6     343
12-24 months   ki1000109-EE               PAKISTAN                                   0             0      178     254
12-24 months   ki1000109-EE               PAKISTAN                                   0             1       48     254
12-24 months   ki1000109-EE               PAKISTAN                                   1             0       16     254
12-24 months   ki1000109-EE               PAKISTAN                                   1             1       12     254
12-24 months   ki1000109-ResPak           PAKISTAN                                   0             0        9      14
12-24 months   ki1000109-ResPak           PAKISTAN                                   0             1        1      14
12-24 months   ki1000109-ResPak           PAKISTAN                                   1             0        4      14
12-24 months   ki1000109-ResPak           PAKISTAN                                   1             1        0      14
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                      0             0      623     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                      0             1       89     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                      1             0      139     872
12-24 months   ki1000304b-SAS-CompFeed    INDIA                                      1             1       21     872
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                 0             0      221     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                 0             1       70     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                 1             0       32     338
12-24 months   ki1017093-NIH-Birth        BANGLADESH                                 1             1       15     338
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                 0             0      160     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                 0             1       23     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                 1             0       11     197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                                 1             1        3     197
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                 0             0      306     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                 0             1       31     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                 1             0       44     385
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                                 1             1        4     385
12-24 months   ki1101329-Keneba           GAMBIA                                     0             0      960    1291
12-24 months   ki1101329-Keneba           GAMBIA                                     0             1      276    1291
12-24 months   ki1101329-Keneba           GAMBIA                                     1             0       39    1291
12-24 months   ki1101329-Keneba           GAMBIA                                     1             1       16    1291
12-24 months   ki1114097-CMIN             BANGLADESH                                 0             0        3       6
12-24 months   ki1114097-CMIN             BANGLADESH                                 0             1        2       6
12-24 months   ki1114097-CMIN             BANGLADESH                                 1             0        1       6
12-24 months   ki1114097-CMIN             BANGLADESH                                 1             1        0       6
12-24 months   ki1114097-CMIN             BRAZIL                                     0             0      107     111
12-24 months   ki1114097-CMIN             BRAZIL                                     0             1        3     111
12-24 months   ki1114097-CMIN             BRAZIL                                     1             0        1     111
12-24 months   ki1114097-CMIN             BRAZIL                                     1             1        0     111
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                              0             0        2       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                              0             1        0       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                              1             0        1       3
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                              1             1        0       3
12-24 months   ki1114097-CMIN             PERU                                       0             0       28      29
12-24 months   ki1114097-CMIN             PERU                                       0             1        1      29
12-24 months   ki1114097-CMIN             PERU                                       1             0        0      29
12-24 months   ki1114097-CMIN             PERU                                       1             1        0      29
12-24 months   ki1114097-CONTENT          PERU                                       0             0        2       2
12-24 months   ki1114097-CONTENT          PERU                                       0             1        0       2
12-24 months   ki1114097-CONTENT          PERU                                       1             0        0       2
12-24 months   ki1114097-CONTENT          PERU                                       1             1        0       2
12-24 months   ki1119695-PROBIT           BELARUS                                    0             0    13241   13337
12-24 months   ki1119695-PROBIT           BELARUS                                    0             1       70   13337
12-24 months   ki1119695-PROBIT           BELARUS                                    1             0       26   13337
12-24 months   ki1119695-PROBIT           BELARUS                                    1             1        0   13337
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                   0             0     5919    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                   0             1      429    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                   1             0      330    6713
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                                   1             1       35    6713
12-24 months   ki1135781-COHORTS          GUATEMALA                                  0             0      519     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                  0             1       31     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                  1             0       15     567
12-24 months   ki1135781-COHORTS          GUATEMALA                                  1             1        2     567
12-24 months   ki1135781-COHORTS          PHILIPPINES                                0             0     2010    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                                0             1      456    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                                1             0       54    2541
12-24 months   ki1135781-COHORTS          PHILIPPINES                                1             1       21    2541
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                 0             0    14802   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                 0             1     1872   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                 1             0     2632   19738
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                                 1             1      432   19738
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                 0             0     2916    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                 0             1      562    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                 1             0      598    4260
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                                 1             1      184    4260


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
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
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
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0dc4ae6b-6432-4993-9543-b43721f8d0f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0dc4ae6b-6432-4993-9543-b43721f8d0f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0dc4ae6b-6432-4993-9543-b43721f8d0f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0dc4ae6b-6432-4993-9543-b43721f8d0f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                0.2327044    0.1861938   0.2792150
0-3 months     ki1000108-IRC             INDIA         1                    NA                0.2400000    0.0723419   0.4076581
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.0574282    0.0399649   0.0748915
0-3 months     ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0276243    0.0062619   0.0489867
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                0.0860534    0.0710772   0.1010296
0-3 months     ki1101329-Keneba          GAMBIA        1                    NA                0.0952381    0.0227270   0.1677492
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0171722    0.0148688   0.0194755
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0178469    0.0081188   0.0275750
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                0.0847728    0.0776105   0.0919350
0-3 months     ki1135781-COHORTS         INDIA         1                    NA                0.1055875    0.0747363   0.1364387
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0557911    0.0513854   0.0601968
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0412467    0.0333019   0.0491916
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                0.1186441    0.0600713   0.1772168
3-6 months     ki1000109-EE              PAKISTAN      1                    NA                0.2727273    0.0085140   0.5369405
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.0996796    0.0660731   0.1332861
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1164662    0.0771244   0.1558081
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.0473373    0.0246689   0.0700057
3-6 months     ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1200000    0.0298106   0.2101894
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                0.0699301    0.0559918   0.0838684
3-6 months     ki1101329-Keneba          GAMBIA        1                    NA                0.1071429    0.0261049   0.1881808
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0216362    0.0184271   0.0248453
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0227689    0.0086765   0.0368613
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                0.0560278    0.0471659   0.0648898
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0875000    0.0255694   0.1494306
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0406900    0.0364733   0.0449068
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0430556    0.0339071   0.0522040
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.0443292    0.0321156   0.0565427
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.0349121    0.0116328   0.0581915
6-12 months    ki1000108-IRC             INDIA         0                    NA                0.1545741    0.1147212   0.1944271
6-12 months    ki1000108-IRC             INDIA         1                    NA                0.2400000    0.0723412   0.4076588
6-12 months    ki1000109-EE              PAKISTAN      0                    NA                0.2327586    0.1555591   0.3099582
6-12 months    ki1000109-EE              PAKISTAN      1                    NA                0.2142857   -0.0014837   0.4300551
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1959782    0.1622115   0.2297448
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.3088742    0.2478719   0.3698764
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.1450617    0.1066643   0.1834592
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.1020408    0.0171720   0.1869097
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                0.0610465    0.0357141   0.0863789
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    NA                0.1666667    0.0611027   0.2722307
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                0.2013582    0.1793367   0.2233798
6-12 months    ki1101329-Keneba          GAMBIA        1                    NA                0.2556188    0.1452151   0.3660224
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0476708    0.0432236   0.0521179
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0746038    0.0513030   0.0979045
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                0.1106155    0.1022813   0.1189496
6-12 months    ki1135781-COHORTS         INDIA         1                    NA                0.2018146    0.1642149   0.2394143
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                0.1217701    0.1090637   0.1344766
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    NA                0.2280402    0.1398245   0.3162559
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.0521716    0.0474064   0.0569367
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0704333    0.0587250   0.0821417
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.0838542    0.0690850   0.0986234
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.1218141    0.0876588   0.1559694
12-24 months   ki0047075b-MAL-ED         INDIA         0                    NA                0.1708861    0.1120329   0.2297392
12-24 months   ki0047075b-MAL-ED         INDIA         1                    NA                0.2800000    0.1035128   0.4564872
12-24 months   ki0047075b-MAL-ED         PERU          0                    NA                0.0339806    0.0091848   0.0587763
12-24 months   ki0047075b-MAL-ED         PERU          1                    NA                0.2272727    0.0517724   0.4027731
12-24 months   ki1000108-IRC             INDIA         0                    NA                0.1918239    0.1484855   0.2351623
12-24 months   ki1000108-IRC             INDIA         1                    NA                0.2400000    0.0723419   0.4076581
12-24 months   ki1000109-EE              PAKISTAN      0                    NA                0.2123879    0.1366783   0.2880975
12-24 months   ki1000109-EE              PAKISTAN      1                    NA                0.4285914    0.1685753   0.6886074
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.1245126    0.1097703   0.1392549
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.1268885    0.0852686   0.1685085
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                0.2406677    0.1915615   0.2897739
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    NA                0.3465955    0.2204939   0.4726970
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                0.2229884    0.1997709   0.2462059
12-24 months   ki1101329-Keneba          GAMBIA        1                    NA                0.2985980    0.1897699   0.4074261
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                0.0675824    0.0614085   0.0737564
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0901108    0.0619828   0.1182388
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                0.1849077    0.1695868   0.2002287
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    NA                0.2767217    0.1832245   0.3702190
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                0.1124297    0.1051426   0.1197168
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.1406655    0.1229506   0.1583803
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                0.1620551    0.1436950   0.1804151
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    NA                0.2358877    0.1796211   0.2921544


### Parameter: E(Y)


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-IRC             INDIA         NA                   NA                0.2332362   0.1884170   0.2780553
0-3 months     ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0519348   0.0380636   0.0658060
0-3 months     ki1101329-Keneba          GAMBIA        NA                   NA                0.0864635   0.0717939   0.1011331
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0171893   0.0149476   0.0194310
0-3 months     ki1135781-COHORTS         INDIA         NA                   NA                0.0860649   0.0790793   0.0930505
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0539269   0.0499950   0.0578587
3-6 months     ki1000109-EE              PAKISTAN      NA                   NA                0.1317829   0.0731844   0.1903815
3-6 months     ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1034913   0.0730456   0.1339370
3-6 months     ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0567010   0.0336594   0.0797426
3-6 months     ki1101329-Keneba          GAMBIA        NA                   NA                0.0714818   0.0576981   0.0852654
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0217574   0.0186222   0.0248926
3-6 months     ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0569715   0.0481747   0.0657684
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0413243   0.0374983   0.0451502
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0434783   0.0324169   0.0545396
6-12 months    ki1000108-IRC             INDIA         NA                   NA                0.1608187   0.1218275   0.1998100
6-12 months    ki1000109-EE              PAKISTAN      NA                   NA                0.2307692   0.1580632   0.3034753
6-12 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2100559   0.1780909   0.2420208
6-12 months    ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.1394102   0.1042119   0.1746085
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0739796   0.0480362   0.0999229
6-12 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.2033133   0.1816592   0.2249673
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0490692   0.0446771   0.0534613
6-12 months    ki1135781-COHORTS         INDIA         NA                   NA                0.1155709   0.1073281   0.1238138
6-12 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1246189   0.1119791   0.1372587
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0541387   0.0496481   0.0586293
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0907828   0.0771434   0.1044222
12-24 months   ki0047075b-MAL-ED         INDIA         NA                   NA                0.1857923   0.1292864   0.2422983
12-24 months   ki0047075b-MAL-ED         PERU          NA                   NA                0.0526316   0.0235835   0.0816797
12-24 months   ki1000108-IRC             INDIA         NA                   NA                0.1953353   0.1533175   0.2373530
12-24 months   ki1000109-EE              PAKISTAN      NA                   NA                0.2362205   0.1620543   0.3103866
12-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1261468   0.1083153   0.1439783
12-24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2514793   0.2051574   0.2978012
12-24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.2261813   0.2033515   0.2490110
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0691196   0.0630513   0.0751880
12-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1877214   0.1725355   0.2029073
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1167292   0.1098289   0.1236294
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.1751174   0.1566212   0.1936135


### Parameter: RR


agecat         studyid                   country       intervention_level   baseline_level     estimate    ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
0-3 months     ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000    1.0000000
0-3 months     ki1000108-IRC             INDIA         1                    0                 1.0313514   0.4987075    2.1328848
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA         1                    0                 0.4810233   0.1947040    1.1883857
0-3 months     ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
0-3 months     ki1101329-Keneba          GAMBIA        1                    0                 1.1067323   0.5068240    2.4167294
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.0392913   0.5928814    1.8218255
0-3 months     ki1135781-COHORTS         INDIA         0                    0                 1.0000000   1.0000000    1.0000000
0-3 months     ki1135781-COHORTS         INDIA         1                    0                 1.2455352   0.9188858    1.6883034
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    1                    0                 0.7393069   0.6003080    0.9104906
3-6 months     ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1000109-EE              PAKISTAN      1                    0                 2.2987013   0.7749361    6.8186628
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.1684060   0.8123275    1.6805691
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1017093-NIH-Birth       BANGLADESH    1                    0                 2.5350000   1.0397934    6.1802899
3-6 months     ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1101329-Keneba          GAMBIA        1                    0                 1.5321429   0.7008169    3.3496079
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.0523535   0.5568802    1.9886643
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     ki1135781-COHORTS         PHILIPPINES   1                    0                 1.5617241   0.7562029    3.2253014
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.0581352   0.8337249    1.3429490
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    1                    0                 0.7875657   0.3884574    1.5967249
6-12 months    ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1000108-IRC             INDIA         1                    0                 1.5526531   0.7373649    3.2693874
6-12 months    ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1000109-EE              PAKISTAN      1                    0                 0.9206349   0.3189139    2.6576724
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.5760640   1.2111938    2.0508509
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1017093-NIH-Birth       BANGLADESH    1                    0                 0.7034303   0.2938735    1.6837661
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    1                    0                 2.7301587   1.2803647    5.8215965
6-12 months    ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1101329-Keneba          GAMBIA        1                    0                 1.2694725   0.8132380    1.9816591
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.5649797   1.1298162    2.1677520
6-12 months    ki1135781-COHORTS         INDIA         0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1135781-COHORTS         INDIA         1                    0                 1.8244701   1.4927587    2.2298923
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES   1                    0                 1.8727101   1.2544562    2.7956681
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.3500325   1.1188127    1.6290373
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.4526896   1.0451776    2.0190893
12-24 months   ki0047075b-MAL-ED         INDIA         0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki0047075b-MAL-ED         INDIA         1                    0                 1.6385185   0.7989380    3.3603897
12-24 months   ki0047075b-MAL-ED         PERU          0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki0047075b-MAL-ED         PERU          1                    0                 6.6883117   2.3115748   19.3519641
12-24 months   ki1000108-IRC             INDIA         0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1000108-IRC             INDIA         1                    0                 1.2511475   0.6004116    2.6071616
12-24 months   ki1000109-EE              PAKISTAN      0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1000109-EE              PAKISTAN      1                    0                 2.0179648   0.9985113    4.0782533
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1000304b-SAS-CompFeed   INDIA         1                    0                 1.0190820   0.7750415    1.3399644
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1017093-NIH-Birth       BANGLADESH    1                    0                 1.4401411   0.9490004    2.1854642
12-24 months   ki1101329-Keneba          GAMBIA        0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1101329-Keneba          GAMBIA        1                    0                 1.3390738   0.9171775    1.9550400
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    0                 1.3333466   0.9632745    1.8455934
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES   1                    0                 1.4965396   1.0573227    2.1182094
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    0                 1.2511414   1.0882314    1.4384394
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000    1.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    1                    0                 1.4556022   1.1188255    1.8937519


### Parameter: PAR


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                 0.0005317   -0.0121513    0.0132148
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.0054934   -0.0110716    0.0000848
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0004101   -0.0028973    0.0037175
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0000171   -0.0005181    0.0005524
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                 0.0012921   -0.0006567    0.0032410
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0018642   -0.0034280   -0.0003005
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                 0.0131389   -0.0111122    0.0373900
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0038117   -0.0035554    0.0111787
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0093638   -0.0028631    0.0215906
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0015517   -0.0019000    0.0050034
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0001213   -0.0006325    0.0008750
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0009437   -0.0009432    0.0028306
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0006342   -0.0010532    0.0023217
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                -0.0008509   -0.0054691    0.0037673
6-12 months    ki1000108-IRC             INDIA         0                    NA                 0.0062446   -0.0065718    0.0190610
6-12 months    ki1000109-EE              PAKISTAN      0                    NA                -0.0019894   -0.0266884    0.0227096
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0140777    0.0008513    0.0273040
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                -0.0056515   -0.0179773    0.0066742
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.0129331   -0.0007959    0.0266621
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                 0.0019550   -0.0027801    0.0066901
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0013984    0.0001575    0.0026393
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                 0.0049555    0.0023520    0.0075590
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0028488    0.0000270    0.0056705
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0019671   -0.0000770    0.0040112
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0069286    0.0001710    0.0136861
12-24 months   ki0047075b-MAL-ED         INDIA         0                    NA                 0.0149063   -0.0110858    0.0408983
12-24 months   ki0047075b-MAL-ED         PERU          0                    NA                 0.0186510    0.0000066    0.0372954
12-24 months   ki1000108-IRC             INDIA         0                    NA                 0.0035114   -0.0091799    0.0162026
12-24 months   ki1000109-EE              PAKISTAN      0                    NA                 0.0238325   -0.0082822    0.0559473
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0016342   -0.0050474    0.0083158
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0108116   -0.0091843    0.0308075
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                 0.0031928   -0.0019964    0.0083820
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0015372   -0.0001431    0.0032174
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0028136   -0.0002342    0.0058615
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0042994    0.0012210    0.0073778
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0130623    0.0019391    0.0241855


### Parameter: PAF


agecat         studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC             INDIA         0                    NA                 0.0022799   -0.0536072    0.0552025
0-3 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                -0.1057746   -0.2056368   -0.0141840
0-3 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0047429   -0.0342462    0.0422622
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0009973   -0.0306317    0.0316556
0-3 months     ki1135781-COHORTS         INDIA         0                    NA                 0.0150135   -0.0078668    0.0373743
0-3 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                -0.0345699   -0.0637726   -0.0061690
3-6 months     ki1000109-EE              PAKISTAN      0                    NA                 0.0997009   -0.0996774    0.2629307
3-6 months     ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0368308   -0.0416648    0.1094113
3-6 months     ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.1651425   -0.0685349    0.3477172
3-6 months     ki1101329-Keneba          GAMBIA        0                    NA                 0.0217075   -0.0276303    0.0686765
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0055731   -0.0296717    0.0396115
3-6 months     ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0165643   -0.0170302    0.0490492
3-6 months     kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0153478   -0.0264054    0.0554024
3-6 months     kiGH5241-JiVitA-4         BANGLADESH    0                    NA                -0.0195708   -0.1313513    0.0811654
6-12 months    ki1000108-IRC             INDIA         0                    NA                 0.0388299   -0.0438797    0.1149863
6-12 months    ki1000109-EE              PAKISTAN      0                    NA                -0.0086207   -0.1215195    0.0929130
6-12 months    ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0670188    0.0017252    0.1280417
6-12 months    ki1017093-NIH-Birth       BANGLADESH    0                    NA                -0.0405389   -0.1323891    0.0438611
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH    0                    NA                 0.1748196   -0.0220623    0.3337757
6-12 months    ki1101329-Keneba          GAMBIA        0                    NA                 0.0096157   -0.0139403    0.0326245
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0284993    0.0029996    0.0533468
6-12 months    ki1135781-COHORTS         INDIA         0                    NA                 0.0428782    0.0202560    0.0649780
6-12 months    ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0228597    0.0000400    0.0451587
6-12 months    kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0363348   -0.0020163    0.0732180
6-12 months    kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0763203   -0.0012399    0.1478724
12-24 months   ki0047075b-MAL-ED         INDIA         0                    NA                 0.0802308   -0.0694246    0.2089435
12-24 months   ki0047075b-MAL-ED         PERU          0                    NA                 0.3543689   -0.0274553    0.5942992
12-24 months   ki1000108-IRC             INDIA         0                    NA                 0.0179762   -0.0491285    0.0807886
12-24 months   ki1000109-EE              PAKISTAN      0                    NA                 0.1008911   -0.0439728    0.2256534
12-24 months   ki1000304b-SAS-CompFeed   INDIA         0                    NA                 0.0129546   -0.0403033    0.0634861
12-24 months   ki1017093-NIH-Birth       BANGLADESH    0                    NA                 0.0429919   -0.0397231    0.1191265
12-24 months   ki1101329-Keneba          GAMBIA        0                    NA                 0.0141162   -0.0090850    0.0367840
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE      0                    NA                 0.0222393   -0.0023045    0.0461820
12-24 months   ki1135781-COHORTS         PHILIPPINES   0                    NA                 0.0149884   -0.0013594    0.0310693
12-24 months   kiGH5241-JiVitA-3         BANGLADESH    0                    NA                 0.0368325    0.0102138    0.0627354
12-24 months   kiGH5241-JiVitA-4         BANGLADESH    0                    NA                 0.0745916    0.0109908    0.1341025
