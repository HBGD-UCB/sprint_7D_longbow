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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        meducyrs    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4              59     200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1              41     200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2              25     200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3              75     200
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4              69     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1             233     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2             170     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3              94     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4              12     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1             253     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2             236     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3             133     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4             241     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1             178     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2              51     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3             250     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4             951   20022
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1            7820   20022
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2            4560   20022
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3            6691   20022
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4               1     763
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1             723     763
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2              13     763
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3              26     763
0-3 months     ki1119695-PROBIT           BELARUS                        Q4            2081   12745
0-3 months     ki1119695-PROBIT           BELARUS                        Q1              27   12745
0-3 months     ki1119695-PROBIT           BELARUS                        Q2             454   12745
0-3 months     ki1119695-PROBIT           BELARUS                        Q3           10183   12745
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Q4              60     179
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Q1              40     179
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Q2              34     179
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Q3              45     179
0-3 months     ki1135781-COHORTS          GUATEMALA                      Q1             571     723
0-3 months     ki1135781-COHORTS          GUATEMALA                      Q2             134     723
0-3 months     ki1135781-COHORTS          GUATEMALA                      Q3              18     723
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4              48     175
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1              26     175
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2              43     175
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3              58     175
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Q4               6      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Q1              14      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Q2              24      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Q3              43      87
0-3 months     ki1000108-IRC              INDIA                          Q4              10     377
0-3 months     ki1000108-IRC              INDIA                          Q1             172     377
0-3 months     ki1000108-IRC              INDIA                          Q2              97     377
0-3 months     ki1000108-IRC              INDIA                          Q3              98     377
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q4              28    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q1             566    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q2             353    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Q3             221    1168
0-3 months     ki1135781-COHORTS          INDIA                          Q4            1716    5090
0-3 months     ki1135781-COHORTS          INDIA                          Q1            1719    5090
0-3 months     ki1135781-COHORTS          INDIA                          Q2             853    5090
0-3 months     ki1135781-COHORTS          INDIA                          Q3             802    5090
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4              13     161
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1              22     161
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2              48     161
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3              78     161
0-3 months     ki1000109-EE               PAKISTAN                       Q4               4     295
0-3 months     ki1000109-EE               PAKISTAN                       Q1             258     295
0-3 months     ki1000109-EE               PAKISTAN                       Q2              24     295
0-3 months     ki1000109-EE               PAKISTAN                       Q3               9     295
0-3 months     ki0047075b-MAL-ED          PERU                           Q4              81     270
0-3 months     ki0047075b-MAL-ED          PERU                           Q1              58     270
0-3 months     ki0047075b-MAL-ED          PERU                           Q2              61     270
0-3 months     ki0047075b-MAL-ED          PERU                           Q3              70     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4              62     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              48     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2              68     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3              51     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               2     190
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1              28     190
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2              30     190
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3             130     190
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4            4872    7850
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1             128    7850
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2             235    7850
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3            2615    7850
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4              57     189
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1              37     189
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2              24     189
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3              71     189
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4              63     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1             219     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2             157     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3              84     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4              12     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1             227     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2             213     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3             122     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4             233     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1             170     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2              50     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3             242     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q4             783   12568
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q1            4391   12568
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q2            2876   12568
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Q3            4518   12568
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4               1     756
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1             716     756
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2              12     756
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3              27     756
3-6 months     ki1119695-PROBIT           BELARUS                        Q4            2238   13309
3-6 months     ki1119695-PROBIT           BELARUS                        Q1              27   13309
3-6 months     ki1119695-PROBIT           BELARUS                        Q2             514   13309
3-6 months     ki1119695-PROBIT           BELARUS                        Q3           10530   13309
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Q4              71     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Q1              44     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Q2              38     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Q3              54     207
3-6 months     ki1135781-COHORTS          GUATEMALA                      Q1             637     798
3-6 months     ki1135781-COHORTS          GUATEMALA                      Q2             142     798
3-6 months     ki1135781-COHORTS          GUATEMALA                      Q3              19     798
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4              56     201
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1              30     201
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2              49     201
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3              66     201
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Q4              19     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Q1              85     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Q2              90     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Q3             113     307
3-6 months     ki1000108-IRC              INDIA                          Q4              11     397
3-6 months     ki1000108-IRC              INDIA                          Q1             177     397
3-6 months     ki1000108-IRC              INDIA                          Q2             102     397
3-6 months     ki1000108-IRC              INDIA                          Q3             107     397
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q4              29    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q1             549    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q2             325    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Q3             221    1124
3-6 months     ki1135781-COHORTS          INDIA                          Q4            1780    5145
3-6 months     ki1135781-COHORTS          INDIA                          Q1            1711    5145
3-6 months     ki1135781-COHORTS          INDIA                          Q2             848    5145
3-6 months     ki1135781-COHORTS          INDIA                          Q3             806    5145
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4              19     218
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1              30     218
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2              63     218
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3             106     218
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q4              57     468
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q1             337     468
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q2              37     468
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Q3              37     468
3-6 months     ki1000109-EE               PAKISTAN                       Q4               4     329
3-6 months     ki1000109-EE               PAKISTAN                       Q1             284     329
3-6 months     ki1000109-EE               PAKISTAN                       Q2              30     329
3-6 months     ki1000109-EE               PAKISTAN                       Q3              11     329
3-6 months     ki0047075b-MAL-ED          PERU                           Q4              81     266
3-6 months     ki0047075b-MAL-ED          PERU                           Q1              58     266
3-6 months     ki0047075b-MAL-ED          PERU                           Q2              60     266
3-6 months     ki0047075b-MAL-ED          PERU                           Q3              67     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4              67     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              51     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2              68     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3              55     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               3     198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1              30     198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2              32     198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3             133     198
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4               4    1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1              48    1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2            1542    1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3              62    1656
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q4            3664    5878
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q1              99    5878
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q2             174    5878
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Q3            1941    5878
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4              53     182
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1              37     182
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2              23     182
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3              69     182
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4              62     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1             200     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2             143     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3              77     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4               9     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1             213     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2             209     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3             114     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4             231     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1             162     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2              52     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3             231     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4             577    9830
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1            3442    9830
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2            2240    9830
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3            3571    9830
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4              10    1359
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1            1272    1359
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2              34    1359
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3              43    1359
6-12 months    ki1119695-PROBIT           BELARUS                        Q4            2149   12896
6-12 months    ki1119695-PROBIT           BELARUS                        Q1              26   12896
6-12 months    ki1119695-PROBIT           BELARUS                        Q2             484   12896
6-12 months    ki1119695-PROBIT           BELARUS                        Q3           10237   12896
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Q4              67     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Q1              40     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Q2              35     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Q3              51     193
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4              78     180
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1              30     180
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2              47     180
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3              25     180
6-12 months    ki1135781-COHORTS          GUATEMALA                      Q4               1     856
6-12 months    ki1135781-COHORTS          GUATEMALA                      Q1             689     856
6-12 months    ki1135781-COHORTS          GUATEMALA                      Q2             144     856
6-12 months    ki1135781-COHORTS          GUATEMALA                      Q3              22     856
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4              56     196
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1              30     196
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2              47     196
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3              63     196
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4              17     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1              94     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2              94     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3             118     323
6-12 months    ki1000108-IRC              INDIA                          Q4              11     400
6-12 months    ki1000108-IRC              INDIA                          Q1             179     400
6-12 months    ki1000108-IRC              INDIA                          Q2             101     400
6-12 months    ki1000108-IRC              INDIA                          Q3             109     400
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q4              28    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q1             542    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q2             351    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Q3             216    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4              13     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1             271     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2              30     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3              18     332
6-12 months    ki1135781-COHORTS          INDIA                          Q4            1496    4183
6-12 months    ki1135781-COHORTS          INDIA                          Q1            1318    4183
6-12 months    ki1135781-COHORTS          INDIA                          Q2             693    4183
6-12 months    ki1135781-COHORTS          INDIA                          Q3             676    4183
6-12 months    ki1148112-LCNI-5           MALAWI                         Q4               1     429
6-12 months    ki1148112-LCNI-5           MALAWI                         Q1             302     429
6-12 months    ki1148112-LCNI-5           MALAWI                         Q2             115     429
6-12 months    ki1148112-LCNI-5           MALAWI                         Q3              11     429
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4              20     216
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1              30     216
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2              62     216
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3             104     216
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q4              54     472
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q1             338     472
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q2              40     472
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Q3              40     472
6-12 months    ki1000109-EE               PAKISTAN                       Q1               2       4
6-12 months    ki1000109-EE               PAKISTAN                       Q3               2       4
6-12 months    ki0047075b-MAL-ED          PERU                           Q4              72     236
6-12 months    ki0047075b-MAL-ED          PERU                           Q1              54     236
6-12 months    ki0047075b-MAL-ED          PERU                           Q2              51     236
6-12 months    ki0047075b-MAL-ED          PERU                           Q3              59     236
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q4             712    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q1             541    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q2             208    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Q3             958    2419
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4              64     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              49     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2              67     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3              52     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               3     184
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1              29     184
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2              29     184
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3             123     184
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4               4    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1              29    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2             999    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3              46    1078
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4            2836    4565
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1              89    4565
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2             147    4565
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3            1493    4565
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4              50     167
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1              36     167
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2              20     167
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3              61     167
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4              58     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1             172     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2             122     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3              69     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4               9     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1             177     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2             182     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3              90     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4             185     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1             107     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2              32     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3             171     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4             223    4646
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1            1669    4646
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2            1050    4646
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3            1704    4646
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4              11    1550
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1            1441    1550
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2              44    1550
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3              54    1550
12-24 months   ki1119695-PROBIT           BELARUS                        Q4             411    2533
12-24 months   ki1119695-PROBIT           BELARUS                        Q2              65    2533
12-24 months   ki1119695-PROBIT           BELARUS                        Q3            2057    2533
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q4              62     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1              31     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2              25     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3              46     164
12-24 months   ki1135781-COHORTS          GUATEMALA                      Q4               2     871
12-24 months   ki1135781-COHORTS          GUATEMALA                      Q1             699     871
12-24 months   ki1135781-COHORTS          GUATEMALA                      Q2             145     871
12-24 months   ki1135781-COHORTS          GUATEMALA                      Q3              25     871
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4              55     197
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1              31     197
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2              48     197
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3              63     197
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4              16     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1              89     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2              98     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3             121     324
12-24 months   ki1000108-IRC              INDIA                          Q4              11     396
12-24 months   ki1000108-IRC              INDIA                          Q1             179     396
12-24 months   ki1000108-IRC              INDIA                          Q2             100     396
12-24 months   ki1000108-IRC              INDIA                          Q3             106     396
12-24 months   ki1135781-COHORTS          INDIA                          Q4            1287    3528
12-24 months   ki1135781-COHORTS          INDIA                          Q1            1072    3528
12-24 months   ki1135781-COHORTS          INDIA                          Q2             587    3528
12-24 months   ki1135781-COHORTS          INDIA                          Q3             582    3528
12-24 months   ki1148112-LCNI-5           MALAWI                         Q1             207     306
12-24 months   ki1148112-LCNI-5           MALAWI                         Q2              90     306
12-24 months   ki1148112-LCNI-5           MALAWI                         Q3               9     306
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4              18     212
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1              30     212
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2              61     212
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3             103     212
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q4              39     365
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q1             260     365
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q2              28     365
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Q3              38     365
12-24 months   ki0047075b-MAL-ED          PERU                           Q4              56     190
12-24 months   ki0047075b-MAL-ED          PERU                           Q1              43     190
12-24 months   ki0047075b-MAL-ED          PERU                           Q2              47     190
12-24 months   ki0047075b-MAL-ED          PERU                           Q3              44     190
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q4             666    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q1             505    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q2             199    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Q3             890    2260
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4              64     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              51     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2              67     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3              48     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               3     168
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1              25     168
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2              25     168
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3             115     168
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2               1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3               1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4             164     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1               6     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2              16     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3             117     303


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
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/36b6ed68-f01d-4168-9459-1794125c4793/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/36b6ed68-f01d-4168-9459-1794125c4793/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                3.8760118   3.7980290   3.9539945
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                3.7385385   3.6529354   3.8241416
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                4.1415737   4.0576253   4.2255221
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                3.7791519   3.7072390   3.8510648
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q4                   NA                4.4451888   4.3097992   4.5805783
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q1                   NA                4.7256905   4.5308042   4.9205768
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q2                   NA                4.5072328   4.3227438   4.6917217
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q3                   NA                4.5248068   4.3829188   4.6666947
0-3 months     ki0047075b-MAL-ED          INDIA          Q4                   NA                4.0358641   3.8969229   4.1748054
0-3 months     ki0047075b-MAL-ED          INDIA          Q1                   NA                4.0211422   3.9226902   4.1195942
0-3 months     ki0047075b-MAL-ED          INDIA          Q2                   NA                3.7980850   3.6715123   3.9246577
0-3 months     ki0047075b-MAL-ED          INDIA          Q3                   NA                3.9171859   3.7744086   4.0599631
0-3 months     ki0047075b-MAL-ED          NEPAL          Q4                   NA                3.5179856   3.4448643   3.5911070
0-3 months     ki0047075b-MAL-ED          NEPAL          Q1                   NA                3.6020997   3.5374631   3.6667363
0-3 months     ki0047075b-MAL-ED          NEPAL          Q2                   NA                3.8105115   3.7172831   3.9037398
0-3 months     ki0047075b-MAL-ED          NEPAL          Q3                   NA                3.7812657   3.6980593   3.8644722
0-3 months     ki0047075b-MAL-ED          PERU           Q4                   NA                3.4142455   3.3034937   3.5249973
0-3 months     ki0047075b-MAL-ED          PERU           Q1                   NA                3.3428311   3.2291824   3.4564799
0-3 months     ki0047075b-MAL-ED          PERU           Q2                   NA                3.2268103   3.0940022   3.3596184
0-3 months     ki0047075b-MAL-ED          PERU           Q3                   NA                3.2698122   3.1340663   3.4055581
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                3.6534510   3.5302505   3.7766514
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                3.4745850   3.3169439   3.6322261
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                3.5282239   3.3907039   3.6657440
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                3.4992237   3.3757803   3.6226671
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                3.7781402   3.3047234   4.2515570
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                3.7023765   3.2509778   4.1537752
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                3.1680321   2.6824970   3.6535673
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                3.6281950   3.3276248   3.9287652
0-3 months     ki1000108-IRC              INDIA          Q4                   NA                4.2582381   3.9202137   4.5962624
0-3 months     ki1000108-IRC              INDIA          Q1                   NA                3.1787222   3.0365547   3.3208898
0-3 months     ki1000108-IRC              INDIA          Q2                   NA                3.0418788   2.8583309   3.2254267
0-3 months     ki1000108-IRC              INDIA          Q3                   NA                3.3938104   3.2386552   3.5489657
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                4.1753493   4.1361367   4.2145620
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                3.5373377   3.5133178   3.5613576
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                3.6395341   3.6024376   3.6766306
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                3.8183061   3.7685305   3.8680818
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                3.2689158   3.1751093   3.3627223
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                3.2741797   3.2033322   3.3450272
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                3.3440045   3.2612019   3.4268071
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                3.3745700   3.2761015   3.4730385
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                2.8172052   2.7881762   2.8462342
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                3.3950182   3.3442428   3.4457936
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                3.4562555   3.4046483   3.5078627
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                3.5316241   3.4703461   3.5929021
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                3.4044295   3.3551929   3.4536660
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                3.5461975   3.4919903   3.6004048
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                3.3274557   3.2381882   3.4167231
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                3.3668270   3.3126692   3.4209849
0-3 months     ki1119695-PROBIT           BELARUS        Q4                   NA                2.8805141   2.7880772   2.9729510
0-3 months     ki1119695-PROBIT           BELARUS        Q1                   NA                2.6691251   2.6296139   2.7086363
0-3 months     ki1119695-PROBIT           BELARUS        Q2                   NA                2.7671757   2.6814216   2.8529298
0-3 months     ki1119695-PROBIT           BELARUS        Q3                   NA                2.8283738   2.7135721   2.9431756
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                3.4006325   3.3760727   3.4251924
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                3.5152335   3.4462672   3.5841997
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                3.4225292   3.3599721   3.4850864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                3.3706952   3.3376553   3.4037351
0-3 months     ki1135781-COHORTS          GUATEMALA      Q1                   NA                2.6563603   2.6112382   2.7014824
0-3 months     ki1135781-COHORTS          GUATEMALA      Q2                   NA                3.4803759   3.4112878   3.5494640
0-3 months     ki1135781-COHORTS          GUATEMALA      Q3                   NA                5.1851236   5.1389164   5.2313308
0-3 months     ki1135781-COHORTS          INDIA          Q4                   NA                3.6612375   3.6388325   3.6836425
0-3 months     ki1135781-COHORTS          INDIA          Q1                   NA                3.4366538   3.4116002   3.4617075
0-3 months     ki1135781-COHORTS          INDIA          Q2                   NA                3.4769592   3.4462628   3.5076557
0-3 months     ki1135781-COHORTS          INDIA          Q3                   NA                3.5710529   3.5392943   3.6028115
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                3.9268094   3.9041107   3.9495082
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                3.6914542   3.6753048   3.7076036
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                3.7154104   3.6993319   3.7314890
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                3.7560180   3.7421725   3.7698636
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                2.0747450   2.0114417   2.1380482
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                2.1351026   2.0738928   2.1963125
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                2.2314138   2.1576740   2.3051535
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                1.9031958   1.8450934   1.9612983
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q4                   NA                1.9456946   1.8203352   2.0710539
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q1                   NA                1.8966892   1.7500796   2.0432987
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q2                   NA                1.9009691   1.7439706   2.0579675
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q3                   NA                1.9775663   1.8523378   2.1027948
3-6 months     ki0047075b-MAL-ED          INDIA          Q4                   NA                1.4189973   1.3203273   1.5176673
3-6 months     ki0047075b-MAL-ED          INDIA          Q1                   NA                1.2217436   1.1285958   1.3148913
3-6 months     ki0047075b-MAL-ED          INDIA          Q2                   NA                1.3963305   1.2796540   1.5130071
3-6 months     ki0047075b-MAL-ED          INDIA          Q3                   NA                1.6117747   1.5065874   1.7169620
3-6 months     ki0047075b-MAL-ED          NEPAL          Q4                   NA                1.3562026   1.2901988   1.4222064
3-6 months     ki0047075b-MAL-ED          NEPAL          Q1                   NA                1.5418577   1.4786792   1.6050361
3-6 months     ki0047075b-MAL-ED          NEPAL          Q2                   NA                1.7175350   1.6541309   1.7809391
3-6 months     ki0047075b-MAL-ED          NEPAL          Q3                   NA                1.8945054   1.8272134   1.9617975
3-6 months     ki0047075b-MAL-ED          PERU           Q4                   NA                1.9500836   1.8537670   2.0464001
3-6 months     ki0047075b-MAL-ED          PERU           Q1                   NA                1.9990061   1.9096326   2.0883796
3-6 months     ki0047075b-MAL-ED          PERU           Q2                   NA                2.0912643   1.9806590   2.2018697
3-6 months     ki0047075b-MAL-ED          PERU           Q3                   NA                2.0437016   1.9340463   2.1533569
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                1.7729347   1.6627564   1.8831130
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                1.4470863   1.3121444   1.5820282
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                1.7893202   1.6845680   1.8940724
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                1.8945651   1.7842587   2.0048715
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                2.0985694   2.0140304   2.1831084
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                1.5714322   1.4675871   1.6752773
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                1.7865655   1.6392010   1.9339300
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                1.8271034   1.7026684   1.9515385
3-6 months     ki1000108-IRC              INDIA          Q4                   NA                0.6589107   0.4253402   0.8924813
3-6 months     ki1000108-IRC              INDIA          Q1                   NA                1.8431182   1.7565991   1.9296373
3-6 months     ki1000108-IRC              INDIA          Q2                   NA                1.8907655   1.7669603   2.0145708
3-6 months     ki1000108-IRC              INDIA          Q3                   NA                1.7649622   1.6542723   1.8756520
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                1.8923509   1.8639119   1.9207899
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                1.9247935   1.8781356   1.9714513
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                1.8856809   1.8347575   1.9366043
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                2.1004911   2.0702977   2.1306846
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                2.1334652   2.0697006   2.1972298
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                1.8166380   1.7544117   1.8788644
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                1.8899690   1.8180147   1.9619234
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                2.0289700   1.9426834   2.1152566
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                2.9044306   2.8788953   2.9299659
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                1.9827469   1.9364066   2.0290872
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                2.0230692   1.9747967   2.0713417
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                2.0449920   1.9822775   2.1077065
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                1.9960080   1.9520712   2.0399449
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                1.9445915   1.9019694   1.9872136
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                1.9528208   1.8964027   2.0092390
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                1.9373118   1.8891319   1.9854917
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q4                   NA                1.8837799   1.8143347   1.9532251
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q1                   NA                1.7083919   1.6631231   1.7536607
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q2                   NA                1.8571371   1.7648180   1.9494561
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q3                   NA                1.6517521   1.5705512   1.7329529
3-6 months     ki1119695-PROBIT           BELARUS        Q4                   NA                2.1115431   2.0627287   2.1603575
3-6 months     ki1119695-PROBIT           BELARUS        Q1                   NA                1.9001126   1.8758562   1.9243691
3-6 months     ki1119695-PROBIT           BELARUS        Q2                   NA                2.0446041   1.9873317   2.1018764
3-6 months     ki1119695-PROBIT           BELARUS        Q3                   NA                2.0938329   2.0528099   2.1348558
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                1.9825963   1.9590054   2.0061872
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                1.8461749   1.7951975   1.8971522
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                1.9001219   1.8340457   1.9661980
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                1.9329965   1.9017191   1.9642739
3-6 months     ki1135781-COHORTS          GUATEMALA      Q1                   NA                1.7945293   1.7630041   1.8260546
3-6 months     ki1135781-COHORTS          GUATEMALA      Q2                   NA                2.1925036   2.1517299   2.2332774
3-6 months     ki1135781-COHORTS          GUATEMALA      Q3                   NA                0.5380876   0.5184764   0.5576987
3-6 months     ki1135781-COHORTS          INDIA          Q4                   NA                1.9177131   1.8977226   1.9377036
3-6 months     ki1135781-COHORTS          INDIA          Q1                   NA                1.7638920   1.7429429   1.7848410
3-6 months     ki1135781-COHORTS          INDIA          Q2                   NA                1.8419006   1.8139921   1.8698091
3-6 months     ki1135781-COHORTS          INDIA          Q3                   NA                1.8671042   1.8392363   1.8949722
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                1.9999960   1.9767120   2.0232801
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                1.9135867   1.8978589   1.9293144
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                1.9138308   1.8948673   1.9327944
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                1.9171792   1.9020179   1.9323405
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                1.0354378   0.9999697   1.0709059
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.9134975   0.8831666   0.9438283
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.8446851   0.8145515   0.8748186
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                1.0659197   1.0348788   1.0969606
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                1.3699117   1.3211613   1.4186622
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q1                   NA                1.1762525   1.1362264   1.2162786
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q2                   NA                1.2814312   1.2386592   1.3242032
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q3                   NA                1.3491774   1.3038471   1.3945076
6-12 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                1.1118046   1.0648726   1.1587365
6-12 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                1.0874434   1.0328605   1.1420262
6-12 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                1.1537709   1.0942394   1.2133023
6-12 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                1.0899059   1.0444219   1.1353898
6-12 months    ki0047075b-MAL-ED          NEPAL          Q4                   NA                1.4979157   1.4612813   1.5345501
6-12 months    ki0047075b-MAL-ED          NEPAL          Q1                   NA                1.5004182   1.4621220   1.5387143
6-12 months    ki0047075b-MAL-ED          NEPAL          Q2                   NA                1.2937166   1.2614481   1.3259850
6-12 months    ki0047075b-MAL-ED          NEPAL          Q3                   NA                1.2428474   1.2136791   1.2720157
6-12 months    ki0047075b-MAL-ED          PERU           Q4                   NA                1.2514555   1.2075562   1.2953548
6-12 months    ki0047075b-MAL-ED          PERU           Q1                   NA                1.2248511   1.1804417   1.2692605
6-12 months    ki0047075b-MAL-ED          PERU           Q2                   NA                1.2332099   1.1852198   1.2811999
6-12 months    ki0047075b-MAL-ED          PERU           Q3                   NA                1.2243791   1.1878746   1.2608835
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                1.0684138   1.0228971   1.1139305
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.9273210   0.8834862   0.9711558
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                1.0459191   0.9963957   1.0954426
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                1.0092557   0.9595299   1.0589814
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                1.3435717   1.1947395   1.4924040
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                1.1540765   1.0858810   1.2222720
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                1.0778102   1.0066683   1.1489522
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                1.0361573   0.9712806   1.1010340
6-12 months    ki1000108-IRC              INDIA          Q4                   NA                1.4442584   1.4164073   1.4721095
6-12 months    ki1000108-IRC              INDIA          Q1                   NA                1.2197178   1.1785440   1.2608916
6-12 months    ki1000108-IRC              INDIA          Q2                   NA                1.2402067   1.1964750   1.2839384
6-12 months    ki1000108-IRC              INDIA          Q3                   NA                1.2779783   1.2260521   1.3299045
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                1.1078769   1.0919696   1.1237842
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                1.0406896   1.0154886   1.0658905
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                1.1330080   1.1147334   1.1512827
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                1.0854003   1.0640003   1.1068002
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.8264481   0.7832928   0.8696034
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                1.0189949   0.9354452   1.1025445
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                1.0781248   0.9435098   1.2127397
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.9947223   0.9016887   1.0877558
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                1.2846336   1.2363401   1.3329270
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                1.1263792   1.0962168   1.1565415
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                1.1822184   1.1500277   1.2144091
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                1.2115710   1.1679492   1.2551929
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                1.8069772   1.7967759   1.8171785
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                1.1292373   1.1068188   1.1516559
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                1.1618911   1.1388654   1.1849169
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                1.2747753   1.2521951   1.2973556
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                1.2545743   1.2297653   1.2793832
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                1.2016645   1.1764932   1.2268357
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                1.2702286   1.2440886   1.2963685
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                1.2375706   1.2143503   1.2607910
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                1.1535401   1.1174096   1.1896706
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                1.0863773   1.0414457   1.1313088
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                1.1104128   1.0711717   1.1496539
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                1.1389971   1.0871859   1.1908082
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                1.1652258   1.1292400   1.2012117
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                1.1636173   1.1395164   1.1877182
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                1.0750360   1.0317197   1.1183523
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                1.2205636   1.1692944   1.2718328
6-12 months    ki1119695-PROBIT           BELARUS        Q4                   NA                1.4730961   1.4442869   1.5019054
6-12 months    ki1119695-PROBIT           BELARUS        Q1                   NA                1.4080165   1.4011292   1.4149038
6-12 months    ki1119695-PROBIT           BELARUS        Q2                   NA                1.5185760   1.4719934   1.5651586
6-12 months    ki1119695-PROBIT           BELARUS        Q3                   NA                1.4677085   1.4294218   1.5059952
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                1.2175290   1.2052673   1.2297906
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                1.2046906   1.1812716   1.2281096
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                1.2875003   1.2571274   1.3178733
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                1.1696889   1.1519174   1.1874604
6-12 months    ki1135781-COHORTS          INDIA          Q4                   NA                1.1451023   1.1319643   1.1582402
6-12 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.9847989   0.9713787   0.9982192
6-12 months    ki1135781-COHORTS          INDIA          Q2                   NA                1.0429851   1.0255471   1.0604231
6-12 months    ki1135781-COHORTS          INDIA          Q3                   NA                1.1146082   1.0963002   1.1329161
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                1.1148355   1.0978876   1.1317835
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                1.0199526   1.0020770   1.0378282
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                1.0869486   1.0597339   1.1141634
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                1.0514512   1.0350205   1.0678819
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                1.1861929   1.1734849   1.1989010
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                1.0818314   1.0730847   1.0905780
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                1.1027004   1.0913946   1.1140061
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                1.1146460   1.1048171   1.1244749
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                1.2947096   1.1467937   1.4426255
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                1.2018778   1.1850603   1.2186954
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                1.1694875   1.0743741   1.2646009
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                1.2373426   1.1563270   1.3183583
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.7467164   0.7218553   0.7715774
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.6907606   0.6675325   0.7139886
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.6324678   0.6112054   0.6537302
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.7733894   0.7479224   0.7988565
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                1.0033972   0.9609528   1.0458416
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.9859268   0.9370965   1.0347572
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.9393420   0.8820450   0.9966391
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.9756813   0.9300456   1.0213169
12-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.8926143   0.8561224   0.9291062
12-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.8045794   0.7599777   0.8491810
12-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.8354773   0.8027498   0.8682049
12-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.8238529   0.7944955   0.8532104
12-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                1.1110397   1.0925636   1.1295158
12-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                1.0137778   0.9906803   1.0368752
12-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                0.9078905   0.8818085   0.9339725
12-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                0.9067161   0.8868532   0.9265790
12-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.8769607   0.8363022   0.9176191
12-24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.8370198   0.7918955   0.8821440
12-24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.8336607   0.7962843   0.8710371
12-24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.8294703   0.7941074   0.8648331
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.8943985   0.8623808   0.9264161
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.8832468   0.8544025   0.9120910
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.8378845   0.8148819   0.8608871
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.8168483   0.7957793   0.8379172
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                1.0338723   0.9805585   1.0871861
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.7115297   0.6707788   0.7522807
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.7687347   0.7288803   0.8085890
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.7525330   0.7155401   0.7895259
12-24 months   ki1000108-IRC              INDIA          Q4                   NA                0.9810269   0.8800110   1.0820428
12-24 months   ki1000108-IRC              INDIA          Q1                   NA                0.8264161   0.7968293   0.8560029
12-24 months   ki1000108-IRC              INDIA          Q2                   NA                0.8195659   0.7809473   0.8581845
12-24 months   ki1000108-IRC              INDIA          Q3                   NA                0.8283039   0.7935609   0.8630468
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.8104873   0.7818785   0.8390961
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.7395014   0.7200319   0.7589708
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.7208448   0.6977991   0.7438906
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.7687188   0.7436929   0.7937448
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                1.2321184   1.2247115   1.2395254
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                0.8427186   0.8288222   0.8566151
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                0.8734907   0.8589576   0.8880239
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                0.9248531   0.9108062   0.9389000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.8751925   0.8601617   0.8902233
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.7545769   0.7375499   0.7716040
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.6487451   0.6344649   0.6630253
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.8336877   0.8170282   0.8503473
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.8689750   0.8319736   0.9059764
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.8284890   0.8108234   0.8461547
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.8035371   0.7733593   0.8337150
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.8324740   0.7972870   0.8676610
12-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                0.8645889   0.8254765   0.9037014
12-24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                0.8628667   0.8340996   0.8916338
12-24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                0.8566801   0.8031602   0.9102001
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.7283221   0.6987966   0.7578475
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.5249913   0.5065823   0.5434002
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.7988350   0.7621323   0.8355377
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.6784786   0.6452203   0.7117370
12-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.8760117   0.8681766   0.8838468
12-24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.7620672   0.7538186   0.7703159
12-24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.7974966   0.7873836   0.8076096
12-24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.8162437   0.8068127   0.8256748
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.7467034   0.7365368   0.7568701
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.6592909   0.6476916   0.6708901
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6515146   0.6389641   0.6640650
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6918610   0.6821635   0.7015585
12-24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                0.8361301   0.8177334   0.8545268
12-24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                0.6987256   0.6741682   0.7232829
12-24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                0.9587642   0.9488070   0.9687213
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.8256411   0.8129241   0.8383581
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.7894601   0.7826823   0.7962379
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.7876472   0.7791600   0.7961344
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.8035776   0.7963949   0.8107602
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.8854996   0.7787413   0.9922579
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.8477786   0.8401247   0.8554324
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.8679990   0.8331771   0.9028209
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.8312899   0.7969806   0.8655993


### Parameter: E(Y)


agecat         studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     NA                   NA                3.5736571   3.5090954   3.6382187
0-3 months     ki0047075b-MAL-ED          BRAZIL         NA                   NA                4.0564211   3.9546896   4.1581527
0-3 months     ki0047075b-MAL-ED          INDIA          NA                   NA                3.5965766   3.5105921   3.6825612
0-3 months     ki0047075b-MAL-ED          NEPAL          NA                   NA                3.8272755   3.7488288   3.9057221
0-3 months     ki0047075b-MAL-ED          PERU           NA                   NA                3.3191043   3.2559757   3.3822330
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000304b-SAS-CompFeed    INDIA          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth        BANGLADESH     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT           BELARUS        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                3.3701989   3.3492904   3.3911073
0-3 months     ki1135781-COHORTS          GUATEMALA      NA                   NA                2.6183056   2.5748036   2.6618075
0-3 months     ki1135781-COHORTS          INDIA          NA                   NA                3.5408199   3.5246677   3.5569722
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                3.7184940   3.7081505   3.7288375
3-6 months     ki0047075b-MAL-ED          BANGLADESH     NA                   NA                1.9420749   1.8884516   1.9956982
3-6 months     ki0047075b-MAL-ED          BRAZIL         NA                   NA                2.1462634   2.0667588   2.2257680
3-6 months     ki0047075b-MAL-ED          INDIA          NA                   NA                1.8801026   1.8162708   1.9439344
3-6 months     ki0047075b-MAL-ED          NEPAL          NA                   NA                1.9666191   1.9085872   2.0246511
3-6 months     ki0047075b-MAL-ED          PERU           NA                   NA                2.0149713   1.9493224   2.0806201
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000304b-SAS-CompFeed    INDIA          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093-NIH-Birth        BANGLADESH     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal        NEPAL          NA                   NA                1.7071786   1.6679648   1.7463924
3-6 months     ki1119695-PROBIT           BELARUS        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                1.9748551   1.9548900   1.9948201
3-6 months     ki1135781-COHORTS          GUATEMALA      NA                   NA                1.7621283   1.7313782   1.7928785
3-6 months     ki1135781-COHORTS          INDIA          NA                   NA                1.8645860   1.8511724   1.8779996
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                1.9201625   1.9096984   1.9306266
6-12 months    ki0047075b-MAL-ED          BANGLADESH     NA                   NA                1.1258416   1.0984933   1.1531898
6-12 months    ki0047075b-MAL-ED          BRAZIL         NA                   NA                1.3860209   1.3394503   1.4325915
6-12 months    ki0047075b-MAL-ED          INDIA          NA                   NA                1.1200713   1.0903748   1.1497678
6-12 months    ki0047075b-MAL-ED          NEPAL          NA                   NA                1.2300323   1.2034516   1.2566130
6-12 months    ki0047075b-MAL-ED          PERU           NA                   NA                1.2106665   1.1778231   1.2435100
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                1.1080731   1.0769747   1.1391716
6-12 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                1.1675919   1.1478830   1.1873008
6-12 months    ki1119695-PROBIT           BELARUS        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                1.1979817   1.1870549   1.2089085
6-12 months    ki1135781-COHORTS          INDIA          NA                   NA                1.0872656   1.0780837   1.0964475
6-12 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                1.1069658   1.1002169   1.1137146
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                1.2030408   1.1865251   1.2195566
12-24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.8500820   0.8321238   0.8680402
12-24 months   ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.9809352   0.9500289   1.0118414
12-24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.8859866   0.8678092   0.9041640
12-24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                0.8656368   0.8497199   0.8815537
12-24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.8462258   0.8254179   0.8670337
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.8382988   0.8227925   0.8538051
12-24 months   ki1119695-PROBIT           BELARUS        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.8223511   0.8167901   0.8279120
12-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                0.8415038   0.8246015   0.8584060
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.7967221   0.7914091   0.8020350
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.8480174   0.8406257   0.8554091


### Parameter: ATE


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.1374733   -0.2551304   -0.0198162
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.2655619    0.1497161    0.3814078
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0968599   -0.2049357    0.0112160
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                 0.2805017    0.0417863    0.5192171
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                 0.0620440   -0.1668384    0.2909263
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                 0.0796180   -0.1170597    0.2762956
0-3 months     ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0147219   -0.1862771    0.1568333
0-3 months     ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.2377791   -0.4260395   -0.0495188
0-3 months     ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.1186783   -0.3187167    0.0813602
0-3 months     ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL          Q1                   Q4                 0.0841141   -0.0077424    0.1759705
0-3 months     ki0047075b-MAL-ED          NEPAL          Q2                   Q4                 0.2925258    0.1820476    0.4030040
0-3 months     ki0047075b-MAL-ED          NEPAL          Q3                   Q4                 0.2632801    0.1605715    0.3659887
0-3 months     ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0714144   -0.2296954    0.0868667
0-3 months     ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.1874352   -0.3598850   -0.0149853
0-3 months     ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.1444333   -0.3190167    0.0301502
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.1788660   -0.3784077    0.0206757
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.1252271   -0.3095094    0.0590553
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.1542273   -0.3279443    0.0194897
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.0757637   -0.7298923    0.5783649
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.6101081   -1.2882436    0.0680275
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.1499452   -0.7107178    0.4108274
0-3 months     ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA          Q1                   Q4                -1.0795158   -1.4364099   -0.7226217
0-3 months     ki1000108-IRC              INDIA          Q2                   Q4                -1.2163593   -1.5910457   -0.8416729
0-3 months     ki1000108-IRC              INDIA          Q3                   Q4                -0.8644276   -1.2267106   -0.5021447
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                -0.6380117   -0.6819147   -0.5941086
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                -0.5358153   -0.5590892   -0.5125413
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                -0.3570432   -0.3846534   -0.3294331
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                 0.0052639   -0.1082298    0.1187576
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                 0.0750887   -0.0472541    0.1974316
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                 0.1056542   -0.0271220    0.2384303
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                 0.5778130    0.5201438    0.6354822
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                 0.6390503    0.5805796    0.6975209
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                 0.7144189    0.6473789    0.7814589
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                 0.1417681    0.0680743    0.2154619
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.0769738   -0.1791671    0.0252195
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0376024   -0.1106978    0.0354930
0-3 months     ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.2113890   -0.2754751   -0.1473029
0-3 months     ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.1133384   -0.1764720   -0.0502048
0-3 months     ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0521403   -0.0981441   -0.0061364
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                 0.1146009    0.0416712    0.1875306
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0218967   -0.0449876    0.0887809
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0299374   -0.0703968    0.0105221
0-3 months     ki1135781-COHORTS          GUATEMALA      Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA      Q2                   Q1                 0.8240156    0.7416470    0.9063842
0-3 months     ki1135781-COHORTS          GUATEMALA      Q3                   Q1                 2.5287633    2.4631711    2.5943555
0-3 months     ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA          Q1                   Q4                -0.2245837   -0.2570671   -0.1921002
0-3 months     ki1135781-COHORTS          INDIA          Q2                   Q4                -0.1842783   -0.2212257   -0.1473309
0-3 months     ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0901846   -0.1280900   -0.0522792
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.2353552   -0.2628197   -0.2078908
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.2113990   -0.2387122   -0.1840858
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.1707914   -0.1956521   -0.1459306
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                 0.0603576   -0.0281534    0.1488687
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.1566688    0.0589540    0.2543836
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.1715491   -0.2572351   -0.0858632
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.0490054   -0.2426122    0.1446014
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.0447255   -0.2456771    0.1562261
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                 0.0318717   -0.1461020    0.2098455
3-6 months     ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.1972537   -0.3337612   -0.0607463
3-6 months     ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.0226668   -0.1771622    0.1318287
3-6 months     ki0047075b-MAL-ED          INDIA          Q3                   Q4                 0.1927774    0.0470600    0.3384948
3-6 months     ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL          Q1                   Q4                 0.1856551    0.0994698    0.2718403
3-6 months     ki0047075b-MAL-ED          NEPAL          Q2                   Q4                 0.3613324    0.2790650    0.4435999
3-6 months     ki0047075b-MAL-ED          NEPAL          Q3                   Q4                 0.5383029    0.4573447    0.6192610
3-6 months     ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU           Q1                   Q4                 0.0489226   -0.0685746    0.1664197
3-6 months     ki0047075b-MAL-ED          PERU           Q2                   Q4                 0.1411808    0.0062439    0.2761177
3-6 months     ki0047075b-MAL-ED          PERU           Q3                   Q4                 0.0936181   -0.0361391    0.2233753
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.3258484   -0.5013873   -0.1503095
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                 0.0163855   -0.1367376    0.1695085
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                 0.1216304   -0.0343723    0.2776330
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.5271372   -0.6569615   -0.3973129
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.3120039   -0.4748105   -0.1491972
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.2714660   -0.4154776   -0.1274543
3-6 months     ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA          Q1                   Q4                 1.1842075    0.9355536    1.4328614
3-6 months     ki1000108-IRC              INDIA          Q2                   Q4                 1.2318548    0.9677759    1.4959337
3-6 months     ki1000108-IRC              INDIA          Q3                   Q4                 1.1060514    0.8479425    1.3641604
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                 0.0324426   -0.0263143    0.0911994
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                -0.0066700   -0.0757813    0.0624414
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                 0.2081403    0.1684884    0.2477921
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.3168272   -0.4031462   -0.2305081
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.2434961   -0.3368867   -0.1501055
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.1044952   -0.2082033   -0.0007870
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.9216837   -0.9752392   -0.8681281
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.8813614   -0.9361101   -0.8266126
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.8594385   -0.9269479   -0.7919292
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0514165   -0.1087616    0.0059285
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.0431872   -0.1113841    0.0250097
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0586962   -0.1190927    0.0017003
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.1753880   -0.2590119   -0.0917640
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0266428   -0.1412618    0.0879762
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                -0.2320278   -0.3373429   -0.1267128
3-6 months     ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.2114305   -0.2556128   -0.1672482
3-6 months     ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0669391   -0.1409549    0.0070768
3-6 months     ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0177103   -0.0566684    0.0212479
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.1364214   -0.1922480   -0.0805948
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                -0.0824744   -0.1523181   -0.0126308
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0495998   -0.0881083   -0.0110913
3-6 months     ki1135781-COHORTS          GUATEMALA      Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA      Q2                   Q1                 0.3979743    0.3466118    0.4493369
3-6 months     ki1135781-COHORTS          GUATEMALA      Q3                   Q1                -1.2564418   -1.2928963   -1.2199872
3-6 months     ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA          Q1                   Q4                -0.1538211   -0.1825659   -0.1250763
3-6 months     ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0758125   -0.1098967   -0.0417283
3-6 months     ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0506088   -0.0846149   -0.0166028
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0864094   -0.1146637   -0.0581551
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0861652   -0.1159893   -0.0563411
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0828168   -0.1095251   -0.0561086
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.1219404   -0.1695978   -0.0742829
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                -0.1907527   -0.2378406   -0.1436649
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                 0.0304819   -0.0176728    0.0786366
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.1936593   -0.2427620   -0.1445566
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.0884805   -0.1272514   -0.0497096
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0207344   -0.0605282    0.0190594
6-12 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0243612   -0.0959436    0.0472213
6-12 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                 0.0419663   -0.0335731    0.1175058
6-12 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0218987   -0.0868093    0.0430119
6-12 months    ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL          Q1                   Q4                 0.0025025   -0.0497664    0.0547713
6-12 months    ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.2041991   -0.2513976   -0.1570006
6-12 months    ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.2550683   -0.2988796   -0.2112570
6-12 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0266044   -0.0820816    0.0288727
6-12 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0182457   -0.0768560    0.0403646
6-12 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0270765   -0.0780596    0.0239067
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.1410928   -0.1971353   -0.0850504
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0224947   -0.0806483    0.0356589
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.0591582   -0.1184760    0.0001597
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.1894952   -0.3502086   -0.0287819
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.2657615   -0.4270529   -0.1044701
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.3074144   -0.4665035   -0.1483254
6-12 months    ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA          Q1                   Q4                -0.2245407   -0.2740872   -0.1749941
6-12 months    ki1000108-IRC              INDIA          Q2                   Q4                -0.2040517   -0.2558030   -0.1523003
6-12 months    ki1000108-IRC              INDIA          Q3                   Q4                -0.1662801   -0.2251118   -0.1074485
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                -0.0671873   -0.0963881   -0.0379865
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                 0.0251312   -0.0025566    0.0528189
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                -0.0224766   -0.0568548    0.0119016
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                 0.1925468    0.1072864    0.2778072
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                 0.2516767    0.1162623    0.3870911
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                 0.1682742    0.0686678    0.2678806
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.1582544   -0.2149515   -0.1015573
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.1024152   -0.1601783   -0.0446521
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0730626   -0.1379227   -0.0082025
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.6777399   -0.7022997   -0.6531800
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.6450861   -0.6702582   -0.6199140
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.5322019   -0.5570774   -0.5073264
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0529098   -0.0881486   -0.0176709
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                 0.0156543   -0.0202106    0.0515192
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0170036   -0.0508605    0.0168533
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                -0.0671629   -0.1196917   -0.0146341
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                -0.0431273   -0.0903913    0.0041366
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                -0.0145431   -0.0716777    0.0425915
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0016085   -0.0448511    0.0416340
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0901898   -0.1464687   -0.0339109
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                 0.0553378   -0.0072508    0.1179265
6-12 months    ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.0650796   -0.0940655   -0.0360938
6-12 months    ki1119695-PROBIT           BELARUS        Q2                   Q4                 0.0454798    0.0118791    0.0790806
6-12 months    ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0053876   -0.0253786    0.0146034
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0128383   -0.0390611    0.0133844
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0699714    0.0373979    0.1025448
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0478401   -0.0690751   -0.0266051
6-12 months    ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA          Q1                   Q4                -0.1603033   -0.1789659   -0.1416408
6-12 months    ki1135781-COHORTS          INDIA          Q2                   Q4                -0.1021172   -0.1238188   -0.0804157
6-12 months    ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0304941   -0.0528495   -0.0081387
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                -0.0948829   -0.1189693   -0.0707965
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                -0.0278869   -0.0596113    0.0038375
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                -0.0633843   -0.0864412   -0.0403274
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.1043616   -0.1194383   -0.0892848
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0834926   -0.1008184   -0.0661667
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0715469   -0.0873899   -0.0557040
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                -0.0928318   -0.2408388    0.0551752
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                -0.1252221   -0.3006361    0.0501919
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                -0.0573670   -0.2256889    0.1109548
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0559558   -0.0912357   -0.0206759
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                -0.1142485   -0.1477404   -0.0807567
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                 0.0266731   -0.0102901    0.0636363
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.0174704   -0.0761909    0.0412501
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.0640552   -0.1314105    0.0033002
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0277160   -0.0826319    0.0272000
12-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0880350   -0.1453376   -0.0307323
12-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.0571370   -0.1060725   -0.0082015
12-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0687614   -0.1155007   -0.0220221
12-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.0972619   -0.1270813   -0.0674425
12-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.2031492   -0.2354572   -0.1708411
12-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.2043236   -0.2318059   -0.1768413
12-24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0399409   -0.0999182    0.0200364
12-24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0433000   -0.0983008    0.0117008
12-24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0474904   -0.1009395    0.0059586
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.0111517   -0.0542495    0.0319462
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0565140   -0.0959570   -0.0170710
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.0775502   -0.1159038   -0.0391966
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.3223426   -0.3891962   -0.2554890
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.2651377   -0.3316685   -0.1986068
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.2813393   -0.3460840   -0.2165947
12-24 months   ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA          Q1                   Q4                -0.1546108   -0.2598714   -0.0493503
12-24 months   ki1000108-IRC              INDIA          Q2                   Q4                -0.1614611   -0.2696152   -0.0533070
12-24 months   ki1000108-IRC              INDIA          Q3                   Q4                -0.1527231   -0.2595761   -0.0458700
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0709859   -0.1055935   -0.0363784
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.0896425   -0.1263831   -0.0529018
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0417685   -0.0797797   -0.0037572
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.3893998   -0.4050676   -0.3737320
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.3586277   -0.3746463   -0.3426091
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.3072654   -0.3231148   -0.2914159
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.1206156   -0.1430857   -0.0981454
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.2264474   -0.2470149   -0.2058798
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0415048   -0.0633499   -0.0196596
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0404860   -0.0815144    0.0005424
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0654379   -0.1131838   -0.0176919
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                -0.0365010   -0.0875215    0.0145195
12-24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0017222   -0.0381393    0.0346948
12-24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0079088   -0.0435847    0.0277671
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.2033308   -0.2333292   -0.1733324
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0705129    0.0273512    0.1136746
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0498434   -0.0890067   -0.0106802
12-24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                -0.1139444   -0.1252196   -0.1026693
12-24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0785151   -0.0911673   -0.0658628
12-24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0597679   -0.0718884   -0.0476475
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                -0.0874126   -0.1026221   -0.0722031
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                -0.0951889   -0.1111179   -0.0792598
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                -0.0548425   -0.0686033   -0.0410816
12-24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q1                -0.1374045   -0.1686558   -0.1061532
12-24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q1                 0.1226341    0.1015636    0.1437046
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0361810   -0.0503470   -0.0220150
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0379939   -0.0531812   -0.0228066
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0220635   -0.0360959   -0.0080312
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                -0.0377210   -0.1445049    0.0690629
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                -0.0175005   -0.1296933    0.0946922
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                -0.0542096   -0.1662743    0.0578550
