---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        sex       ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              0       88     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              1       46     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                0       88     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                1       41     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              0      106     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              1        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                0      108     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                1       12     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Female              0       73     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Female              1       65     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                0       60     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                1       53     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female              0       77     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female              1       33     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                0       94     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                1       36     240
0-24 months   ki0047075b-MAL-ED          PERU                           Female              0      133     302
0-24 months   ki0047075b-MAL-ED          PERU                           Female              1        9     302
0-24 months   ki0047075b-MAL-ED          PERU                           Male                0      143     302
0-24 months   ki0047075b-MAL-ED          PERU                           Male                1       17     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0      132     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       26     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0      119     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       35     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0      114     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1       18     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0      115     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1       14     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              1      118     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                0       75     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                1      111     373
0-24 months   ki1000108-IRC              INDIA                          Female              0       62     410
0-24 months   ki1000108-IRC              INDIA                          Female              1      123     410
0-24 months   ki1000108-IRC              INDIA                          Male                0       79     410
0-24 months   ki1000108-IRC              INDIA                          Male                1      146     410
0-24 months   ki1000109-EE               PAKISTAN                       Female              0       95     380
0-24 months   ki1000109-EE               PAKISTAN                       Female              1       90     380
0-24 months   ki1000109-EE               PAKISTAN                       Male                0       99     380
0-24 months   ki1000109-EE               PAKISTAN                       Male                1       96     380
0-24 months   ki1000109-ResPak           PAKISTAN                       Female              0       60     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Female              1       72     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                0       65     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                1       81     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              0      132     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              1       80     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                0      154     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                1       97     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              0       33     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              1       26     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                0       20     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                1       27     106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              0      160     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              1      136     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                0      166     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                1      162     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              0      217     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              1      115     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                0      237     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                1      131     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              0      264     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              1      117     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                0      243     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                1      134     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0      944    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      240    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      886    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      326    2396
0-24 months   ki1101329-Keneba           GAMBIA                         Female              0      935    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Female              1      475    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Male                0      892    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Male                1      617    2919
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              0      151     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              1       11     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                0      133     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                1       20     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              0      322     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              1       78     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                0      291     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                1      106     797
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              0      116     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              1      172     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                0      130     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                1      184     602
0-24 months   ki1114097-CMIN             BANGLADESH                     Female              0       64     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Female              1       55     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                0       84     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                1       69     272
0-24 months   ki1114097-CMIN             BRAZIL                         Female              0       56     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female              1        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                0       51     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                1        6     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              0      642    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              1      116    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                0      581    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                1      168    1507
0-24 months   ki1114097-CMIN             PERU                           Female              0      413     929
0-24 months   ki1114097-CMIN             PERU                           Female              1       31     929
0-24 months   ki1114097-CMIN             PERU                           Male                0      443     929
0-24 months   ki1114097-CMIN             PERU                           Male                1       42     929
0-24 months   ki1114097-CONTENT          PERU                           Female              0      104     215
0-24 months   ki1114097-CONTENT          PERU                           Female              1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Male                0      103     215
0-24 months   ki1114097-CONTENT          PERU                           Male                1        6     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female              0     3183    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Female              1     1035    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Male                0     2786    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Male                1     1123    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              0     5151   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              1     1620   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                0     5516   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                1     1652   13939
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female              0      226     659
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female              1       79     659
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                0      221     659
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                1      133     659
0-24 months   ki1135781-COHORTS          INDIA                          Female              0     2389    7405
0-24 months   ki1135781-COHORTS          INDIA                          Female              1     1162    7405
0-24 months   ki1135781-COHORTS          INDIA                          Male                0     2571    7405
0-24 months   ki1135781-COHORTS          INDIA                          Male                1     1283    7405
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              0      883    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              1      548    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                0      933    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                1      681    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         Female              0      400     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Female              1       21     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                0      373     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                1       46     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              0     4855   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              1     1712   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                0     4951   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                1     1811   13329
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              0      497    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              1      244    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                0      481    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                1      213    1435
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female              0      101     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female              1       33     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                0      103     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                1       26     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female              0      109     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female              1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                0      110     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                1       10     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Female              0       95     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Female              1       43     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                0       77     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                1       36     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female              0       91     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female              1       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                0      106     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                1       24     240
0-6 months    ki0047075b-MAL-ED          PERU                           Female              0      138     302
0-6 months    ki0047075b-MAL-ED          PERU                           Female              1        4     302
0-6 months    ki0047075b-MAL-ED          PERU                           Male                0      153     302
0-6 months    ki0047075b-MAL-ED          PERU                           Male                1        7     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0      144     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       14     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0      136     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       18     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0      123     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1        9     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0      127     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female              0       83     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female              1      102     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                0       94     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                1       89     368
0-6 months    ki1000108-IRC              INDIA                          Female              0       86     410
0-6 months    ki1000108-IRC              INDIA                          Female              1       99     410
0-6 months    ki1000108-IRC              INDIA                          Male                0      101     410
0-6 months    ki1000108-IRC              INDIA                          Male                1      124     410
0-6 months    ki1000109-EE               PAKISTAN                       Female              0      135     380
0-6 months    ki1000109-EE               PAKISTAN                       Female              1       50     380
0-6 months    ki1000109-EE               PAKISTAN                       Male                0      142     380
0-6 months    ki1000109-EE               PAKISTAN                       Male                1       53     380
0-6 months    ki1000109-ResPak           PAKISTAN                       Female              0       79     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Female              1       53     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                0       91     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                1       55     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female              0      158     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female              1       53     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                0      202     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                1       49     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female              0       50     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female              1        9     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                0       38     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                1        9     106
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female              0      191     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female              1      104     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                0      209     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                1      118     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female              0      246     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female              1       86     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                0      273     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                1       95     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female              0      286     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female              1       95     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                0      276     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                1      101     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0     1044    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      140    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0     1019    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      193    2396
0-6 months    ki1101329-Keneba           GAMBIA                         Female              0     1011    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Female              1      164    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Male                0     1038    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Male                1      224    2437
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female              0      151     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female              1        3     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                0      134     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                1        7     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female              0      205     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female              1       83     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                0      219     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                1       95     602
0-6 months    ki1114097-CMIN             BANGLADESH                     Female              0       93     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Female              1       26     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                0      129     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                1       24     272
0-6 months    ki1114097-CMIN             BRAZIL                         Female              0       57     119
0-6 months    ki1114097-CMIN             BRAZIL                         Female              1        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                0       53     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                1        4     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female              0      454     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female              1       19     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                0      464     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                1       29     966
0-6 months    ki1114097-CMIN             PERU                           Female              0      304     699
0-6 months    ki1114097-CMIN             PERU                           Female              1       21     699
0-6 months    ki1114097-CMIN             PERU                           Male                0      347     699
0-6 months    ki1114097-CMIN             PERU                           Male                1       27     699
0-6 months    ki1114097-CONTENT          PERU                           Female              0      104     215
0-6 months    ki1114097-CONTENT          PERU                           Female              1        2     215
0-6 months    ki1114097-CONTENT          PERU                           Male                0      107     215
0-6 months    ki1114097-CONTENT          PERU                           Male                1        2     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female              0     3193    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Female              1     1024    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Male                0     2821    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Male                1     1088    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female              0     5425   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female              1     1290   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                0     5915   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                1     1217   13847
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female              0      194     512
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female              1       45     512
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                0      190     512
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                1       83     512
0-6 months    ki1135781-COHORTS          INDIA                          Female              0     2566    7128
0-6 months    ki1135781-COHORTS          INDIA                          Female              1      890    7128
0-6 months    ki1135781-COHORTS          INDIA                          Male                0     2767    7128
0-6 months    ki1135781-COHORTS          INDIA                          Male                1      905    7128
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female              0     1120    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female              1      311    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                0     1207    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                1      406    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         Female              0      127     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Female              1        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                0      141     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                1        2     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female              0     5336   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female              1     1207   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                0     5523   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                1     1214   13280
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female              0      613    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female              1       79    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                0      571    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                1       68    1331
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              0       98     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              1       24     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                0       98     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                1       20     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              0       98     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              1        3     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                0      103     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                1        3     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Female              0       96     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Female              1       33     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                0       75     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                1       31     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female              0       91     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female              1       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                0      108     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                1       18     235
6-24 months   ki0047075b-MAL-ED          PERU                           Female              0      119     270
6-24 months   ki0047075b-MAL-ED          PERU                           Female              1        5     270
6-24 months   ki0047075b-MAL-ED          PERU                           Male                0      134     270
6-24 months   ki0047075b-MAL-ED          PERU                           Male                1       12     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0      115     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       14     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0      108     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       22     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0      111     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1       13     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0      108     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1       13     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              0      142     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              1       45     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                0      132     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                1       54     373
6-24 months   ki1000108-IRC              INDIA                          Female              0      127     410
6-24 months   ki1000108-IRC              INDIA                          Female              1       58     410
6-24 months   ki1000108-IRC              INDIA                          Male                0      156     410
6-24 months   ki1000108-IRC              INDIA                          Male                1       69     410
6-24 months   ki1000109-EE               PAKISTAN                       Female              0      122     375
6-24 months   ki1000109-EE               PAKISTAN                       Female              1       60     375
6-24 months   ki1000109-EE               PAKISTAN                       Male                0      129     375
6-24 months   ki1000109-EE               PAKISTAN                       Male                1       64     375
6-24 months   ki1000109-ResPak           PAKISTAN                       Female              0       64     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Female              1       42     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                0       82     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                1       42     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              0      147     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              1       50     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                0      168     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                1       67     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              0       38     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              1       20     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                0       25     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                1       20     103
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              0      181     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              1       65     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                0      201     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                1       94     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              0      249     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              1       45     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                0      267     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                1       54     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              0      331     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              1       38     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                0      303     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                1       58     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0      862    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      135    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      832    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      189    2018
6-24 months   ki1101329-Keneba           GAMBIA                         Female              0      946    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Female              1      379    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Male                0      924    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Male                1      489    2738
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              0      134     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              1        8     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                0      120     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                1       15     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              0      322     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              1       78     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                0      291     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                1      106     797
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              0      144     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              1      141     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                0      167     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                1      138     590
6-24 months   ki1114097-CMIN             BANGLADESH                     Female              0       65     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Female              1       43     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                0       90     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                1       54     252
6-24 months   ki1114097-CMIN             BRAZIL                         Female              0       60     119
6-24 months   ki1114097-CMIN             BRAZIL                         Female              1        2     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male                0       55     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male                1        2     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              0      647    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              1       98    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                0      588    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                1      149    1482
6-24 months   ki1114097-CMIN             PERU                           Female              0      404     878
6-24 months   ki1114097-CMIN             PERU                           Female              1       13     878
6-24 months   ki1114097-CMIN             PERU                           Male                0      439     878
6-24 months   ki1114097-CMIN             PERU                           Male                1       22     878
6-24 months   ki1114097-CONTENT          PERU                           Female              0      106     215
6-24 months   ki1114097-CONTENT          PERU                           Female              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Male                0      105     215
6-24 months   ki1114097-CONTENT          PERU                           Male                1        4     215
6-24 months   ki1119695-PROBIT           BELARUS                        Female              0     4122    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Female              1       15    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Male                0     3787    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Male                1       51    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              0     4885   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              1      434   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                0     4804   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                1      571   10694
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female              0      240     597
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female              1       40     597
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                0      254     597
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                1       63     597
6-24 months   ki1135781-COHORTS          INDIA                          Female              0     2957    6941
6-24 months   ki1135781-COHORTS          INDIA                          Female              1      366    6941
6-24 months   ki1135781-COHORTS          INDIA                          Male                0     3132    6941
6-24 months   ki1135781-COHORTS          INDIA                          Male                1      486    6941
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              0      997    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              1      332    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                0     1063    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                1      417    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         Female              0      398     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Female              1       19     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                0      364     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                1       45     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              0     3575    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              1      647    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                0     3567    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                1      766    8555
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              0      539    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              1      201    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                0      524    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                1      168    1432


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/bbff5023-7747-43b0-bdc2-9eb1e934236f/746309af-40e5-4889-9161-e957f19b76ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bbff5023-7747-43b0-bdc2-9eb1e934236f/746309af-40e5-4889-9161-e957f19b76ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3457905   0.2620785   0.4295024
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.0608603   0.0162731   0.1054475
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5458111   0.4542480   0.6373742
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3195399   0.2394965   0.3995832
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0626774   0.0224342   0.1029207
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1640055   0.1058540   0.2221571
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1086688   0.0547073   0.1626304
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5955178   0.5245622   0.6664735
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6688878   0.6052440   0.7325317
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.5516811   0.4814047   0.6219576
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.5996309   0.5082815   0.6909802
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3791449   0.2975189   0.4607710
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.4374445   0.3081505   0.5667386
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4588865   0.4019466   0.5158264
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3617696   0.3110068   0.4125324
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3069843   0.2604357   0.3535329
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2027550   0.1798345   0.2256754
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3368881   0.3121987   0.3615776
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0682200   0.0291561   0.1072839
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1943971   0.1692861   0.2195082
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6090005   0.5534709   0.6645302
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.5317200   0.4408820   0.6225580
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                0.1781664   0.0776540   0.2786787
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1529420   0.1272851   0.1785988
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.0697019   0.0459656   0.0934381
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2443853   0.1507132   0.3380573
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2304785   0.2207275   0.2402294
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2583714   0.2089996   0.3077433
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3271843   0.3117451   0.3426236
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3827217   0.3575234   0.4079201
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0496744   0.0288633   0.0704854
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2606912   0.2493382   0.2720441
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3070699   0.2653519   0.3487878
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2006140   0.1310003   0.2702278
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3605506   0.2747904   0.4463108
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1867620   0.1140514   0.2594726
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.0895091   0.0445700   0.1344482
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4877763   0.4148322   0.5607205
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.6137947   0.5462043   0.6813852
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.3380265   0.2704603   0.4055928
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3751724   0.2958398   0.4545049
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1943619   0.1636314   0.2250923
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.1542089   0.0607951   0.2476226
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3789329   0.3249254   0.4329404
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3015795   0.2543546   0.3488043
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2498882   0.2062719   0.2935045
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1182596   0.0998525   0.1366667
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1396591   0.1198156   0.1595026
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2884713   0.2360248   0.3409178
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.1580045   0.0997418   0.2162673
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.0401758   0.0224378   0.0579137
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                0.0644498   0.0376631   0.0912365
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2418021   0.1478254   0.3357788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1706814   0.1619483   0.1794145
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1874464   0.1377184   0.2371745
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2464378   0.2324961   0.2603795
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2175372   0.1961396   0.2389349
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1880275   0.1767531   0.1993018
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1175608   0.0898320   0.1452897
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2009227   0.1257954   0.2760499
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2570044   0.1810618   0.3329471
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1702192   0.1057904   0.2346480
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0408986   0.0056579   0.0761394
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1083743   0.0543987   0.1623499
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1359130   0.0742119   0.1976141
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2405975   0.1789813   0.3022136
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3731099   0.3032371   0.4429826
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.3913924   0.3210549   0.4617299
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3388979   0.2549168   0.4228790
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2915310   0.2297075   0.3533545
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3451956   0.2205926   0.4697987
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2641579   0.2087491   0.3195668
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1726105   0.1296450   0.2155759
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1025260   0.0715037   0.1335483
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1353271   0.1140611   0.1565930
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2857396   0.2613929   0.3100864
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0573862   0.0187096   0.0960629
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1943971   0.1692861   0.2195082
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4529390   0.3968701   0.5090079
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.4382776   0.3606785   0.5158767
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1316676   0.1073597   0.1559756
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.0313019   0.0145293   0.0480745
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0036223   0.0010707   0.0061739
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0815879   0.0742297   0.0889461
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1429452   0.1018182   0.1840722
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1101184   0.0994699   0.1207668
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2497707   0.2264663   0.2730750
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0456053   0.0255264   0.0656841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1531874   0.1413143   0.1650605
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2433242   0.2064181   0.2802302


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3307985   0.2738270   0.3877700
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.0815451   0.0463297   0.1167604
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4701195   0.4082508   0.5319883
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2875000   0.2301200   0.3448800
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.0860927   0.0544044   0.1177810
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1955128   0.1514355   0.2395901
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1226054   0.0827384   0.1624724
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       observed             NA                0.4894737   0.4391465   0.5398008
0-24 months   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5503597   0.4917777   0.6089417
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3822894   0.3008363   0.4637425
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.5000000   0.4043636   0.5956364
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2362270   0.2192156   0.2532385
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3741007   0.3565437   0.3916578
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.0984127   0.0654659   0.1313595
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2308657   0.1897291   0.2720024
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             NA                0.4558824   0.3965849   0.5151798
0-24 months   ki1114097-CMIN             BRAZIL                         observed             NA                0.1008403   0.0465100   0.1551707
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1884539   0.1687026   0.2082051
0-24 months   ki1114097-CMIN             PERU                           observed             NA                0.0785791   0.0612667   0.0958915
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2347371   0.2277008   0.2417734
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3216995   0.2860075   0.3573916
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3301823   0.3194703   0.3408943
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0797619   0.0614297   0.0980941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2643109   0.2552337   0.2733881
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3184669   0.2901008   0.3468330
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2243346   0.1738240   0.2748452
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3147410   0.2571729   0.3723092
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1791667   0.1305478   0.2277856
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000109-EE               PAKISTAN                       observed             NA                0.2710526   0.2263016   0.3158037
0-6 months    ki1000109-ResPak           PAKISTAN                       observed             NA                0.3884892   0.3310908   0.4458876
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2207792   0.1636864   0.2778721
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.1698113   0.0979947   0.2416280
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1389816   0.1251275   0.1528358
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.1592121   0.1446830   0.1737413
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1114097-CMIN             BANGLADESH                     observed             NA                0.1838235   0.1377071   0.2299400
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.0496894   0.0359791   0.0633998
0-6 months    ki1114097-CMIN             PERU                           observed             NA                0.0686695   0.0499086   0.0874305
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1810500   0.1746363   0.1874638
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2500000   0.2124562   0.2875438
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.2518238   0.2417465   0.2619011
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1823042   0.1743031   0.1903054
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.1104433   0.0907576   0.1301289
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.1833333   0.1342773   0.2323893
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.2723404   0.2153029   0.3293779
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1531915   0.1070438   0.1993392
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.0629630   0.0339366   0.0919893
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1389961   0.0967835   0.1812087
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1061224   0.0674772   0.1447677
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000109-EE               PAKISTAN                       observed             NA                0.3306667   0.2829875   0.3783458
6-24 months   ki1000109-ResPak           PAKISTAN                       observed             NA                0.3652174   0.3028556   0.4275792
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2708333   0.2169112   0.3247555
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3883495   0.2937670   0.4829321
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1605550   0.1445335   0.1765765
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3170197   0.2995873   0.3344522
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.0830325   0.0504792   0.1155858
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2308657   0.1897291   0.2720024
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1114097-CMIN             BANGLADESH                     observed             NA                0.3849206   0.3247254   0.4451159
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1666667   0.1476863   0.1856470
6-24 months   ki1114097-CMIN             PERU                           observed             NA                0.0398633   0.0269154   0.0528113
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0082759   0.0065972   0.0099545
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0939779   0.0884472   0.0995086
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1725293   0.1421951   0.2028635
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.1227489   0.1150285   0.1304693
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0774818   0.0592383   0.0957254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1651666   0.1559963   0.1743368
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2576816   0.2314541   0.2839091


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9566443   0.8085251   1.1318985
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.3398731   0.7506155   2.3917172
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8613227   0.7662451   0.9681977
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8997313   0.7584328   1.0673542
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.3735845   0.8198921   2.3011984
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1921110   0.9146245   1.5537837
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1282477   0.7789782   1.6341185
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0309364   0.9478564   1.1212984
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.9808783   0.9198841   1.0459168
0-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           0.8872402   0.8084992   0.9736499
0-24 months   ki1000109-ResPak           PAKISTAN                       observed             optimal           0.9178309   0.8295737   1.0154775
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0082936   0.9737032   1.0441129
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1430021   0.9352690   1.3968749
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0407020   0.9509009   1.1389837
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9714154   0.8770185   1.0759727
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0786694   0.9671409   1.2030591
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1650864   1.0707091   1.2677825
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.1104597   1.0522023   1.1719427
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.4425784   0.9143853   2.2758815
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1875985   1.0241922   1.3770757
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9710371   0.9119219   1.0339845
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           0.8573729   0.7635402   0.9627369
0-24 months   ki1114097-CMIN             BRAZIL                         observed             optimal           0.5659897   0.4488173   0.7137523
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.2321922   1.0850592   1.3992762
0-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.1273604   0.8714036   1.4584992
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0865411   1.0244149   1.1524350
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0184773   0.9886868   1.0491654
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2451049   1.0742801   1.4430931
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0091630   0.9753141   1.0441865
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0545847   1.0048068   1.1068287
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.6056959   1.1375531   2.2664956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0138852   0.9846019   1.0440394
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0371153   0.9446468   1.1386353
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1182400   0.8647244   1.4460799
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8729455   0.7460265   1.0214569
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9593313   0.7244171   1.2704237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1458508   0.7876021   1.6670523
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0640568   0.9565977   1.1835874
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           0.8861308   0.8150929   0.9633599
0-6 months    ki1000109-EE               PAKISTAN                       observed             optimal           0.8018680   0.7009685   0.9172913
0-6 months    ki1000109-ResPak           PAKISTAN                       observed             optimal           1.0354952   0.8939257   1.1994848
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1359184   0.9418426   1.3699856
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1011774   0.7205954   1.6827636
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9418901   0.8497354   1.0440391
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8573907   0.7712069   0.9532056
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0347636   0.9134752   1.1721563
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1752250   1.0449592   1.3217300
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1400056   1.0242342   1.2688630
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0249931   0.8980123   1.1699292
0-6 months    ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1634066   0.8952204   1.5119348
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.2368017   0.8782951   1.7416451
0-6 months    ki1114097-CMIN             PERU                           observed             optimal           1.0654725   0.7804539   1.4545789
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0748726   1.0165074   1.1365891
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0607486   1.0227430   1.1001665
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.3337143   1.0818180   1.6442633
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0218553   0.9820903   1.0632304
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0827818   1.0061815   1.1652137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9695616   0.9340322   1.0064425
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9394563   0.7947045   1.1105740
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9124572   0.7104430   1.1719140
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0596720   0.8644045   1.2990502
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8999661   0.6957111   1.1641885
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.5394882   0.7483343   3.1670658
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.2825559   0.8725559   1.8852082
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7808116   0.5921166   1.0296397
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1031519   0.9151891   1.3297187
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.8302008   0.7389292   0.9327461
6-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           0.8448469   0.7466626   0.9559422
6-24 months   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.0776620   0.9074074   1.2798610
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9290036   0.7561800   1.1413255
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1250128   0.8768096   1.4434763
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1125928   0.9489251   1.3044894
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9325947   0.7829368   1.1108597
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2826678   1.0162838   1.6188753
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1864221   1.0535428   1.3360609
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.1094706   1.0418425   1.1814885
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.4469061   0.8426125   2.4845787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1875985   1.0241922   1.3770757
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0440287   0.9575373   1.1383327
6-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           0.8782576   0.7706125   1.0009393
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.2658135   1.0988146   1.4581930
6-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.2735112   0.8334688   1.9458808
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           2.2846823   1.2101586   4.3132969
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1518611   1.0765333   1.2324598
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2069612   0.9660571   1.5079392
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.1146994   1.0365916   1.1986927
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0675511   0.9963714   1.1438157
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.6989663   1.1775548   2.4512547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0781995   1.0197176   1.1400355
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0590051   0.9524210   1.1775170


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0149920   -0.0732469    0.0432630
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0206848   -0.0154422    0.0568118
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0756916   -0.1393857   -0.0119976
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0320399   -0.0864166    0.0223369
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0234153   -0.0098240    0.0566546
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0315073   -0.0122497    0.0752642
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0139365   -0.0265050    0.0543781
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0184232   -0.0315635    0.0684099
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0127903   -0.0557436    0.0301630
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0622075   -0.1128761   -0.0115388
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0492712   -0.1105218    0.0119795
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0031445   -0.0101197    0.0164087
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0625555   -0.0243548    0.1494657
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0186776   -0.0227086    0.0600638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0103410   -0.0472923    0.0266102
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0241503   -0.0093511    0.0576517
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0334721    0.0162657    0.0506784
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0372126    0.0190654    0.0553597
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0301927   -0.0022616    0.0626470
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0364686    0.0028167    0.0701205
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0176384   -0.0559012    0.0206244
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0758377   -0.1378740   -0.0138014
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                -0.0773260   -0.1328949   -0.0217572
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0355119    0.0158468    0.0551771
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0088773   -0.0091603    0.0269148
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0211494    0.0084041    0.0338946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0042586   -0.0025839    0.0111011
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0633281    0.0250744    0.1015818
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0029980   -0.0081645    0.0141605
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0208908    0.0023921    0.0393895
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0300876    0.0117803    0.0483948
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0036197   -0.0040302    0.0112697
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0113970   -0.0171873    0.0399813
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0237206   -0.0279670    0.0754082
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0458096   -0.1028470    0.0112279
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0075954   -0.0600787    0.0448879
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0130550   -0.0207169    0.0468269
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0312454   -0.0205798    0.0830706
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.0698923   -0.1204090   -0.0193756
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0669739   -0.1124348   -0.0215130
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0133168   -0.0418157    0.0684493
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0264174   -0.0156301    0.0684648
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0156025   -0.0499717    0.0811766
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0220197   -0.0609519    0.0169124
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0430080   -0.0749133   -0.0111028
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0086870   -0.0224717    0.0398458
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0207220    0.0067186    0.0347255
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0195531    0.0045268    0.0345793
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0072098   -0.0309439    0.0453634
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0258190   -0.0158746    0.0675126
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0095137   -0.0044646    0.0234920
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                 0.0042197   -0.0158684    0.0243078
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0181044    0.0055879    0.0306209
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0103687    0.0041348    0.0166026
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0625536    0.0227946    0.1023126
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0053860   -0.0043964    0.0151683
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0180081    0.0020295    0.0339867
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0057233   -0.0127685    0.0013219
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0071176   -0.0267420    0.0125069
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0175893   -0.0682856    0.0331069
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0153360   -0.0370335    0.0677055
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0170277   -0.0606912    0.0266359
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0220643   -0.0090036    0.0531323
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0306218   -0.0118554    0.0730990
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0297905   -0.0687644    0.0091833
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0248181   -0.0201800    0.0698162
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0633538   -0.1079175   -0.0187900
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0607257   -0.1089483   -0.0125032
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0263195   -0.0319246    0.0845636
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0206977   -0.0789584    0.0375631
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0431539   -0.0427655    0.1290732
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0297423   -0.0123216    0.0718061
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0116349   -0.0418593    0.0185896
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0289808    0.0046653    0.0532964
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0252280    0.0090233    0.0414326
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0312801    0.0132969    0.0492633
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0256463   -0.0067841    0.0580766
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0364686    0.0028167    0.0701205
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0199423   -0.0191973    0.0590820
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0533570   -0.1091696    0.0024557
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0349990    0.0160818    0.0539163
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0085614   -0.0049781    0.0221010
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0046535    0.0023457    0.0069614
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0123900    0.0068328    0.0179473
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0295841   -0.0025122    0.0616804
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0126305    0.0046016    0.0206594
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0168723   -0.0003714    0.0341160
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0318766    0.0137113    0.0500418
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0119792    0.0033907    0.0205676
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0143574   -0.0114010    0.0401158


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0453206   -0.2368200    0.1165286
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.2536607   -0.3322401    0.5818904
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1610051   -0.3050654   -0.0328469
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1114430   -0.3185084    0.0631038
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2719778   -0.2196726    0.5654438
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1611519   -0.0933449    0.3564098
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1136698   -0.2837329    0.3880493
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0300081   -0.0550122    0.1081768
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0194945   -0.0870935    0.0439010
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.1270905   -0.2368596   -0.0270632
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0895254   -0.2054383    0.0152416
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0082254   -0.0270069    0.0422491
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1251109   -0.0692111    0.2841163
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0391101   -0.0516343    0.1220243
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0294257   -0.1402268    0.0706084
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0729319   -0.0339755    0.1687857
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1416946    0.0660395    0.2112212
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0994721    0.0496124    0.1467159
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3067968   -0.0936309    0.5606098
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1579646    0.0236207    0.2738235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0298267   -0.0965851    0.0328675
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.1663536   -0.3096887   -0.0387054
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                -0.7668165   -1.2280780   -0.4010463
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.1884383    0.0783913    0.2853448
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.1129722   -0.1475738    0.3143637
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0796483    0.0238330    0.1322721
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0181421   -0.0114427    0.0468615
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1968548    0.0691440    0.3070440
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0090798   -0.0253107    0.0423167
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0517595    0.0047838    0.0965178
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3772171    0.1209202    0.5587902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0136950   -0.0156389    0.0421818
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0357871   -0.0585967    0.1217557
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1057376   -0.1564378    0.3084753
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1455469   -0.3404350    0.0210061
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0423927   -0.3804202    0.2128610
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1272860   -0.2696766    0.4001388
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0602006   -0.0453715    0.1551109
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.1285015   -0.2268540   -0.0380336
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                -0.2470881   -0.4265977   -0.0901663
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0342785   -0.1186612    0.1663087
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1196551   -0.0617486    0.2700653
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0918811   -0.3877413    0.4057395
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0616950   -0.1768369    0.0421815
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1663295   -0.2966688   -0.0490916
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0335957   -0.0947204    0.1468714
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1490991    0.0430249    0.2434158
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1228114    0.0236608    0.2118928
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0243836   -0.1135705    0.1452474
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.1404553   -0.1170434    0.3385958
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.1914629   -0.1385694    0.4258302
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                 0.0614493   -0.2813057    0.3125158
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0696572    0.0162393    0.1201745
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0572696    0.0222373    0.0910466
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2502142    0.0756301    0.3918249
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0213879   -0.0182363    0.0594701
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0764529    0.0061435    0.1417883
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0313940   -0.0706269    0.0064012
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0644455   -0.2583293    0.0995647
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0959418   -0.4075724    0.1466951
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0563118   -0.1568658    0.2302068
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1111530   -0.4373781    0.1410326
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.3504335   -0.3363012    0.6842503
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.2203069   -0.1460583    0.4695546
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2807186   -0.6888564    0.0287865
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0935065   -0.0926703    0.2479612
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.2045279   -0.3533095   -0.0721031
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.1836464   -0.3392931   -0.0460883
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0720653   -0.1020409    0.2186652
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0764221   -0.3224364    0.1238258
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1111212   -0.1404985    0.3072280
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1011986   -0.0538240    0.2334165
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0722771   -0.2772423    0.0997963
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2203749    0.0160229    0.3822872
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1571297    0.0508217    0.2515311
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0986692    0.0401620    0.1536101
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3088701   -0.1867851    0.5975173
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1579646    0.0236207    0.2738235
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0421720   -0.0443457    0.1215222
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.1386181   -0.2976690    0.0009384
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.2099942    0.0899284    0.3142197
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.2147694   -0.1998050    0.4860939
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.5623024    0.1736620    0.7681588
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1318398    0.0710923    0.1886145
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1714729   -0.0351355    0.3368433
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1028972    0.0352999    0.1657578
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0632767   -0.0036418    0.1257333
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4114068    0.1507826    0.5920457
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0725279    0.0193363    0.1228343
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0557175   -0.0499559    0.1507553
