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

**Outcome Variable:** y_rate_haz

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
![](/tmp/01ee9f7e-baff-4ea5-8422-4194d16cded3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/01ee9f7e-baff-4ea5-8422-4194d16cded3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0608446    0.0242765    0.0974128
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                 0.0002685   -0.0425678    0.0431048
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                 0.2280165    0.1843982    0.2716348
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                 0.0223747   -0.0156321    0.0603815
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q4                   NA                 0.4896706    0.4209139    0.5584273
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q1                   NA                 0.7113647    0.6140869    0.8086424
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q2                   NA                 0.6468106    0.5599163    0.7337048
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q3                   NA                 0.5889502    0.5106729    0.6672276
0-3 months     ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0336067   -0.0421568    0.1093703
0-3 months     ki0047075b-MAL-ED          INDIA          Q1                   NA                -0.0744927   -0.1428289   -0.0061566
0-3 months     ki0047075b-MAL-ED          INDIA          Q2                   NA                -0.0693588   -0.1459313    0.0072138
0-3 months     ki0047075b-MAL-ED          INDIA          Q3                   NA                 0.0199250   -0.0621157    0.1019657
0-3 months     ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.1575978   -0.1959482   -0.1192473
0-3 months     ki0047075b-MAL-ED          NEPAL          Q1                   NA                -0.1305793   -0.1646598   -0.0964988
0-3 months     ki0047075b-MAL-ED          NEPAL          Q2                   NA                 0.0215142   -0.0248837    0.0679121
0-3 months     ki0047075b-MAL-ED          NEPAL          Q3                   NA                 0.0201592   -0.0197131    0.0600314
0-3 months     ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0398866   -0.0171070    0.0968802
0-3 months     ki0047075b-MAL-ED          PERU           Q1                   NA                 0.0463461   -0.0131488    0.1058409
0-3 months     ki0047075b-MAL-ED          PERU           Q2                   NA                -0.0184167   -0.0784696    0.0416361
0-3 months     ki0047075b-MAL-ED          PERU           Q3                   NA                -0.0338386   -0.1038383    0.0361611
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0213832   -0.0299024    0.0726689
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                -0.1011495   -0.1630463   -0.0392527
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                -0.0550406   -0.1093401   -0.0007411
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                -0.0605703   -0.1125937   -0.0085469
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.0115669   -0.1740712    0.1972051
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                 0.0015824   -0.2199779    0.2231427
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                -0.2225325   -0.4558144    0.0107495
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                -0.0250004   -0.1695805    0.1195796
0-3 months     ki1000108-IRC              INDIA          Q4                   NA                 0.5139161    0.3780597    0.6497724
0-3 months     ki1000108-IRC              INDIA          Q1                   NA                -0.2480414   -0.3178267   -0.1782561
0-3 months     ki1000108-IRC              INDIA          Q2                   NA                -0.3078028   -0.3988467   -0.2167589
0-3 months     ki1000108-IRC              INDIA          Q3                   NA                -0.1378986   -0.2134067   -0.0623904
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.1808642    0.1609116    0.2008167
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                -0.0262443   -0.0439545   -0.0085341
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                 0.0097674   -0.0059468    0.0254816
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                 0.0850127    0.0572968    0.1127287
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.1337123   -0.1800414   -0.0873832
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                -0.1421053   -0.1759151   -0.1082954
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                -0.0951755   -0.1357970   -0.0545540
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                -0.0807470   -0.1297141   -0.0317799
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                -0.2147030   -0.2326037   -0.1968023
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                -0.0800264   -0.1047771   -0.0552756
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                -0.0383709   -0.0635312   -0.0132107
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                -0.0015313   -0.0331506    0.0300880
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                -0.0837189   -0.1077169   -0.0597210
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                -0.0430651   -0.0677232   -0.0184071
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                -0.1144644   -0.1513108   -0.0776180
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                -0.1050418   -0.1302192   -0.0798645
0-3 months     ki1119695-PROBIT           BELARUS        Q4                   NA                -0.4157245   -0.4616843   -0.3697646
0-3 months     ki1119695-PROBIT           BELARUS        Q1                   NA                -0.4864321   -0.4920685   -0.4807958
0-3 months     ki1119695-PROBIT           BELARUS        Q2                   NA                -0.4391902   -0.4768234   -0.4015570
0-3 months     ki1119695-PROBIT           BELARUS        Q3                   NA                -0.4420538   -0.5020545   -0.3820532
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                -0.1277912   -0.1400670   -0.1155153
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                -0.1062350   -0.1412063   -0.0712637
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                -0.1232484   -0.1534566   -0.0930403
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                -0.1408726   -0.1572627   -0.1244825
0-3 months     ki1135781-COHORTS          GUATEMALA      Q1                   NA                -0.5158101   -0.5391810   -0.4924392
0-3 months     ki1135781-COHORTS          GUATEMALA      Q2                   NA                -0.1431901   -0.1767478   -0.1096324
0-3 months     ki1135781-COHORTS          GUATEMALA      Q3                   NA                 0.7602600    0.7410688    0.7794513
0-3 months     ki1135781-COHORTS          INDIA          Q4                   NA                 0.0006349   -0.0111706    0.0124405
0-3 months     ki1135781-COHORTS          INDIA          Q1                   NA                -0.1348973   -0.1481504   -0.1216441
0-3 months     ki1135781-COHORTS          INDIA          Q2                   NA                -0.1100892   -0.1262408   -0.0939376
0-3 months     ki1135781-COHORTS          INDIA          Q3                   NA                -0.0472040   -0.0635139   -0.0308942
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1682107    0.1578101    0.1786114
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                 0.0556794    0.0480503    0.0633084
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                 0.0659809    0.0583910    0.0735708
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                 0.0878063    0.0812807    0.0943320
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0738021    0.0474175    0.1001866
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                 0.1420987    0.1166834    0.1675141
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                 0.2400416    0.2097822    0.2703010
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                -0.0019207   -0.0268089    0.0229675
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0497795   -0.1069714    0.0074124
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q1                   NA                -0.0812764   -0.1457957   -0.0167571
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q2                   NA                -0.0742690   -0.1433723   -0.0051657
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q3                   NA                -0.0414087   -0.0973086    0.0144912
3-6 months     ki0047075b-MAL-ED          INDIA          Q4                   NA                -0.0703417   -0.1032663   -0.0374171
3-6 months     ki0047075b-MAL-ED          INDIA          Q1                   NA                 0.0062966   -0.0226672    0.0352604
3-6 months     ki0047075b-MAL-ED          INDIA          Q2                   NA                -0.0645640   -0.1037040   -0.0254240
3-6 months     ki0047075b-MAL-ED          INDIA          Q3                   NA                -0.0383126   -0.0717432   -0.0048820
3-6 months     ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.3565733   -0.4214514   -0.2916953
3-6 months     ki0047075b-MAL-ED          NEPAL          Q1                   NA                -0.2785151   -0.3284312   -0.2285990
3-6 months     ki0047075b-MAL-ED          NEPAL          Q2                   NA                -0.1511879   -0.1934577   -0.1089180
3-6 months     ki0047075b-MAL-ED          NEPAL          Q3                   NA                -0.0658692   -0.1056380   -0.0261004
3-6 months     ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0042368   -0.0501652    0.0416916
3-6 months     ki0047075b-MAL-ED          PERU           Q1                   NA                 0.0161355   -0.0252764    0.0575474
3-6 months     ki0047075b-MAL-ED          PERU           Q2                   NA                 0.0652565    0.0123503    0.1181628
3-6 months     ki0047075b-MAL-ED          PERU           Q3                   NA                 0.0375730   -0.0133399    0.0884858
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.1582139   -0.2064779   -0.1099499
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                -0.3360468   -0.3933680   -0.2787257
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                -0.1456510   -0.1906702   -0.1006318
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                -0.1196625   -0.1651484   -0.0741765
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.0060273   -0.0428642    0.0549188
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                -0.2252520   -0.2818154   -0.1686886
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                -0.0984309   -0.1763366   -0.0205253
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                -0.0990692   -0.1639268   -0.0342116
3-6 months     ki1000108-IRC              INDIA          Q4                   NA                -0.6050915   -0.7129642   -0.4972188
3-6 months     ki1000108-IRC              INDIA          Q1                   NA                -0.0621755   -0.1033827   -0.0209684
3-6 months     ki1000108-IRC              INDIA          Q2                   NA                -0.0299104   -0.0884227    0.0286019
3-6 months     ki1000108-IRC              INDIA          Q3                   NA                -0.1036711   -0.1560824   -0.0512598
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                -0.0317394   -0.0443991   -0.0190797
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                -0.0182186   -0.0384543    0.0020172
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                -0.0406808   -0.0639247   -0.0174369
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                 0.0488020    0.0336079    0.0639960
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1038022    0.0709441    0.1366603
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                -0.0540642   -0.0852445   -0.0228839
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                -0.0199068   -0.0552981    0.0154845
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                 0.0576703    0.0118796    0.1034610
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                 0.4354003    0.4238525    0.4469482
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                -0.0246345   -0.0463175   -0.0029515
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                -0.0004149   -0.0227936    0.0219639
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                -0.0070477   -0.0364325    0.0223372
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0284664    0.0084582    0.0484745
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                 0.0163921   -0.0035410    0.0363251
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                 0.0462870    0.0182514    0.0743227
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                 0.0039519   -0.0181482    0.0260520
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q4                   NA                -0.1100715   -0.1461730   -0.0739700
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q1                   NA                -0.1639823   -0.1859518   -0.1420128
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q2                   NA                -0.1072218   -0.1564686   -0.0579751
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q3                   NA                -0.2141074   -0.2607838   -0.1674311
3-6 months     ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0565085    0.0342605    0.0787565
3-6 months     ki1119695-PROBIT           BELARUS        Q1                   NA                -0.0295204   -0.0402926   -0.0187482
3-6 months     ki1119695-PROBIT           BELARUS        Q2                   NA                 0.0348419    0.0082064    0.0614775
3-6 months     ki1119695-PROBIT           BELARUS        Q3                   NA                 0.0483037    0.0292278    0.0673796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0023763   -0.0086663    0.0134189
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                -0.0762481   -0.1000762   -0.0524199
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                -0.0346745   -0.0681832   -0.0011659
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                -0.0206461   -0.0353257   -0.0059664
3-6 months     ki1135781-COHORTS          GUATEMALA      Q1                   NA                -0.0765075   -0.0916347   -0.0613804
3-6 months     ki1135781-COHORTS          GUATEMALA      Q2                   NA                 0.1011345    0.0815308    0.1207382
3-6 months     ki1135781-COHORTS          GUATEMALA      Q3                   NA                -0.6973706   -0.7071286   -0.6876126
3-6 months     ki1135781-COHORTS          INDIA          Q4                   NA                -0.0408136   -0.0500037   -0.0316234
3-6 months     ki1135781-COHORTS          INDIA          Q1                   NA                -0.1011157   -0.1108209   -0.0914105
3-6 months     ki1135781-COHORTS          INDIA          Q2                   NA                -0.0681054   -0.0809128   -0.0552980
3-6 months     ki1135781-COHORTS          INDIA          Q3                   NA                -0.0602056   -0.0732191   -0.0471921
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0245674    0.0135280    0.0356067
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                -0.0073091   -0.0145471   -0.0000712
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                -0.0056969   -0.0143906    0.0029968
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                -0.0050647   -0.0121083    0.0019789
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.1220226   -0.1358532   -0.1081919
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                -0.1541456   -0.1663520   -0.1419392
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                -0.1955172   -0.2072685   -0.1837659
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                -0.0992132   -0.1116111   -0.0868153
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                -0.0219932   -0.0533274    0.0093411
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q1                   NA                -0.1445284   -0.1835004   -0.1055565
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q2                   NA                -0.1270838   -0.1628499   -0.0913178
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q3                   NA                -0.0542282   -0.0871340   -0.0213225
6-12 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                -0.0808403   -0.0996744   -0.0620061
6-12 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                -0.0827537   -0.1080477   -0.0574597
6-12 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                -0.0593865   -0.0829999   -0.0357731
6-12 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                -0.0884239   -0.1063457   -0.0705022
6-12 months    ki0047075b-MAL-ED          NEPAL          Q4                   NA                 0.1001136    0.0846619    0.1155653
6-12 months    ki0047075b-MAL-ED          NEPAL          Q1                   NA                 0.0956435    0.0784148    0.1128722
6-12 months    ki0047075b-MAL-ED          NEPAL          Q2                   NA                -0.0010720   -0.0157162    0.0135723
6-12 months    ki0047075b-MAL-ED          NEPAL          Q3                   NA                -0.0327849   -0.0453623   -0.0202076
6-12 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0162036   -0.0421346    0.0097274
6-12 months    ki0047075b-MAL-ED          PERU           Q1                   NA                -0.0345022   -0.0631291   -0.0058754
6-12 months    ki0047075b-MAL-ED          PERU           Q2                   NA                -0.0291862   -0.0615600    0.0031876
6-12 months    ki0047075b-MAL-ED          PERU           Q3                   NA                -0.0274349   -0.0500294   -0.0048404
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0989087   -0.1185370   -0.0792804
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                -0.1516805   -0.1710300   -0.1323309
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                -0.1082949   -0.1301657   -0.0864242
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                -0.1250560   -0.1462682   -0.1038438
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0153753   -0.0797092    0.0489586
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                -0.0663970   -0.0952842   -0.0375097
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                -0.0971107   -0.1272119   -0.0670095
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                -0.1118770   -0.1390518   -0.0847021
6-12 months    ki1000108-IRC              INDIA          Q4                   NA                 0.0909044    0.0736405    0.1081683
6-12 months    ki1000108-IRC              INDIA          Q1                   NA                -0.0354000   -0.0543782   -0.0164217
6-12 months    ki1000108-IRC              INDIA          Q2                   NA                -0.0237367   -0.0437919   -0.0036815
6-12 months    ki1000108-IRC              INDIA          Q3                   NA                -0.0117624   -0.0356617    0.0121369
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                -0.0940498   -0.1021239   -0.0859757
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                -0.1095880   -0.1192002   -0.0999757
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                -0.0753059   -0.0830169   -0.0675949
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                -0.1071542   -0.1160724   -0.0982361
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                -0.1743368   -0.1969671   -0.1517065
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                -0.1067870   -0.1411117   -0.0724623
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                -0.0709643   -0.1539616    0.0120330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                -0.1058328   -0.1592861   -0.0523796
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.0144395   -0.0350332    0.0061543
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                -0.0661746   -0.0790385   -0.0533107
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                -0.0457054   -0.0597668   -0.0316441
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                -0.0419293   -0.0602116   -0.0236469
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                 0.1791111    0.1749765    0.1832458
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                -0.0766807   -0.0858403   -0.0675212
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                -0.0648840   -0.0742063   -0.0555618
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                -0.0228647   -0.0320952   -0.0136342
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                -0.0231285   -0.0336732   -0.0125839
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                -0.0392703   -0.0503945   -0.0281462
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                -0.0112529   -0.0239380    0.0014322
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                -0.0228555   -0.0330210   -0.0126900
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                -0.0494366   -0.0669979   -0.0318752
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                -0.0674711   -0.0901681   -0.0447741
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                -0.0704300   -0.0900554   -0.0508046
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                -0.0589167   -0.0864300   -0.0314034
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                -0.0706720   -0.0849880   -0.0563560
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                -0.0616703   -0.0715850   -0.0517556
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                -0.0996393   -0.1153772   -0.0839015
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                -0.0404745   -0.0573211   -0.0236279
6-12 months    ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0404352    0.0278836    0.0529868
6-12 months    ki1119695-PROBIT           BELARUS        Q1                   NA                 0.0177897    0.0148177    0.0207618
6-12 months    ki1119695-PROBIT           BELARUS        Q2                   NA                 0.0644674    0.0446606    0.0842741
6-12 months    ki1119695-PROBIT           BELARUS        Q3                   NA                 0.0410424    0.0245122    0.0575725
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                -0.0417024   -0.0469141   -0.0364907
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                -0.0461194   -0.0561786   -0.0360603
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                -0.0073378   -0.0199557    0.0052802
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                -0.0608889   -0.0684919   -0.0532859
6-12 months    ki1135781-COHORTS          INDIA          Q4                   NA                -0.0767536   -0.0822662   -0.0712410
6-12 months    ki1135781-COHORTS          INDIA          Q1                   NA                -0.1302926   -0.1358469   -0.1247384
6-12 months    ki1135781-COHORTS          INDIA          Q2                   NA                -0.1104337   -0.1179334   -0.1029339
6-12 months    ki1135781-COHORTS          INDIA          Q3                   NA                -0.0836487   -0.0913452   -0.0759523
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                -0.0864589   -0.0937132   -0.0792045
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                -0.1193104   -0.1267610   -0.1118598
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                -0.0947478   -0.1064669   -0.0830288
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                -0.1070846   -0.1139247   -0.1002445
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                -0.0587118   -0.0646783   -0.0527453
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                -0.0855979   -0.0893408   -0.0818550
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                -0.0767796   -0.0814684   -0.0720908
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                -0.0731073   -0.0772990   -0.0689155
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0019318   -0.0584967    0.0623602
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                -0.0390541   -0.0461251   -0.0319832
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                -0.0482104   -0.0871850   -0.0092359
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                -0.0248216   -0.0579678    0.0083245
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.0517714   -0.0585496   -0.0449932
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                -0.0538118   -0.0604683   -0.0471553
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                -0.0865913   -0.0924744   -0.0807082
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                -0.0323761   -0.0403957   -0.0243565
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                 0.0707333    0.0542251    0.0872415
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                 0.1454564    0.1281947    0.1627182
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                 0.1466926    0.1283269    0.1650583
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                 0.0822874    0.0656929    0.0988819
12-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0050383   -0.0063073    0.0163840
12-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                -0.0143323   -0.0271463   -0.0015182
12-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                -0.0106417   -0.0202124   -0.0010710
12-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                -0.0169803   -0.0254549   -0.0085057
12-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                 0.0416732    0.0355094    0.0478369
12-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                -0.0002790   -0.0089776    0.0084197
12-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                -0.0198301   -0.0290310   -0.0106293
12-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                -0.0195811   -0.0263971   -0.0127651
12-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0154696   -0.0273208   -0.0036184
12-24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                -0.0358484   -0.0487333   -0.0229635
12-24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                -0.0339254   -0.0451333   -0.0227175
12-24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                -0.0359285   -0.0463660   -0.0254909
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0032816   -0.0144041    0.0078409
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                 0.0114775    0.0019390    0.0210159
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                -0.0078996   -0.0152703   -0.0005290
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                -0.0175941   -0.0246787   -0.0105096
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0637714   -0.0937088   -0.0338339
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                -0.0647393   -0.0821269   -0.0473517
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                -0.0450715   -0.0612967   -0.0288464
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                -0.0506222   -0.0649711   -0.0362734
12-24 months   ki1000108-IRC              INDIA          Q4                   NA                 0.0764792    0.0630284    0.0899300
12-24 months   ki1000108-IRC              INDIA          Q1                   NA                -0.0293002   -0.0382406   -0.0203598
12-24 months   ki1000108-IRC              INDIA          Q2                   NA                -0.0265994   -0.0365133   -0.0166854
12-24 months   ki1000108-IRC              INDIA          Q3                   NA                -0.0289532   -0.0385106   -0.0193958
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.0397856   -0.0485696   -0.0310016
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                -0.0389113   -0.0449210   -0.0329015
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                -0.0500399   -0.0565736   -0.0435061
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                -0.0459053   -0.0530524   -0.0387582
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                -0.0727880   -0.0749745   -0.0706015
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                -0.0160085   -0.0213495   -0.0106675
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                -0.0086152   -0.0139402   -0.0032903
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                 0.0049114   -0.0007778    0.0106007
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                -0.0057975   -0.0112209   -0.0003741
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                -0.0414954   -0.0470520   -0.0359387
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                -0.0720805   -0.0773293   -0.0668316
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                -0.0156252   -0.0217510   -0.0094994
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                -0.0123660   -0.0237575   -0.0009744
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                -0.0166625   -0.0225899   -0.0107352
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                -0.0316015   -0.0413233   -0.0218797
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                -0.0143657   -0.0254617   -0.0032698
12-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                -0.0499471   -0.0623967   -0.0374974
12-24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                -0.0760190   -0.0854077   -0.0666302
12-24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                -0.0435826   -0.0611694   -0.0259958
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                -0.0448478   -0.0541895   -0.0355062
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                -0.0559885   -0.0618076   -0.0501694
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                -0.0056791   -0.0143692    0.0030110
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                -0.0628771   -0.0722127   -0.0535415
12-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                -0.0255400   -0.0281879   -0.0228920
12-24 months   ki1135781-COHORTS          INDIA          Q1                   NA                -0.0441427   -0.0469311   -0.0413543
12-24 months   ki1135781-COHORTS          INDIA          Q2                   NA                -0.0385433   -0.0419504   -0.0351361
12-24 months   ki1135781-COHORTS          INDIA          Q3                   NA                -0.0381287   -0.0413221   -0.0349353
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                -0.0486939   -0.0522608   -0.0451269
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                -0.0704606   -0.0744251   -0.0664962
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                -0.0772764   -0.0817115   -0.0728414
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                -0.0619421   -0.0652114   -0.0586728
12-24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                -0.0181234   -0.0243139   -0.0119328
12-24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                -0.0701953   -0.0787419   -0.0616486
12-24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                -0.1106617   -0.1173912   -0.1039322
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                -0.0284952   -0.0322937   -0.0246967
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                -0.0184244   -0.0207578   -0.0160909
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                -0.0211000   -0.0240096   -0.0181904
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                -0.0180681   -0.0205796   -0.0155567
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.0076219   -0.0438990    0.0286551
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                -0.0150301   -0.0177322   -0.0123279
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                -0.0093929   -0.0226292    0.0038435
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                -0.0225304   -0.0320002   -0.0130606


### Parameter: E(Y)


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     NA                   NA                -0.0322739   -0.0655804    0.0010326
0-3 months     ki0047075b-MAL-ED          BRAZIL         NA                   NA                 0.1951445    0.1430920    0.2471969
0-3 months     ki0047075b-MAL-ED          INDIA          NA                   NA                -0.0124969   -0.0558416    0.0308478
0-3 months     ki0047075b-MAL-ED          NEPAL          NA                   NA                 0.0794721    0.0428849    0.1160592
0-3 months     ki0047075b-MAL-ED          PERU           NA                   NA                -0.1567505   -0.1892816   -0.1242194
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000304b-SAS-CompFeed    INDIA          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT           BELARUS        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.1430799   -0.1534971   -0.1326627
0-3 months     ki1135781-COHORTS          GUATEMALA      NA                   NA                -0.5398883   -0.5618098   -0.5179668
0-3 months     ki1135781-COHORTS          INDIA          NA                   NA                -0.0669871   -0.0748765   -0.0590978
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                 0.0705611    0.0656060    0.0755162
3-6 months     ki0047075b-MAL-ED          BANGLADESH     NA                   NA                -0.0169713   -0.0420738    0.0081313
3-6 months     ki0047075b-MAL-ED          BRAZIL         NA                   NA                 0.0596590    0.0229980    0.0963199
3-6 months     ki0047075b-MAL-ED          INDIA          NA                   NA                -0.0427354   -0.0724503   -0.0130205
3-6 months     ki0047075b-MAL-ED          NEPAL          NA                   NA                -0.0218048   -0.0493065    0.0056969
3-6 months     ki0047075b-MAL-ED          PERU           NA                   NA                 0.0257431   -0.0052244    0.0567106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000304b-SAS-CompFeed    INDIA          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal        NEPAL          NA                   NA                -0.1651360   -0.1837346   -0.1465373
3-6 months     ki1119695-PROBIT           BELARUS        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.0009012   -0.0102406    0.0084383
3-6 months     ki1135781-COHORTS          GUATEMALA      NA                   NA                -0.0961436   -0.1107658   -0.0815214
3-6 months     ki1135781-COHORTS          INDIA          NA                   NA                -0.0603887   -0.0665778   -0.0541997
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                -0.0034488   -0.0083148    0.0014172
6-12 months    ki0047075b-MAL-ED          BANGLADESH     NA                   NA                -0.0760273   -0.0876590   -0.0643956
6-12 months    ki0047075b-MAL-ED          BRAZIL         NA                   NA                 0.0064252   -0.0131569    0.0260072
6-12 months    ki0047075b-MAL-ED          INDIA          NA                   NA                -0.0791755   -0.0919190   -0.0664321
6-12 months    ki0047075b-MAL-ED          NEPAL          NA                   NA                -0.0459585   -0.0569569   -0.0349601
6-12 months    ki0047075b-MAL-ED          PERU           NA                   NA                -0.0370505   -0.0511480   -0.0229529
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                -0.0752772   -0.0882847   -0.0622698
6-12 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                -0.0616892   -0.0699485   -0.0534299
6-12 months    ki1119695-PROBIT           BELARUS        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.0492987   -0.0539607   -0.0446367
6-12 months    ki1135781-COHORTS          INDIA          NA                   NA                -0.0950617   -0.0988999   -0.0912235
6-12 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                -0.0748417   -0.0776879   -0.0719954
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                -0.0384643   -0.0453931   -0.0315355
12-24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                -0.0168173   -0.0229120   -0.0107226
12-24 months   ki0047075b-MAL-ED          BRAZIL         NA                   NA                -0.0014573   -0.0121231    0.0092086
12-24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                -0.0088735   -0.0142835   -0.0034635
12-24 months   ki0047075b-MAL-ED          NEPAL          NA                   NA                -0.0288822   -0.0340687   -0.0236956
12-24 months   ki0047075b-MAL-ED          PERU           NA                   NA                -0.0092211   -0.0162745   -0.0021678
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                -0.0154537   -0.0205205   -0.0103868
12-24 months   ki1119695-PROBIT           BELARUS        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          INDIA          NA                   NA                -0.0354469   -0.0372735   -0.0336204
12-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                -0.0158553   -0.0216714   -0.0100392
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                -0.0187858   -0.0206341   -0.0169375
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                -0.0150852   -0.0176845   -0.0124859


### Parameter: ATE


agecat         studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0605762   -0.1171361   -0.0040163
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.1671719    0.1102206    0.2241231
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0384700   -0.0915022    0.0145623
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                 0.2216940    0.1004096    0.3429784
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                 0.1571399    0.0463714    0.2679084
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                 0.0992796   -0.0058992    0.2044584
0-3 months     ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.1080995   -0.2084280   -0.0077710
0-3 months     ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.1029655   -0.2084822    0.0025512
0-3 months     ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0136818   -0.1228922    0.0955287
0-3 months     ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL          Q1                   Q4                 0.0270185   -0.0235582    0.0775952
0-3 months     ki0047075b-MAL-ED          NEPAL          Q2                   Q4                 0.1791120    0.1202808    0.2379432
0-3 months     ki0047075b-MAL-ED          NEPAL          Q3                   Q4                 0.1777569    0.1232086    0.2323053
0-3 months     ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU           Q1                   Q4                 0.0064595   -0.0762144    0.0891333
0-3 months     ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0583034   -0.1415883    0.0249816
0-3 months     ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0737252   -0.1642921    0.0168417
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.1225327   -0.1981253   -0.0469401
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0764238   -0.1459520   -0.0068956
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.0819535   -0.1492444   -0.0146626
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.0099845   -0.2976558    0.2776867
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.2340994   -0.5291557    0.0609569
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.0365674   -0.2701601    0.1970253
0-3 months     ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA          Q1                   Q4                -0.7619574   -0.9085889   -0.6153259
0-3 months     ki1000108-IRC              INDIA          Q2                   Q4                -0.8217189   -0.9790279   -0.6644098
0-3 months     ki1000108-IRC              INDIA          Q3                   Q4                -0.6518146   -0.8014976   -0.5021316
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                -0.2071084   -0.2343447   -0.1798722
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                -0.1710968   -0.1817023   -0.1604913
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                -0.0958515   -0.1151311   -0.0765718
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0083930   -0.0640897    0.0473037
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                 0.0385367   -0.0216039    0.0986774
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                 0.0529652   -0.0129320    0.1188625
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                 0.1346766    0.1041540    0.1651992
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                 0.1763321    0.1454691    0.2071951
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                 0.2131717    0.1768050    0.2495384
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                 0.0406538    0.0060890    0.0752186
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.0307454   -0.0748082    0.0133173
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0213229   -0.0560054    0.0133596
0-3 months     ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.0707077   -0.1134080   -0.0280073
0-3 months     ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0234657   -0.0629546    0.0160232
0-3 months     ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0263294   -0.0576364    0.0049776
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                 0.0215561   -0.0153561    0.0584683
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0045427   -0.0278912    0.0369766
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0130815   -0.0331670    0.0070041
0-3 months     ki1135781-COHORTS          GUATEMALA      Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA      Q2                   Q1                 0.3726199    0.3308545    0.4143854
0-3 months     ki1135781-COHORTS          GUATEMALA      Q3                   Q1                 1.2760701    1.2450777    1.3070625
0-3 months     ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA          Q1                   Q4                -0.1355322   -0.1532638   -0.1178007
0-3 months     ki1135781-COHORTS          INDIA          Q2                   Q4                -0.1107242   -0.1307215   -0.0907268
0-3 months     ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0478390   -0.0679647   -0.0277132
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.1125314   -0.1251300   -0.0999327
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.1022298   -0.1150247   -0.0894349
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0804044   -0.0919579   -0.0688510
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                 0.0682966    0.0365578    0.1000355
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.1662395    0.1304354    0.2020437
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0757228   -0.1076639   -0.0437817
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.0314969   -0.1181857    0.0551919
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.0244895   -0.1142867    0.0653076
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                 0.0083708   -0.0721095    0.0888511
3-6 months     ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA          Q1                   Q4                 0.0766383    0.0423435    0.1109332
3-6 months     ki0047075b-MAL-ED          INDIA          Q2                   Q4                 0.0057776   -0.0323507    0.0439059
3-6 months     ki0047075b-MAL-ED          INDIA          Q3                   Q4                 0.0320291   -0.0006337    0.0646919
3-6 months     ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL          Q1                   Q4                 0.0780582   -0.0036931    0.1598095
3-6 months     ki0047075b-MAL-ED          NEPAL          Q2                   Q4                 0.2053855    0.1284053    0.2823656
3-6 months     ki0047075b-MAL-ED          NEPAL          Q3                   Q4                 0.2907041    0.2151331    0.3662752
3-6 months     ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU           Q1                   Q4                 0.0203723   -0.0345891    0.0753338
3-6 months     ki0047075b-MAL-ED          PERU           Q2                   Q4                 0.0694934    0.0047080    0.1342788
3-6 months     ki0047075b-MAL-ED          PERU           Q3                   Q4                 0.0418098   -0.0188738    0.1024934
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.1778329   -0.2535010   -0.1021648
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                 0.0125629   -0.0538630    0.0789887
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                 0.0385514   -0.0277196    0.1048224
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.2312793   -0.3058674   -0.1566913
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.1044582   -0.1963076   -0.0126089
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.1050965   -0.1862636   -0.0239294
3-6 months     ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA          Q1                   Q4                 0.5429160    0.4275166    0.6583153
3-6 months     ki1000108-IRC              INDIA          Q2                   Q4                 0.5751811    0.4524408    0.6979213
3-6 months     ki1000108-IRC              INDIA          Q3                   Q4                 0.5014204    0.3815503    0.6212905
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                 0.0135209   -0.0118446    0.0388864
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                -0.0089413   -0.0383664    0.0204837
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                 0.0805414    0.0622002    0.0988826
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.1578664   -0.2031515   -0.1125814
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.1237090   -0.1719546   -0.0754635
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0461319   -0.1020299    0.0097661
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.4600349   -0.4848178   -0.4352519
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.4358152   -0.4610141   -0.4106163
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.4424480   -0.4738442   -0.4110519
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0120743   -0.0382397    0.0140911
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                 0.0178206   -0.0148378    0.0504791
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0245145   -0.0517679    0.0027389
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0539108   -0.0961977   -0.0116239
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                 0.0028497   -0.0582789    0.0639782
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                -0.1040359   -0.1629386   -0.0451332
3-6 months     ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.0860289   -0.1058559   -0.0662019
3-6 months     ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0216666   -0.0554494    0.0121163
3-6 months     ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0082048   -0.0256171    0.0092075
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0786244   -0.1046898   -0.0525590
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                -0.0370508   -0.0721520   -0.0019496
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0230224   -0.0410370   -0.0050078
3-6 months     ki1135781-COHORTS          GUATEMALA      Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA      Q2                   Q1                 0.1776420    0.1526604    0.2026236
3-6 months     ki1135781-COHORTS          GUATEMALA      Q3                   Q1                -0.6208630   -0.6385535   -0.6031726
3-6 months     ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA          Q1                   Q4                -0.0603022   -0.0735094   -0.0470949
3-6 months     ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0272918   -0.0429056   -0.0116781
3-6 months     ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0193920   -0.0351639   -0.0036202
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0318765   -0.0451421   -0.0186109
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0302643   -0.0441713   -0.0163572
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0296321   -0.0421837   -0.0170804
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0321230   -0.0503705   -0.0138755
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                -0.0734946   -0.0915514   -0.0554379
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                 0.0228094    0.0044810    0.0411378
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.1225353   -0.1727090   -0.0723615
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.1050907   -0.1526555   -0.0575258
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0322351   -0.0776170    0.0131468
6-12 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0019134   -0.0316969    0.0278700
6-12 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                 0.0214538   -0.0071312    0.0500387
6-12 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0075837   -0.0318839    0.0167165
6-12 months    ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.0044701   -0.0278292    0.0188890
6-12 months    ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.1011856   -0.1225285   -0.0798427
6-12 months    ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.1328986   -0.1527637   -0.1130334
6-12 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0182986   -0.0569283    0.0203311
6-12 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0129826   -0.0544729    0.0285077
6-12 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0112313   -0.0456230    0.0231605
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.0527718   -0.0771077   -0.0284359
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0093862   -0.0346439    0.0158715
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.0261473   -0.0514620   -0.0008326
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.0510217   -0.1203183    0.0182749
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.0817354   -0.1512694   -0.0122014
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.0965017   -0.1650247   -0.0279787
6-12 months    ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA          Q1                   Q4                -0.1263044   -0.1518140   -0.1007947
6-12 months    ki1000108-IRC              INDIA          Q2                   Q4                -0.1146411   -0.1410185   -0.0882637
6-12 months    ki1000108-IRC              INDIA          Q3                   Q4                -0.1026668   -0.1320558   -0.0732778
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                -0.0155382   -0.0272062   -0.0038701
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                 0.0187439    0.0057842    0.0317036
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                -0.0131044   -0.0270544    0.0008455
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                 0.0675498    0.0285663    0.1065333
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                 0.1033725    0.0187119    0.1880332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                 0.0685040    0.0107917    0.1262163
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0517351   -0.0759996   -0.0274706
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.0312660   -0.0561910   -0.0063409
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0274898   -0.0550069    0.0000273
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.2557919   -0.2658033   -0.2457805
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.2439952   -0.2541779   -0.2338125
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.2019758   -0.2121276   -0.1918241
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0161418   -0.0314720   -0.0008116
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                 0.0118757   -0.0045978    0.0283491
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                 0.0002731   -0.0143742    0.0149203
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                -0.0180346   -0.0465041    0.0104349
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                -0.0209934   -0.0470642    0.0050773
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                -0.0094802   -0.0418875    0.0229272
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                 0.0090016   -0.0082771    0.0262804
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0289674   -0.0501430   -0.0077917
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                 0.0301974    0.0081307    0.0522642
6-12 months    ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.0226454   -0.0351231   -0.0101678
6-12 months    ki1119695-PROBIT           BELARUS        Q2                   Q4                 0.0240322    0.0094438    0.0386206
6-12 months    ki1119695-PROBIT           BELARUS        Q3                   Q4                 0.0006072   -0.0081164    0.0093308
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0044170   -0.0156454    0.0068113
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0343647    0.0207981    0.0479313
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0191865   -0.0282304   -0.0101426
6-12 months    ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA          Q1                   Q4                -0.0535390   -0.0613020   -0.0457760
6-12 months    ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0336800   -0.0429234   -0.0244366
6-12 months    ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0068951   -0.0162887    0.0024985
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                -0.0328515   -0.0430442   -0.0226589
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                -0.0082890   -0.0219374    0.0053595
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                -0.0206258   -0.0303946   -0.0108569
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0268861   -0.0337642   -0.0200080
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0180678   -0.0258045   -0.0103311
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0143955   -0.0215895   -0.0072015
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                -0.0409859   -0.1015331    0.0195613
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                -0.0501422   -0.1218136    0.0215292
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                -0.0267534   -0.0954897    0.0419830
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0020404   -0.0116779    0.0075971
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                -0.0348199   -0.0439360   -0.0257038
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                 0.0193953    0.0087993    0.0299913
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                 0.0747232    0.0496856    0.0997607
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                 0.0759593    0.0503409    0.1015777
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                 0.0115541   -0.0129092    0.0360175
12-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0193706   -0.0363620   -0.0023792
12-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.0156800   -0.0304694   -0.0008907
12-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0220186   -0.0361071   -0.0079302
12-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.0419522   -0.0526623   -0.0312420
12-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.0615033   -0.0726727   -0.0503339
12-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.0612543   -0.0704651   -0.0520435
12-24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0203788   -0.0378869   -0.0028707
12-24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0184558   -0.0348387   -0.0020729
12-24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0204589   -0.0362689   -0.0046489
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                 0.0147590    0.0001375    0.0293806
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0046181   -0.0179519    0.0087158
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.0143126   -0.0275010   -0.0011241
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.0009679   -0.0355524    0.0336165
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                 0.0186998   -0.0152966    0.0526962
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                 0.0131491   -0.0200108    0.0463091
12-24 months   ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA          Q1                   Q4                -0.1057794   -0.1211179   -0.0904410
12-24 months   ki1000108-IRC              INDIA          Q2                   Q4                -0.1030786   -0.1189997   -0.0871575
12-24 months   ki1000108-IRC              INDIA          Q3                   Q4                -0.1054325   -0.1213016   -0.0895633
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                 0.0008743   -0.0094698    0.0112185
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.0102543   -0.0209412    0.0004327
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0061197   -0.0172375    0.0049981
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                 0.0567795    0.0510109    0.0625480
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                 0.0641727    0.0583858    0.0699597
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                 0.0776994    0.0715772    0.0838216
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0356978   -0.0435049   -0.0278908
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.0662829   -0.0738827   -0.0586832
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0098277   -0.0180144   -0.0016410
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0042966   -0.0171436    0.0085505
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0192356   -0.0342186   -0.0042525
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                -0.0019998   -0.0178957    0.0138962
12-24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0260719   -0.0384946   -0.0136493
12-24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                 0.0063644   -0.0059570    0.0186858
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0111407   -0.0179570   -0.0043244
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0391687    0.0301002    0.0482372
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0180292   -0.0283917   -0.0076668
12-24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                -0.0186027   -0.0223928   -0.0148126
12-24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0130033   -0.0172706   -0.0087360
12-24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0125887   -0.0166935   -0.0084840
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                -0.0217667   -0.0269905   -0.0165430
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                -0.0285826   -0.0341812   -0.0229839
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                -0.0132482   -0.0179429   -0.0085535
12-24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q1                -0.0520719   -0.0630626   -0.0410812
12-24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q1                -0.0925383   -0.1017015   -0.0833751
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                 0.0100709    0.0056985    0.0144432
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                 0.0073952    0.0026983    0.0120921
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                 0.0104271    0.0060972    0.0147570
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                -0.0074081   -0.0436910    0.0288748
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                -0.0017709   -0.0403396    0.0367977
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                -0.0149085   -0.0523363    0.0225193
