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
![](/tmp/d084cc51-5c7a-425c-b50a-f328b6514823/d6eec330-221c-4601-9370-958701571c43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d084cc51-5c7a-425c-b50a-f328b6514823/d6eec330-221c-4601-9370-958701571c43/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3458153   0.2640699   0.4275607
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.0618369   0.0171517   0.1065221
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5319800   0.4417869   0.6221731
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3121356   0.2318029   0.3924683
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0638083   0.0235480   0.1040685
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1647065   0.1065026   0.2229104
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1079896   0.0540273   0.1619518
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.6398359   0.5706247   0.7090471
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6502719   0.5875846   0.7129591
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.5466211   0.4731854   0.6200568
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.6624012   0.5858094   0.7389930
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3791449   0.2975189   0.4607710
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.4404819   0.3108233   0.5701406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4597512   0.4027239   0.5167784
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4024705   0.3522900   0.4526509
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3065242   0.2601046   0.3529439
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2026884   0.1797690   0.2256077
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3367213   0.3120305   0.3614121
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0685215   0.0292657   0.1077773
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1943971   0.1692861   0.2195082
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6395988   0.5859755   0.6932220
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.5325605   0.4489159   0.6162051
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                0.1989957   0.0981812   0.2998102
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1534452   0.1277395   0.1791509
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.0697133   0.0459715   0.0934552
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2441286   0.1505238   0.3377335
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2304588   0.2207073   0.2402104
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2582793   0.2088870   0.3076717
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3337055   0.3182542   0.3491569
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3828745   0.3576685   0.4080806
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0501079   0.0292071   0.0710087
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2606740   0.2493184   0.2720295
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3069286   0.2651464   0.3487109
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2045704   0.1341288   0.2750120
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3665459   0.2839316   0.4491601
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2577541   0.1801950   0.3353132
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.0893951   0.0446359   0.1341542
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4858901   0.4131471   0.5586332
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.5848892   0.5144192   0.6553592
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.3323084   0.2625364   0.4020804
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4055282   0.3224742   0.4885823
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1943619   0.1636314   0.2250923
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.1499714   0.0575164   0.2424265
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4031247   0.3480813   0.4581682
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3006924   0.2526658   0.3487191
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2684151   0.2238514   0.3129787
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1183884   0.0999628   0.1368141
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1394422   0.1196164   0.1592680
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.3302973   0.2746558   0.3859387
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.1558420   0.0979747   0.2137093
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.0399720   0.0222839   0.0576601
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                0.0643674   0.0375844   0.0911505
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2420796   0.1478119   0.3363473
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1706259   0.1618937   0.1793581
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1880492   0.1382544   0.2378439
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2465072   0.2325638   0.2604507
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2173016   0.1959184   0.2386848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1801762   0.1695236   0.1908287
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1296716   0.0998663   0.1594769
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1674253   0.0995538   0.2352968
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2539911   0.1781308   0.3298513
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1733580   0.1064271   0.2402888
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0398933   0.0049587   0.0748278
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1079449   0.0540793   0.1618105
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1658507   0.1002757   0.2314257
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2402158   0.1786705   0.3017610
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3535860   0.2847023   0.4224696
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.3715042   0.3003803   0.4426282
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3366295   0.2525942   0.4206648
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2915310   0.2297075   0.3533545
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3442086   0.2203555   0.4680617
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2643285   0.2089652   0.3196918
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1794566   0.1365650   0.2223483
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1035307   0.0723223   0.1347392
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1354228   0.1141622   0.1566833
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2862423   0.2618716   0.3106130
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0563879   0.0181281   0.0946478
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1943971   0.1692861   0.2195082
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4526693   0.3965745   0.5087641
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.4585771   0.3715096   0.5456447
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1315755   0.1072598   0.1558913
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.0311509   0.0144483   0.0478535
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0036250   0.0010646   0.0061855
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0816059   0.0742474   0.0889644
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1419049   0.1008533   0.1829566
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1101292   0.0994819   0.1207764
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2496724   0.2263834   0.2729615
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0456136   0.0255432   0.0656840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1532014   0.1413312   0.1650716
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2428668   0.2059869   0.2797466


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9565757   0.8080754   1.1323659
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.3187119   0.7444836   2.3358490
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8837166   0.7846547   0.9952849
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9210740   0.7740238   1.0960610
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.3492409   0.8122598   2.2412177
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1870377   0.9113388   1.5461412
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1353447   0.7817450   1.6488848
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9595289   0.8875692   1.0373227
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0089588   0.9459583   1.0761551
0-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           0.8954533   0.8156551   0.9830584
0-24 months   ki1000109-ResPak           PAKISTAN                       observed             optimal           0.8308556   0.7567312   0.9122407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0082936   0.9737032   1.0441129
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1351203   0.9287484   1.3873490
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0387447   0.9491764   1.1367650
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8731785   0.7975508   0.9559777
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0802884   0.9687048   1.2047251
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1654692   1.0710346   1.2682302
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.1110100   1.0526902   1.1725609
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.4362314   0.9099967   2.2667780
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1875985   1.0241922   1.3770757
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9245829   0.8701891   0.9823769
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           0.8560199   0.7674013   0.9548721
0-24 months   ki1114097-CMIN             BRAZIL                         observed             optimal           0.5067464   0.4020421   0.6387189
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.2281512   1.0816844   1.3944504
0-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.1271749   0.8713011   1.4581908
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0876834   1.0256030   1.1535217
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0185639   0.9887661   1.0492597
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2455488   1.0744644   1.4438747
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           0.9894421   0.9571389   1.0228355
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0541638   1.0044133   1.1063785
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.5918026   1.1293412   2.2436405
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0139521   0.9846461   1.0441303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0375927   0.9448549   1.1394327
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0966130   0.8498691   1.4149946
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8586676   0.7355347   1.0024136
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.6951069   0.5733546   0.8427136
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1473127   0.7897290   1.6668078
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0681875   0.9604012   1.1880707
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           0.9299239   0.8510457   1.0161128
0-6 months    ki1000109-EE               PAKISTAN                       observed             optimal           0.8156660   0.7134248   0.9325594
0-6 months    ki1000109-ResPak           PAKISTAN                       observed             optimal           0.9579831   0.8347135   1.0994570
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1359184   0.9418426   1.3699856
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1322912   0.7350417   1.7442321
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.8853666   0.8041912   0.9747359
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8599200   0.7724722   0.9572674
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9633409   0.8578543   1.0817988
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1739459   1.0438143   1.3203010
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1417787   1.0257679   1.2709099
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8951968   0.7989346   1.0030575
0-6 months    ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1795508   0.9054804   1.5365765
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.2431060   0.8822046   1.7516487
0-6 months    ki1114097-CMIN             PERU                           observed             optimal           1.0668363   0.7810258   1.4572371
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0736406   1.0161996   1.1343285
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0610936   1.0230678   1.1005327
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.3294394   1.0787584   1.6383735
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0215675   0.9818155   1.0629290
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0839559   1.0072388   1.1665164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0118110   0.9730780   1.0520857
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8517151   0.7378909   0.9830974
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0950160   0.8128575   1.4751173
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0722441   0.8726992   1.3174154
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8836714   0.6857877   1.1386543
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.5782851   0.7588354   3.2826405
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.2876582   0.8753974   1.8940698
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.6398672   0.5167885   0.7922585
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1049047   0.9167416   1.3316887
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.8760418   0.7756745   0.9893960
6-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           0.8900751   0.7811396   1.0142025
6-24 months   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.0849239   0.9121752   1.2903878
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9290036   0.7561800   1.1413255
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1282388   0.8817728   1.4435950
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1118746   0.9485796   1.3032803
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8970168   0.7588261   1.0603736
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2702203   1.0072724   1.6018105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1855836   1.0529154   1.3349680
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.1075221   1.0400756   1.1793424
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.4725226   0.8545478   2.5373919
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1875985   1.0241922   1.3770757
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0446509   0.9580398   1.1390920
6-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           0.8393803   0.7385272   0.9540059
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.2666996   1.0994342   1.4594123
6-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.2796860   0.8372927   1.9558229
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           2.2829731   1.2069405   4.3183288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1516069   1.0763077   1.2321741
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2158093   0.9718712   1.5209755
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.1145900   1.0365039   1.1985587
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0679710   0.9967739   1.1442535
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.6986564   1.1775429   2.4503852
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0781009   1.0196547   1.1398971
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0609997   0.9539346   1.1800813


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0150168   -0.0733148    0.0432812
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0197082   -0.0165069    0.0559233
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0618605   -0.1249276    0.0012067
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0246356   -0.0788777    0.0296064
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0222845   -0.0110108    0.0555797
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0308063   -0.0130342    0.0746468
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0146158   -0.0258693    0.0551010
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0258949   -0.0756730    0.0238832
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0058257   -0.0360934    0.0477448
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0571474   -0.1081284   -0.0061665
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.1120415   -0.1710086   -0.0530744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0031445   -0.0101197    0.0164087
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0595181   -0.0281444    0.1471806
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0178129   -0.0236200    0.0592458
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0510419   -0.0870733   -0.0150104
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0246103   -0.0088109    0.0580315
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0335387    0.0163330    0.0507443
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0373794    0.0192310    0.0555279
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0298912   -0.0026929    0.0624753
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0364686    0.0028167    0.0701205
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0482367   -0.0867251   -0.0097482
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0766781   -0.1342585   -0.0190978
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                -0.0981553   -0.1548565   -0.0414542
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0350087    0.0153097    0.0547077
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0088658   -0.0091705    0.0269020
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0214060    0.0087208    0.0340913
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0042782   -0.0025648    0.0111213
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0634202    0.0251315    0.1017089
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0035232   -0.0145998    0.0075534
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0207379    0.0022349    0.0392410
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0296540    0.0112892    0.0480188
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0036369   -0.0040181    0.0112920
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0115383   -0.0171040    0.0401805
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0197642   -0.0324581    0.0719865
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0518048   -0.1082238    0.0046142
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0785874   -0.1286835   -0.0284914
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0131690   -0.0204439    0.0467820
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0331316   -0.0184362    0.0846995
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.0409867   -0.0926757    0.0107022
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0612557   -0.1066472   -0.0158642
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0170390   -0.0730244    0.0389463
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0264174   -0.0156301    0.0684648
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0198399   -0.0451683    0.0848481
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0462115   -0.0848643   -0.0075587
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0421210   -0.0744582   -0.0097838
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0098399   -0.0409729    0.0212932
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0205932    0.0065751    0.0346113
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0197699    0.0047581    0.0347818
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0346162   -0.0724661    0.0032337
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0279815   -0.0135576    0.0695207
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0097174   -0.0042216    0.0236565
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                 0.0043021   -0.0157964    0.0244005
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0178269    0.0056484    0.0300054
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0104242    0.0041910    0.0166573
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0619508    0.0221396    0.1017620
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0053165   -0.0044681    0.0151012
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0182438    0.0022747    0.0342128
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0021281   -0.0049041    0.0091602
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0192283   -0.0381754   -0.0002813
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0159081   -0.0340554    0.0658716
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0183494   -0.0339622    0.0706609
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0201665   -0.0642983    0.0239653
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0230697   -0.0077519    0.0538913
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0310512   -0.0113495    0.0734520
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0597283   -0.0986034   -0.0208532
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0251998   -0.0196990    0.0700985
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0438299   -0.0877125    0.0000528
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0408376   -0.0895104    0.0078353
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0285879   -0.0297447    0.0869205
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0206977   -0.0789584    0.0375631
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0441409   -0.0405383    0.1288201
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0295716   -0.0124473    0.0715906
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0184810   -0.0484980    0.0115360
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0279761    0.0035362    0.0524160
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0251322    0.0089304    0.0413341
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0307774    0.0127806    0.0487742
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0266446   -0.0055232    0.0588123
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0364686    0.0028167    0.0701205
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0202121   -0.0189342    0.0593584
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0736565   -0.1321078   -0.0152052
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0350911    0.0161709    0.0540114
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0087125   -0.0047806    0.0222056
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0046508    0.0023356    0.0069661
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0123720    0.0068144    0.0179296
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0306244   -0.0014295    0.0626783
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0126197    0.0045914    0.0206480
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0169705   -0.0002644    0.0342054
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0318682    0.0137039    0.0500326
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0119652    0.0033805    0.0205498
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0148148   -0.0109669    0.0405965


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0453956   -0.2375083    0.1168932
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.2416843   -0.3432130    0.5718901
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1315845   -0.2744459   -0.0047375
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0856891   -0.2919499    0.0876420
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2588425   -0.2311332    0.5538140
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1575668   -0.0972868    0.3532285
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1192102   -0.2791894    0.3935295
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0421781   -0.1266728    0.0359799
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0088793   -0.0571290    0.0707659
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.1167528   -0.2260084   -0.0172336
0-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.2035786   -0.3214733   -0.0962019
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0082254   -0.0270069    0.0422491
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1190361   -0.0767178    0.2792008
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0372995   -0.0535449    0.1203107
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1452412   -0.2538387   -0.0460495
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0743213   -0.0323062    0.1699351
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1419765    0.0663234    0.2114996
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0999181    0.0500529    0.1471658
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3037334   -0.0989051    0.5588452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1579646    0.0236207    0.2738235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0815687   -0.1491755   -0.0179393
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.1681972   -0.3030992   -0.0472607
0-24 months   ki1114097-CMIN             BRAZIL                         optimal              NA                -0.9733739   -1.4873018   -0.5656341
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.1857680    0.0755160    0.2828716
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.1128262   -0.1477089    0.3142187
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0806148    0.0249638    0.1330895
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0182256   -0.0113615    0.0469471
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1971411    0.0693037    0.3074191
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0106706   -0.0447804    0.0223256
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0513808    0.0043939    0.0961502
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3717814    0.1145280    0.5542958
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0137601   -0.0155933    0.0422651
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0362307   -0.0583636    0.1223703
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0881013   -0.1766519    0.2932835
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1645950   -0.3595551    0.0024077
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.4386276   -0.7441215   -0.1866428
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1283981   -0.2662571    0.4000508
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0638348   -0.0412315    0.1582992
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.0753568   -0.1750250    0.0158573
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                -0.2259920   -0.4016894   -0.0723178
0-6 months    ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0438598   -0.1980159    0.0904601
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1196551   -0.0617486    0.2700653
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1168349   -0.3604670    0.4266818
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1294756   -0.2434853   -0.0259189
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1628989   -0.2945450   -0.0446402
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0380541   -0.1656991    0.0756136
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1481720    0.0419752    0.2425969
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1241735    0.0251206    0.2131621
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1170728   -0.2516669    0.0030482
0-6 months    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.1522196   -0.1043861    0.3492026
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.1955634   -0.1335239    0.4291093
0-6 months    ki1114097-CMIN             PERU                           optimal              NA                 0.0626491   -0.2803674    0.3137699
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0685896    0.0159414    0.1184212
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0575761    0.0225477    0.0913492
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2478032    0.0730083    0.3896386
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0211122   -0.0185213    0.0592034
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0774533    0.0071867    0.1427467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0116731   -0.0276668    0.0495071
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1741015   -0.3552139   -0.0171932
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0867714   -0.2302280    0.3220878
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0673765   -0.1458702    0.2409380
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1316424   -0.4581772    0.1217703
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.3664009   -0.3178088    0.6953672
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.2233964   -0.1423383    0.4720364
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.5628242   -0.9350277   -0.2622143
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0949446   -0.0908199    0.2490738
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.1414980   -0.2892005   -0.0107176
6-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.1235007   -0.2801810    0.0140036
6-24 months   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0782763   -0.0962806    0.2250392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0764221   -0.3224364    0.1238258
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1136628   -0.1340790    0.3072849
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1006180   -0.0542078    0.2327053
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1148063   -0.3178249    0.0569362
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2127350    0.0072199    0.3757064
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1565335    0.0502561    0.2509184
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0970835    0.0385315    0.1520698
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3208933   -0.1702096    0.6058945
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1579646    0.0236207    0.2738235
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0427424   -0.0437980    0.1221078
6-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.1913551   -0.3540463   -0.0482115
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.2105468    0.0904412    0.3147927
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.2185583   -0.1943255    0.4887063
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.5619747    0.1714588    0.7684289
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1316481    0.0708977    0.1884264
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1775026   -0.0289430    0.3425272
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1028091    0.0352183    0.1656646
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0636450   -0.0032365    0.1260678
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4112994    0.1507740    0.5919009
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0724430    0.0192758    0.1227279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0574927   -0.0482899    0.1526008
