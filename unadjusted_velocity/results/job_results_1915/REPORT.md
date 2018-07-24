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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        meducyrs    n_cell       n
-------------  --------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q4              59     200
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q1              41     200
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q2              25     200
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Q3              75     200
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q4              57     189
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q1              37     189
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q2              24     189
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Q3              71     189
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q4              53     182
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q1              37     182
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q2              23     182
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Q3              69     182
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q4              50     167
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q1              36     167
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q2              20     167
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Q3              61     167
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q4               3      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q1              15      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q2               8      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Q3              12      38
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Q4              69     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Q1             233     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Q2             170     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Q3              94     566
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Q4              63     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Q1             219     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Q2             157     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Q3              84     523
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Q4              62     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Q1             200     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Q2             143     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Q3              77     482
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Q4              58     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Q1             172     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Q2             122     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Q3              69     421
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q4              12     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q1             253     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q2             236     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Q3             133     634
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q4              12     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q1             227     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q2             213     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Q3             122     574
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q4               9     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q1             213     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q2             209     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Q3             114     545
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q4               9     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q1             177     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q2             182     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Q3              90     458
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q4             241     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q1             178     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q2              51     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q3             250     720
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q4             233     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q1             170     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q2              50     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Q3             242     695
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q4             231     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q1             162     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q2              52     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Q3             231     676
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q4             185     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q1             107     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q2              32     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Q3             171     495
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q4             951   20022
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q1            7820   20022
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q2            4560   20022
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Q3            6691   20022
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q4             783   12568
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q1            4391   12568
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q2            2876   12568
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Q3            4518   12568
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q4             577    9830
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q1            3442    9830
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q2            2240    9830
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Q3            3571    9830
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q4             223    4646
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q1            1669    4646
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q2            1050    4646
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Q3            1704    4646
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q4              10    1359
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q1            1272    1359
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q2              34    1359
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Q3              43    1359
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q4              11    1550
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q1            1441    1550
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q2              44    1550
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Q3              54    1550
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q4               1     763
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q1             723     763
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q2              13     763
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Q3              26     763
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q4               1     756
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q1             716     756
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q2              12     756
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Q3              27     756
0-3 months     ki1119695-PROBIT            BELARUS                        Q4            2081   12745
0-3 months     ki1119695-PROBIT            BELARUS                        Q1              27   12745
0-3 months     ki1119695-PROBIT            BELARUS                        Q2             454   12745
0-3 months     ki1119695-PROBIT            BELARUS                        Q3           10183   12745
3-6 months     ki1119695-PROBIT            BELARUS                        Q4            2238   13309
3-6 months     ki1119695-PROBIT            BELARUS                        Q1              27   13309
3-6 months     ki1119695-PROBIT            BELARUS                        Q2             514   13309
3-6 months     ki1119695-PROBIT            BELARUS                        Q3           10530   13309
6-12 months    ki1119695-PROBIT            BELARUS                        Q4            2149   12896
6-12 months    ki1119695-PROBIT            BELARUS                        Q1              26   12896
6-12 months    ki1119695-PROBIT            BELARUS                        Q2             484   12896
6-12 months    ki1119695-PROBIT            BELARUS                        Q3           10237   12896
12-24 months   ki1119695-PROBIT            BELARUS                        Q4             411    2533
12-24 months   ki1119695-PROBIT            BELARUS                        Q2              65    2533
12-24 months   ki1119695-PROBIT            BELARUS                        Q3            2057    2533
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Q4              60     179
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Q1              40     179
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Q2              34     179
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Q3              45     179
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Q4              71     207
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Q1              44     207
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Q2              38     207
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Q3              54     207
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Q4              67     193
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Q1              40     193
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Q2              35     193
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Q3              51     193
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Q4              62     164
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Q1              31     164
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Q2              25     164
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Q3              46     164
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Q1              11      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Q2               1      12
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Q4              78     180
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Q1              30     180
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Q2              47     180
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Q3              25     180
3-6 months     ki1135781-COHORTS           GUATEMALA                      Q1             637     798
3-6 months     ki1135781-COHORTS           GUATEMALA                      Q2             142     798
3-6 months     ki1135781-COHORTS           GUATEMALA                      Q3              19     798
6-12 months    ki1135781-COHORTS           GUATEMALA                      Q4               1     856
6-12 months    ki1135781-COHORTS           GUATEMALA                      Q1             689     856
6-12 months    ki1135781-COHORTS           GUATEMALA                      Q2             144     856
6-12 months    ki1135781-COHORTS           GUATEMALA                      Q3              22     856
12-24 months   ki1135781-COHORTS           GUATEMALA                      Q4               2     871
12-24 months   ki1135781-COHORTS           GUATEMALA                      Q1             699     871
12-24 months   ki1135781-COHORTS           GUATEMALA                      Q2             145     871
12-24 months   ki1135781-COHORTS           GUATEMALA                      Q3              25     871
0-3 months     ki1135781-COHORTS           GUATEMALA                      Q1             571     723
0-3 months     ki1135781-COHORTS           GUATEMALA                      Q2             134     723
0-3 months     ki1135781-COHORTS           GUATEMALA                      Q3              18     723
0-3 months     ki0047075b-MAL-ED           INDIA                          Q4              48     175
0-3 months     ki0047075b-MAL-ED           INDIA                          Q1              26     175
0-3 months     ki0047075b-MAL-ED           INDIA                          Q2              43     175
0-3 months     ki0047075b-MAL-ED           INDIA                          Q3              58     175
3-6 months     ki0047075b-MAL-ED           INDIA                          Q4              56     201
3-6 months     ki0047075b-MAL-ED           INDIA                          Q1              30     201
3-6 months     ki0047075b-MAL-ED           INDIA                          Q2              49     201
3-6 months     ki0047075b-MAL-ED           INDIA                          Q3              66     201
6-12 months    ki0047075b-MAL-ED           INDIA                          Q4              56     196
6-12 months    ki0047075b-MAL-ED           INDIA                          Q1              30     196
6-12 months    ki0047075b-MAL-ED           INDIA                          Q2              47     196
6-12 months    ki0047075b-MAL-ED           INDIA                          Q3              63     196
12-24 months   ki0047075b-MAL-ED           INDIA                          Q4              55     197
12-24 months   ki0047075b-MAL-ED           INDIA                          Q1              31     197
12-24 months   ki0047075b-MAL-ED           INDIA                          Q2              48     197
12-24 months   ki0047075b-MAL-ED           INDIA                          Q3              63     197
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Q4              19     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Q1              85     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Q2              90     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Q3             113     307
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Q4              17     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Q1              94     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Q2              94     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Q3             118     323
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Q4              16     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Q1              89     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Q2              98     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Q3             121     324
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Q4               6      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Q1              14      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Q2              24      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Q3              43      87
3-6 months     ki1000108-IRC               INDIA                          Q4              11     397
3-6 months     ki1000108-IRC               INDIA                          Q1             177     397
3-6 months     ki1000108-IRC               INDIA                          Q2             102     397
3-6 months     ki1000108-IRC               INDIA                          Q3             107     397
6-12 months    ki1000108-IRC               INDIA                          Q4              11     400
6-12 months    ki1000108-IRC               INDIA                          Q1             179     400
6-12 months    ki1000108-IRC               INDIA                          Q2             101     400
6-12 months    ki1000108-IRC               INDIA                          Q3             109     400
12-24 months   ki1000108-IRC               INDIA                          Q4              11     396
12-24 months   ki1000108-IRC               INDIA                          Q1             179     396
12-24 months   ki1000108-IRC               INDIA                          Q2             100     396
12-24 months   ki1000108-IRC               INDIA                          Q3             106     396
0-3 months     ki1000108-IRC               INDIA                          Q4              10     377
0-3 months     ki1000108-IRC               INDIA                          Q1             172     377
0-3 months     ki1000108-IRC               INDIA                          Q2              97     377
0-3 months     ki1000108-IRC               INDIA                          Q3              98     377
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q4              36    2018
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q1             992    2018
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q2             670    2018
6-12 months    ki1000304-VITAMIN-A         INDIA                          Q3             320    2018
3-6 months     ki1000304-VITAMIN-A         INDIA                          Q1               6      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          Q2               3      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          Q3               3      12
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q4              18      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q1              10      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q2               8      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          Q3              13      49
12-24 months   ki1000304-ZnMort            INDIA                          Q1               1       1
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q4              28    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q1             566    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q2             353    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Q3             221    1168
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q4              29    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q1             549    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q2             325    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Q3             221    1124
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q4              28    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q1             542    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q2             351    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Q3             216    1137
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q4              13     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q1             271     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q2              30     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Q3              18     332
0-3 months     ki1135781-COHORTS           INDIA                          Q4            1716    5090
0-3 months     ki1135781-COHORTS           INDIA                          Q1            1719    5090
0-3 months     ki1135781-COHORTS           INDIA                          Q2             853    5090
0-3 months     ki1135781-COHORTS           INDIA                          Q3             802    5090
3-6 months     ki1135781-COHORTS           INDIA                          Q4            1780    5145
3-6 months     ki1135781-COHORTS           INDIA                          Q1            1711    5145
3-6 months     ki1135781-COHORTS           INDIA                          Q2             848    5145
3-6 months     ki1135781-COHORTS           INDIA                          Q3             806    5145
6-12 months    ki1135781-COHORTS           INDIA                          Q4            1496    4183
6-12 months    ki1135781-COHORTS           INDIA                          Q1            1318    4183
6-12 months    ki1135781-COHORTS           INDIA                          Q2             693    4183
6-12 months    ki1135781-COHORTS           INDIA                          Q3             676    4183
12-24 months   ki1135781-COHORTS           INDIA                          Q4            1287    3528
12-24 months   ki1135781-COHORTS           INDIA                          Q1            1072    3528
12-24 months   ki1135781-COHORTS           INDIA                          Q2             587    3528
12-24 months   ki1135781-COHORTS           INDIA                          Q3             582    3528
12-24 months   ki1000111-WASH-Kenya        KENYA                          Q4              79     330
12-24 months   ki1000111-WASH-Kenya        KENYA                          Q1             165     330
12-24 months   ki1000111-WASH-Kenya        KENYA                          Q3              86     330
6-12 months    ki1148112-LCNI-5            MALAWI                         Q4               1     429
6-12 months    ki1148112-LCNI-5            MALAWI                         Q1             302     429
6-12 months    ki1148112-LCNI-5            MALAWI                         Q2             115     429
6-12 months    ki1148112-LCNI-5            MALAWI                         Q3              11     429
12-24 months   ki1148112-LCNI-5            MALAWI                         Q1             207     306
12-24 months   ki1148112-LCNI-5            MALAWI                         Q2              90     306
12-24 months   ki1148112-LCNI-5            MALAWI                         Q3               9     306
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q4             304    1022
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q1             225    1022
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q2             208    1022
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Q3             285    1022
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q4             141     483
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q1             112     483
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q2              92     483
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Q3             138     483
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q4             136     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q1             129     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q2             124     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Q3             149     538
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q4             121     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q1             127     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q2             116     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Q3             144     508
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Q4               1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Q1               1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Q2               1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Q3               4       7
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q4              13     161
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q1              22     161
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q2              48     161
0-3 months     ki0047075b-MAL-ED           NEPAL                          Q3              78     161
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q4              19     218
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q1              30     218
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q2              63     218
3-6 months     ki0047075b-MAL-ED           NEPAL                          Q3             106     218
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q4              20     216
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q1              30     216
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q2              62     216
6-12 months    ki0047075b-MAL-ED           NEPAL                          Q3             104     216
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q4              18     212
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q1              30     212
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q2              61     212
12-24 months   ki0047075b-MAL-ED           NEPAL                          Q3             103     212
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q4              57     468
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q1             337     468
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q2              37     468
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Q3              37     468
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q4              54     472
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q1             338     472
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q2              40     472
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Q3              40     472
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q4              39     365
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q1             260     365
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q2              28     365
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Q3              38     365
0-3 months     ki1000109-EE                PAKISTAN                       Q4               4     295
0-3 months     ki1000109-EE                PAKISTAN                       Q1             258     295
0-3 months     ki1000109-EE                PAKISTAN                       Q2              24     295
0-3 months     ki1000109-EE                PAKISTAN                       Q3               9     295
3-6 months     ki1000109-EE                PAKISTAN                       Q4               4     329
3-6 months     ki1000109-EE                PAKISTAN                       Q1             284     329
3-6 months     ki1000109-EE                PAKISTAN                       Q2              30     329
3-6 months     ki1000109-EE                PAKISTAN                       Q3              11     329
6-12 months    ki1000109-EE                PAKISTAN                       Q1               2       4
6-12 months    ki1000109-EE                PAKISTAN                       Q3               2       4
0-3 months     ki0047075b-MAL-ED           PERU                           Q4              81     270
0-3 months     ki0047075b-MAL-ED           PERU                           Q1              58     270
0-3 months     ki0047075b-MAL-ED           PERU                           Q2              61     270
0-3 months     ki0047075b-MAL-ED           PERU                           Q3              70     270
3-6 months     ki0047075b-MAL-ED           PERU                           Q4              81     266
3-6 months     ki0047075b-MAL-ED           PERU                           Q1              58     266
3-6 months     ki0047075b-MAL-ED           PERU                           Q2              60     266
3-6 months     ki0047075b-MAL-ED           PERU                           Q3              67     266
6-12 months    ki0047075b-MAL-ED           PERU                           Q4              72     236
6-12 months    ki0047075b-MAL-ED           PERU                           Q1              54     236
6-12 months    ki0047075b-MAL-ED           PERU                           Q2              51     236
6-12 months    ki0047075b-MAL-ED           PERU                           Q3              59     236
12-24 months   ki0047075b-MAL-ED           PERU                           Q4              56     190
12-24 months   ki0047075b-MAL-ED           PERU                           Q1              43     190
12-24 months   ki0047075b-MAL-ED           PERU                           Q2              47     190
12-24 months   ki0047075b-MAL-ED           PERU                           Q3              44     190
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q4             712    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q1             541    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q2             208    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Q3             958    2419
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q4             666    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q1             505    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q2             199    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Q3             890    2260
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q4              62     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q1              48     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q2              68     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q3              51     229
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q4              67     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q1              51     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q2              68     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Q3              55     241
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q4              64     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q1              49     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q2              67     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Q3              52     232
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q4              64     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q1              51     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q2              67     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Q3              48     230
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4               2     190
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1              28     190
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2              30     190
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3             130     190
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4               3     198
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1              30     198
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2              32     198
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3             133     198
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4               3     184
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1              29     184
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2              29     184
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3             123     184
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q4               3     168
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q1              25     168
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q2              25     168
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Q3             115     168
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q4               4    1656
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q1              48    1656
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q2            1542    1656
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q3              62    1656
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q4               4    1078
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q1              29    1078
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q2             999    1078
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q3              46    1078
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q2               1       2
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Q3               1       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q4            4872    7850
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q1             128    7850
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q2             235    7850
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q3            2615    7850
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q4            3664    5878
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q1              99    5878
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q2             174    5878
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Q3            1941    5878
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q4            2836    4565
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q1              89    4565
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q2             147    4565
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Q3            1493    4565
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Q4             164     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Q1               6     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Q2              16     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Q3             117     303


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
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
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
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/298af304-7fcd-4a47-89cf-f5604f854fba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/298af304-7fcd-4a47-89cf-f5604f854fba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.0220050   -0.0775743    0.0335643
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                -0.0753363   -0.1582465    0.0075739
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                 0.0037067   -0.0992416    0.1066550
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                -0.0288049   -0.0804419    0.0228321
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q4                   NA                 0.2247961    0.1472487    0.3023435
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q1                   NA                 0.2457164    0.1157411    0.3756917
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q2                   NA                 0.1170299   -0.0097370    0.2437967
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q3                   NA                 0.1696760    0.0752767    0.2640753
0-3 months     ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0373132   -0.0426479    0.1172742
0-3 months     ki0047075b-MAL-ED          INDIA          Q1                   NA                -0.0782916   -0.1510689   -0.0055143
0-3 months     ki0047075b-MAL-ED          INDIA          Q2                   NA                -0.0720843   -0.1541781    0.0100095
0-3 months     ki0047075b-MAL-ED          INDIA          Q3                   NA                 0.0199521   -0.0663299    0.1062340
0-3 months     ki0047075b-MAL-ED          NEPAL          Q4                   NA                 0.1491427    0.0045235    0.2937619
0-3 months     ki0047075b-MAL-ED          NEPAL          Q1                   NA                 0.0701413   -0.0076294    0.1479121
0-3 months     ki0047075b-MAL-ED          NEPAL          Q2                   NA                 0.0969968    0.0226149    0.1713788
0-3 months     ki0047075b-MAL-ED          NEPAL          Q3                   NA                 0.0597076    0.0099498    0.1094654
0-3 months     ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0988036   -0.1576420   -0.0399652
0-3 months     ki0047075b-MAL-ED          PERU           Q1                   NA                -0.1511980   -0.2119241   -0.0904719
0-3 months     ki0047075b-MAL-ED          PERU           Q2                   NA                -0.2023359   -0.2655868   -0.1390850
0-3 months     ki0047075b-MAL-ED          PERU           Q3                   NA                -0.1886797   -0.2605681   -0.1167913
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0424370   -0.1181854    0.0333115
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                -0.1569911   -0.2644418   -0.0495404
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                -0.1048115   -0.1864077   -0.0232153
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                -0.1183594   -0.2071786   -0.0295401
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.0126519   -0.1866160    0.2119199
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                 0.0058156   -0.2195573    0.2311885
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                -0.2231236   -0.4647632    0.0185161
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                -0.0274197   -0.1731078    0.1182685
0-3 months     ki1000108-IRC              INDIA          Q4                   NA                -0.2092090   -0.6562409    0.2378228
0-3 months     ki1000108-IRC              INDIA          Q1                   NA                -0.2617262   -0.3426007   -0.1808516
0-3 months     ki1000108-IRC              INDIA          Q2                   NA                -0.3454776   -0.4632842   -0.2276710
0-3 months     ki1000108-IRC              INDIA          Q3                   NA                -0.1756103   -0.2752815   -0.0759391
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                 0.0812245   -0.0227185    0.1851674
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                -0.0200822   -0.0436595    0.0034951
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                 0.0174413   -0.0028569    0.0377395
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                 0.0785359    0.0396009    0.1174709
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.1226940   -0.1976223   -0.0477657
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                -0.1441141   -0.1833437   -0.1048845
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                -0.1008291   -0.1513939   -0.0502642
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                -0.0876014   -0.1608307   -0.0143720
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                -0.0654114   -0.1791865    0.0483637
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                -0.0707357   -0.0990814   -0.0423901
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                -0.0335468   -0.0623359   -0.0047577
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                 0.0030441   -0.0388559    0.0449440
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                -0.1183170   -0.1486798   -0.0879541
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                -0.1050796   -0.1410650   -0.0690943
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                -0.1790353   -0.2566077   -0.1014628
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                -0.1261990   -0.1573147   -0.0950832
0-3 months     ki1119695-PROBIT           BELARUS        Q4                   NA                -0.4172689   -0.4747109   -0.3598269
0-3 months     ki1119695-PROBIT           BELARUS        Q1                   NA                -0.5703341   -0.6179001   -0.5227682
0-3 months     ki1119695-PROBIT           BELARUS        Q2                   NA                -0.4066710   -0.4839144   -0.3294276
0-3 months     ki1119695-PROBIT           BELARUS        Q3                   NA                -0.4427693   -0.5036817   -0.3818568
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                -0.1420524   -0.1553916   -0.1287132
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                -0.1941226   -0.2717193   -0.1165260
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                -0.1377548   -0.1988195   -0.0766901
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                -0.1429743   -0.1607378   -0.1252107
0-3 months     ki1135781-COHORTS          GUATEMALA      Q1                   NA                -0.5412884   -0.5666798   -0.5158970
0-3 months     ki1135781-COHORTS          GUATEMALA      Q2                   NA                -0.5432503   -0.5895650   -0.4969355
0-3 months     ki1135781-COHORTS          GUATEMALA      Q3                   NA                -0.4704460   -0.5515748   -0.3893173
0-3 months     ki1135781-COHORTS          INDIA          Q4                   NA                -0.0214969   -0.0342856   -0.0087082
0-3 months     ki1135781-COHORTS          INDIA          Q1                   NA                -0.1054744   -0.1191819   -0.0917670
0-3 months     ki1135781-COHORTS          INDIA          Q2                   NA                -0.0988731   -0.1184491   -0.0792971
0-3 months     ki1135781-COHORTS          INDIA          Q3                   NA                -0.0479133   -0.0683651   -0.0274615
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.1188172    0.1003464    0.1372881
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                 0.0518276    0.0439710    0.0596841
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                 0.0701019    0.0612822    0.0789216
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                 0.0859098    0.0789329    0.0928867
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.0054240   -0.0499213    0.0390733
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                 0.0050337   -0.0509146    0.0609821
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                 0.0108181   -0.0728552    0.0944915
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                -0.0471026   -0.0852585   -0.0089468
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q4                   NA                 0.0328293   -0.0316014    0.0972600
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q1                   NA                 0.0687263   -0.0113324    0.1487849
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q2                   NA                 0.0833730   -0.0040695    0.1708155
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q3                   NA                 0.0708591    0.0043628    0.1373554
3-6 months     ki0047075b-MAL-ED          INDIA          Q4                   NA                -0.0879844   -0.1390256   -0.0369432
3-6 months     ki0047075b-MAL-ED          INDIA          Q1                   NA                 0.0366618   -0.0252510    0.0985746
3-6 months     ki0047075b-MAL-ED          INDIA          Q2                   NA                -0.0589508   -0.1194464    0.0015447
3-6 months     ki0047075b-MAL-ED          INDIA          Q3                   NA                -0.0283932   -0.0850675    0.0282812
3-6 months     ki0047075b-MAL-ED          NEPAL          Q4                   NA                 0.0566008   -0.0378524    0.1510540
3-6 months     ki0047075b-MAL-ED          NEPAL          Q1                   NA                -0.0188127   -0.0818590    0.0442336
3-6 months     ki0047075b-MAL-ED          NEPAL          Q2                   NA                -0.0446828   -0.0920745    0.0027090
3-6 months     ki0047075b-MAL-ED          NEPAL          Q3                   NA                -0.0231082   -0.0649300    0.0187136
3-6 months     ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0062063   -0.0651243    0.0527117
3-6 months     ki0047075b-MAL-ED          PERU           Q1                   NA                 0.0123985   -0.0397863    0.0645833
3-6 months     ki0047075b-MAL-ED          PERU           Q2                   NA                 0.0570493   -0.0096007    0.1236993
3-6 months     ki0047075b-MAL-ED          PERU           Q3                   NA                 0.0478852   -0.0175374    0.1133077
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0005450   -0.0704975    0.0715875
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                -0.0733550   -0.1685300    0.0218199
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                 0.0129314   -0.0544649    0.0803276
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                 0.0511372   -0.0213763    0.1236506
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0197340   -0.1810445    0.1415765
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                -0.1636585   -0.2386602   -0.0886568
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                -0.0716160   -0.1722686    0.0290365
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                -0.0826798   -0.1616059   -0.0037537
3-6 months     ki1000108-IRC              INDIA          Q4                   NA                -0.2497132   -0.4429373   -0.0564891
3-6 months     ki1000108-IRC              INDIA          Q1                   NA                -0.0499271   -0.0926987   -0.0071555
3-6 months     ki1000108-IRC              INDIA          Q2                   NA                -0.0053370   -0.0685276    0.0578535
3-6 months     ki1000108-IRC              INDIA          Q3                   NA                -0.0791844   -0.1356753   -0.0226935
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                -0.0433862   -0.1395677    0.0527952
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                -0.0228134   -0.0468006    0.0011737
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                -0.0335081   -0.0606345   -0.0063816
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                 0.0270377    0.0063170    0.0477583
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.0001795   -0.0517033    0.0513444
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                -0.0762434   -0.1108663   -0.0416205
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                -0.0548236   -0.0954456   -0.0142015
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                -0.0155374   -0.0731500    0.0420751
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                 0.0098999   -0.0762955    0.0960953
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                -0.0380322   -0.0635952   -0.0124692
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                -0.0155452   -0.0420640    0.0109736
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                -0.0312437   -0.0699094    0.0074220
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0415871    0.0137173    0.0694570
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                 0.0150173   -0.0155479    0.0455826
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                 0.0562460   -0.0153387    0.1278306
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                 0.0146814   -0.0156801    0.0450429
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q4                   NA                -0.1426807   -0.1912873   -0.0940741
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q1                   NA                -0.1671851   -0.1895609   -0.1448094
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q2                   NA                -0.1207664   -0.1857509   -0.0557819
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q3                   NA                -0.2254347   -0.2829573   -0.1679120
3-6 months     ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0493794    0.0233382    0.0754206
3-6 months     ki1119695-PROBIT           BELARUS        Q1                   NA                 0.0358872   -0.0797333    0.1515076
3-6 months     ki1119695-PROBIT           BELARUS        Q2                   NA                 0.0239110   -0.0118512    0.0596733
3-6 months     ki1119695-PROBIT           BELARUS        Q3                   NA                 0.0477485    0.0283212    0.0671758
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0050568   -0.0068270    0.0169405
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                 0.0066901   -0.0587511    0.0721314
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                 0.0264377   -0.0332959    0.0861713
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                -0.0149859   -0.0309928    0.0010210
3-6 months     ki1135781-COHORTS          GUATEMALA      Q1                   NA                -0.0916562   -0.1082600   -0.0750523
3-6 months     ki1135781-COHORTS          GUATEMALA      Q2                   NA                -0.1074651   -0.1406954   -0.0742348
3-6 months     ki1135781-COHORTS          GUATEMALA      Q3                   NA                -0.1619760   -0.2282600   -0.0956921
3-6 months     ki1135781-COHORTS          INDIA          Q4                   NA                -0.0366223   -0.0467927   -0.0264518
3-6 months     ki1135781-COHORTS          INDIA          Q1                   NA                -0.0876665   -0.0984591   -0.0768738
3-6 months     ki1135781-COHORTS          INDIA          Q2                   NA                -0.0558929   -0.0715116   -0.0402742
3-6 months     ki1135781-COHORTS          INDIA          Q3                   NA                -0.0596996   -0.0754414   -0.0439579
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                 0.0032792   -0.0148017    0.0213601
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                -0.0090552   -0.0172126   -0.0008979
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                 0.0009608   -0.0085595    0.0104811
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                -0.0019730   -0.0094326    0.0054867
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.0769225   -0.1005975   -0.0532476
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                -0.0804549   -0.1051603   -0.0557495
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                -0.0847648   -0.1147771   -0.0547525
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                -0.0700529   -0.0882458   -0.0518600
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                 0.0267043   -0.0066756    0.0600841
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q1                   NA                -0.0319593   -0.0770464    0.0131278
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q2                   NA                -0.0100040   -0.0520825    0.0320746
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q3                   NA                 0.0211644   -0.0152391    0.0575679
6-12 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                -0.0814965   -0.1041216   -0.0588713
6-12 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                -0.0862946   -0.1176521   -0.0549371
6-12 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                -0.0599274   -0.0887486   -0.0311062
6-12 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                -0.0880822   -0.1094947   -0.0666696
6-12 months    ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0538407   -0.0916306   -0.0160509
6-12 months    ki0047075b-MAL-ED          NEPAL          Q1                   NA                -0.0093910   -0.0427086    0.0239265
6-12 months    ki0047075b-MAL-ED          NEPAL          Q2                   NA                -0.0491167   -0.0690838   -0.0291496
6-12 months    ki0047075b-MAL-ED          NEPAL          Q3                   NA                -0.0531082   -0.0678746   -0.0383418
6-12 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0254796   -0.0520111    0.0010519
6-12 months    ki0047075b-MAL-ED          PERU           Q1                   NA                -0.0470657   -0.0767540   -0.0173774
6-12 months    ki0047075b-MAL-ED          PERU           Q2                   NA                -0.0418637   -0.0753599   -0.0083675
6-12 months    ki0047075b-MAL-ED          PERU           Q3                   NA                -0.0378439   -0.0610134   -0.0146743
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0505467   -0.0820672   -0.0190263
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                -0.0662774   -0.1007236   -0.0318311
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                -0.0517525   -0.0870971   -0.0164079
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                -0.0485613   -0.0851567   -0.0119659
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0949285   -0.2102472    0.0203903
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                -0.0789998   -0.1150423   -0.0429572
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                -0.1038424   -0.1430958   -0.0645889
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                -0.1125907   -0.1453373   -0.0798442
6-12 months    ki1000108-IRC              INDIA          Q4                   NA                 0.0232178   -0.0201284    0.0665639
6-12 months    ki1000108-IRC              INDIA          Q1                   NA                -0.0361110   -0.0560623   -0.0161597
6-12 months    ki1000108-IRC              INDIA          Q2                   NA                -0.0265469   -0.0490968   -0.0039971
6-12 months    ki1000108-IRC              INDIA          Q3                   NA                -0.0139113   -0.0401993    0.0123768
6-12 months    ki1000304-VITAMIN-A        INDIA          Q4                   NA                -0.0297416   -0.0645978    0.0051145
6-12 months    ki1000304-VITAMIN-A        INDIA          Q1                   NA                -0.0866178   -0.0937891   -0.0794465
6-12 months    ki1000304-VITAMIN-A        INDIA          Q2                   NA                -0.0714918   -0.0799631   -0.0630204
6-12 months    ki1000304-VITAMIN-A        INDIA          Q3                   NA                -0.0544635   -0.0661967   -0.0427304
6-12 months    ki1000304-Vitamin-B12      INDIA          Q4                   NA                -0.0197374   -0.0517348    0.0122599
6-12 months    ki1000304-Vitamin-B12      INDIA          Q1                   NA                -0.0027580   -0.0426493    0.0371332
6-12 months    ki1000304-Vitamin-B12      INDIA          Q2                   NA                -0.0026748   -0.0960000    0.0906505
6-12 months    ki1000304-Vitamin-B12      INDIA          Q3                   NA                -0.0385059   -0.0844081    0.0073963
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                -0.0403497   -0.0944109    0.0137115
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                -0.1007432   -0.1128177   -0.0886687
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                -0.0674189   -0.0764204   -0.0584173
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                -0.0863376   -0.0969466   -0.0757287
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                -0.1718467   -0.2019906   -0.1417028
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                -0.1080201   -0.1432965   -0.0727436
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                -0.0692583   -0.1863664    0.0478499
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                -0.1263635   -0.1992488   -0.0534781
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.0275066   -0.0559349    0.0009216
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                -0.0661458   -0.0803815   -0.0519101
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                -0.0488422   -0.0649341   -0.0327504
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                -0.0477145   -0.0713147   -0.0241142
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                -0.0074738   -0.0497836    0.0348361
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                -0.0751942   -0.0861207   -0.0642677
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                -0.0656076   -0.0770749   -0.0541403
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                -0.0379792   -0.0518518   -0.0241066
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                -0.0293401   -0.0419512   -0.0167291
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                -0.0419361   -0.0574009   -0.0264713
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                -0.0290732   -0.0546302   -0.0035163
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                -0.0270798   -0.0390845   -0.0150752
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                -0.0571756   -0.0764798   -0.0378715
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                -0.0921772   -0.1227988   -0.0615555
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                -0.0886881   -0.1124426   -0.0649335
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                -0.0862619   -0.1252104   -0.0473133
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                -0.0567831   -0.0785717   -0.0349946
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                -0.0616416   -0.0717941   -0.0514891
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                -0.0941141   -0.1170788   -0.0711493
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                -0.0362904   -0.0603676   -0.0122131
6-12 months    ki1119695-PROBIT           BELARUS        Q4                   NA                 0.0393976    0.0250897    0.0537054
6-12 months    ki1119695-PROBIT           BELARUS        Q1                   NA                 0.1567763    0.1061405    0.2074121
6-12 months    ki1119695-PROBIT           BELARUS        Q2                   NA                 0.0687943    0.0363856    0.1012030
6-12 months    ki1119695-PROBIT           BELARUS        Q3                   NA                 0.0413499    0.0245569    0.0581428
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                -0.0432460   -0.0490414   -0.0374506
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                -0.0685655   -0.0989867   -0.0381442
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                -0.0585540   -0.0850033   -0.0321048
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                -0.0587362   -0.0671888   -0.0502835
6-12 months    ki1135781-COHORTS          INDIA          Q4                   NA                -0.0767824   -0.0829232   -0.0706416
6-12 months    ki1135781-COHORTS          INDIA          Q1                   NA                -0.1185546   -0.1254313   -0.1116778
6-12 months    ki1135781-COHORTS          INDIA          Q2                   NA                -0.1028046   -0.1124716   -0.0931377
6-12 months    ki1135781-COHORTS          INDIA          Q3                   NA                -0.0817724   -0.0912461   -0.0722988
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                -0.0837163   -0.0931098   -0.0743228
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                -0.1143279   -0.1247966   -0.1038591
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                -0.0969298   -0.1146043   -0.0792552
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                -0.1045240   -0.1127025   -0.0963454
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q4                   NA                -0.0317443   -0.0445197   -0.0189690
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q1                   NA                -0.0365695   -0.0514019   -0.0217370
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q2                   NA                -0.0398877   -0.0541583   -0.0256171
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q3                   NA                -0.0424039   -0.0565074   -0.0283005
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q4                   NA                -0.0443384   -0.0649298   -0.0237471
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q1                   NA                -0.0456511   -0.0674063   -0.0238959
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q2                   NA                -0.0347987   -0.0528909   -0.0167065
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q3                   NA                -0.0481697   -0.0666559   -0.0296834
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                -0.0645676   -0.0758758   -0.0532594
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                -0.0825129   -0.0868574   -0.0781683
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                -0.0742699   -0.0793583   -0.0691816
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                -0.0694664   -0.0741877   -0.0647451
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                 0.0147955   -0.0593921    0.0889832
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                -0.0391987   -0.0463048   -0.0320925
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                -0.0449733   -0.0914456    0.0014989
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                -0.0239818   -0.0612833    0.0133198
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                -0.0216883   -0.0318282   -0.0115484
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                -0.0147018   -0.0266174   -0.0027861
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                -0.0191669   -0.0320921   -0.0062416
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                -0.0133029   -0.0251190   -0.0014868
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                 0.0094267   -0.0090478    0.0279013
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                 0.0017584   -0.0205852    0.0241021
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                -0.0202050   -0.0462520    0.0058419
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                -0.0081051   -0.0272116    0.0110015
12-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0052100   -0.0063147    0.0167348
12-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                -0.0142017   -0.0275935   -0.0008099
12-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                -0.0108479   -0.0204117   -0.0012841
12-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                -0.0170424   -0.0255688   -0.0085161
12-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                -0.0165901   -0.0273549   -0.0058254
12-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                -0.0337862   -0.0460130   -0.0215595
12-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                -0.0343339   -0.0452560   -0.0234119
12-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                -0.0263732   -0.0337047   -0.0190417
12-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0005193   -0.0131568    0.0141953
12-24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                -0.0125621   -0.0286891    0.0035649
12-24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                -0.0130714   -0.0265931    0.0004503
12-24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                -0.0142401   -0.0265908   -0.0018894
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0118968   -0.0293554    0.0055618
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                -0.0101297   -0.0271837    0.0069243
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                -0.0168234   -0.0285264   -0.0051204
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                -0.0234181   -0.0365276   -0.0103085
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0242598   -0.0858899    0.0373704
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                -0.0558824   -0.0754460   -0.0363187
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                -0.0394630   -0.0577063   -0.0212196
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                -0.0456108   -0.0612660   -0.0299556
12-24 months   ki1000108-IRC              INDIA          Q4                   NA                 0.0135672   -0.0231202    0.0502547
12-24 months   ki1000108-IRC              INDIA          Q1                   NA                -0.0314704   -0.0423659   -0.0205748
12-24 months   ki1000108-IRC              INDIA          Q2                   NA                -0.0345683   -0.0486061   -0.0205306
12-24 months   ki1000108-IRC              INDIA          Q3                   NA                -0.0343359   -0.0469994   -0.0216723
12-24 months   ki1000111-WASH-Kenya       KENYA          Q4                   NA                -0.0145259   -0.0251148   -0.0039370
12-24 months   ki1000111-WASH-Kenya       KENYA          Q1                   NA                -0.0285463   -0.0366568   -0.0204357
12-24 months   ki1000111-WASH-Kenya       KENYA          Q3                   NA                -0.0253125   -0.0337361   -0.0168890
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                -0.0349325   -0.0476222   -0.0222428
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                -0.0373419   -0.0446323   -0.0300514
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                -0.0468773   -0.0555658   -0.0381887
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                -0.0413363   -0.0523932   -0.0302794
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                -0.0123885   -0.0270530    0.0022761
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                -0.0137793   -0.0200212   -0.0075373
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                -0.0077672   -0.0138662   -0.0016682
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                 0.0024599   -0.0058829    0.0108028
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0009610   -0.0053340    0.0072560
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                -0.0157439   -0.0236689   -0.0078188
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                -0.0078343   -0.0221612    0.0064925
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                -0.0063164   -0.0135927    0.0009599
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                -0.0070867   -0.0242905    0.0101171
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                -0.0158835   -0.0219214   -0.0098456
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                -0.0275603   -0.0397482   -0.0153725
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                -0.0121793   -0.0279923    0.0036338
12-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                -0.0402396   -0.0601119   -0.0203673
12-24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                -0.0473804   -0.0746189   -0.0201420
12-24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                -0.0434743   -0.0617192   -0.0252295
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                -0.0467510   -0.0590382   -0.0344639
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                -0.0565117   -0.0781397   -0.0348837
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                -0.0253233   -0.0605905    0.0099440
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                -0.0621100   -0.0774775   -0.0467424
12-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                -0.0268870   -0.0298182   -0.0239558
12-24 months   ki1135781-COHORTS          INDIA          Q1                   NA                -0.0418459   -0.0453435   -0.0383483
12-24 months   ki1135781-COHORTS          INDIA          Q2                   NA                -0.0391744   -0.0434633   -0.0348855
12-24 months   ki1135781-COHORTS          INDIA          Q3                   NA                -0.0388298   -0.0431459   -0.0345137
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                -0.0456119   -0.0501748   -0.0410490
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                -0.0651262   -0.0705295   -0.0597229
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                -0.0696107   -0.0782209   -0.0610005
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                -0.0597469   -0.0636915   -0.0558023
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q4                   NA                -0.0339183   -0.0430515   -0.0247851
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q1                   NA                -0.0307438   -0.0386880   -0.0227996
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q2                   NA                -0.0249002   -0.0349422   -0.0148581
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q3                   NA                -0.0305837   -0.0413349   -0.0198324
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q4                   NA                -0.0221373   -0.0346314   -0.0096431
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q1                   NA                -0.0161820   -0.0252163   -0.0071477
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q2                   NA                -0.0259563   -0.0372581   -0.0146545
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q3                   NA                -0.0185280   -0.0275412   -0.0095147
12-24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                -0.0137266   -0.0208614   -0.0065919
12-24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                -0.0195940   -0.0304087   -0.0087794
12-24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                -0.0274272   -0.0452514   -0.0096030
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                -0.0211634   -0.0287547   -0.0135720
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                -0.0179919   -0.0208515   -0.0151324
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                -0.0201211   -0.0240120   -0.0162303
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                -0.0184294   -0.0214793   -0.0153795
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                -0.0056743   -0.0468068    0.0354582
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                -0.0150164   -0.0177366   -0.0122962
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                -0.0097519   -0.0245343    0.0050305
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                -0.0231847   -0.0330095   -0.0133598


### Parameter: E(Y)


diffcat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
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
6-12 months    ki1000304-VITAMIN-A        INDIA          NA                   NA                -0.0754823   -0.0804338   -0.0705309
6-12 months    ki1000304-Vitamin-B12      INDIA          NA                   NA                -0.0184659   -0.0429764    0.0060446
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
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         NA                   NA                -0.0374366   -0.0444419   -0.0304312
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         NA                   NA                -0.0435155   -0.0534192   -0.0336118
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
12-24 months   ki1000111-WASH-Kenya       KENYA          NA                   NA                -0.0243471   -0.0296448   -0.0190495
12-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                -0.0154537   -0.0205205   -0.0103868
12-24 months   ki1119695-PROBIT           BELARUS        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          INDIA          NA                   NA                -0.0354469   -0.0372735   -0.0336204
12-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         NA                   NA                -0.0305117   -0.0353770   -0.0256463
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         NA                   NA                -0.0204974   -0.0257171   -0.0152777
12-24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                -0.0158553   -0.0216714   -0.0100392
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                -0.0187858   -0.0206341   -0.0169375
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                -0.0150852   -0.0176845   -0.0124859


### Parameter: ATE


diffcat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0533313   -0.1531414    0.0464787
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.0257117   -0.0912768    0.1427002
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0067999   -0.0826572    0.0690574
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                 0.0209203   -0.1304309    0.1722715
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.1077662   -0.2563712    0.0408387
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0551201   -0.1772873    0.0670471
0-3 months     ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.1156048   -0.2237265   -0.0074831
0-3 months     ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.1093975   -0.2239975    0.0052025
0-3 months     ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0173611   -0.1349976    0.1002754
0-3 months     ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.0790014   -0.2432056    0.0852027
0-3 months     ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.0521459   -0.2147724    0.1104806
0-3 months     ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.0894351   -0.2423749    0.0635046
0-3 months     ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0523944   -0.1369498    0.0321610
0-3 months     ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.1035323   -0.1899188   -0.0171458
0-3 months     ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0898761   -0.1827734    0.0030212
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.1145541   -0.2460208    0.0169125
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0623745   -0.1737108    0.0489618
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.0759224   -0.1926558    0.0408110
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.0068363   -0.3076696    0.2939969
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.2357755   -0.5489806    0.0774297
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.0400716   -0.2869172    0.2067740
0-3 months     ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA          Q1                   Q4                -0.0525171   -0.5068057    0.4017715
0-3 months     ki1000108-IRC              INDIA          Q2                   Q4                -0.1362685   -0.5985627    0.3260256
0-3 months     ki1000108-IRC              INDIA          Q3                   Q4                 0.0335987   -0.4244098    0.4916073
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                -0.1013067   -0.2131433    0.0105300
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                -0.0637832   -0.1597660    0.0321996
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                -0.0026885   -0.0863636    0.0809865
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0214201   -0.1059967    0.0631566
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                 0.0218649   -0.0685290    0.1122588
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                 0.0350926   -0.0696775    0.1398628
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.0053243   -0.1225773    0.1119286
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                 0.0318646   -0.0854963    0.1492255
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                 0.0684555   -0.0527897    0.1897006
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                 0.0132373   -0.0338461    0.0603208
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.0607183   -0.1440213    0.0225847
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0078820   -0.0513572    0.0355932
0-3 months     ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.1530652   -0.2260849   -0.0800455
0-3 months     ki1119695-PROBIT           BELARUS        Q2                   Q4                 0.0105980   -0.0477848    0.0689807
0-3 months     ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0255004   -0.0582378    0.0072371
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0520702   -0.1308051    0.0266646
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0042976   -0.0582071    0.0668022
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0009219   -0.0231362    0.0212925
0-3 months     ki1135781-COHORTS          GUATEMALA      Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA      Q2                   Q1                -0.0019619   -0.0547802    0.0508565
0-3 months     ki1135781-COHORTS          GUATEMALA      Q3                   Q1                 0.0708424   -0.0141670    0.1558517
0-3 months     ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA          Q1                   Q4                -0.0839775   -0.1027244   -0.0652307
0-3 months     ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0773762   -0.1007593   -0.0539930
0-3 months     ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0264163   -0.0505374   -0.0022953
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0669897   -0.0870060   -0.0469733
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0487154   -0.0690929   -0.0283378
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0329075   -0.0518663   -0.0139486
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                 0.0104577   -0.0610281    0.0819436
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.0162421   -0.0785272    0.1110115
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0416786   -0.1002949    0.0169377
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                 0.0358969   -0.0668683    0.1386622
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                 0.0505437   -0.0580726    0.1591600
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                 0.0380298   -0.0545611    0.1306207
3-6 months     ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA          Q1                   Q4                 0.1246462    0.0444065    0.2048858
3-6 months     ki0047075b-MAL-ED          INDIA          Q2                   Q4                 0.0290336   -0.0501176    0.1081848
3-6 months     ki0047075b-MAL-ED          INDIA          Q3                   Q4                 0.0595912   -0.0166793    0.1358617
3-6 months     ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.0754135   -0.1889752    0.0381481
3-6 months     ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.1012836   -0.2069594    0.0043922
3-6 months     ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.0797090   -0.1830070    0.0235889
3-6 months     ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU           Q1                   Q4                 0.0186048   -0.0601009    0.0973105
3-6 months     ki0047075b-MAL-ED          PERU           Q2                   Q4                 0.0632556   -0.0257026    0.1522138
3-6 months     ki0047075b-MAL-ED          PERU           Q3                   Q4                 0.0540915   -0.0339508    0.1421337
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.0739000   -0.1926658    0.0448658
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                 0.0123864   -0.0855386    0.1103113
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                 0.0505922   -0.0509226    0.1521069
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.1439245   -0.3218187    0.0339696
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.0518821   -0.2420189    0.1382548
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.0629458   -0.2425299    0.1166382
3-6 months     ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA          Q1                   Q4                 0.1997861    0.0018847    0.3976875
3-6 months     ki1000108-IRC              INDIA          Q2                   Q4                 0.2443761    0.0410818    0.4476705
3-6 months     ki1000108-IRC              INDIA          Q3                   Q4                 0.1705288   -0.0307838    0.3718414
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                 0.0205728   -0.0871179    0.1282635
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                 0.0098781   -0.0932070    0.1129632
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                 0.0704239   -0.0212007    0.1620485
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0760639   -0.1381401   -0.0139878
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.0546441   -0.1202555    0.0109673
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0153580   -0.0926491    0.0619332
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.0479321   -0.1378382    0.0419741
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.0254451   -0.1156277    0.0647375
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.0411436   -0.1356141    0.0533269
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0265698   -0.0679336    0.0147940
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                 0.0146589   -0.0621597    0.0914774
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0269057   -0.0681192    0.0143078
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0245044   -0.0780140    0.0290052
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                 0.0219143   -0.0592373    0.1030659
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                -0.0827540   -0.1580630   -0.0074449
3-6 months     ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.0134923   -0.1231837    0.0961992
3-6 months     ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0254684   -0.0646857    0.0137489
3-6 months     ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0016310   -0.0217624    0.0185005
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                 0.0016334   -0.0648781    0.0681449
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0213809   -0.0395234    0.0822851
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0200427   -0.0399787   -0.0001067
3-6 months     ki1135781-COHORTS          GUATEMALA      Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA      Q2                   Q1                -0.0158089   -0.0529565    0.0213386
3-6 months     ki1135781-COHORTS          GUATEMALA      Q3                   Q1                -0.0703199   -0.1386518   -0.0019879
3-6 months     ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA          Q1                   Q4                -0.0510442   -0.0658739   -0.0362145
3-6 months     ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0192706   -0.0379088   -0.0006324
3-6 months     ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0230774   -0.0418188   -0.0043359
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0123345   -0.0323883    0.0077194
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0023184   -0.0224126    0.0177759
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0052522   -0.0240588    0.0135545
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0035323   -0.0377502    0.0306855
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                -0.0078423   -0.0460684    0.0303839
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                 0.0068697   -0.0229881    0.0367274
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.0586635   -0.1147622   -0.0025649
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.0367082   -0.0904187    0.0170023
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0055399   -0.0549304    0.0438507
6-12 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0047981   -0.0434658    0.0338696
6-12 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                 0.0215691   -0.0150719    0.0582100
6-12 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0065857   -0.0377369    0.0245655
6-12 months    ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL          Q1                   Q4                 0.0444497   -0.0059301    0.0948296
6-12 months    ki0047075b-MAL-ED          NEPAL          Q2                   Q4                 0.0047240   -0.0380165    0.0474646
6-12 months    ki0047075b-MAL-ED          NEPAL          Q3                   Q4                 0.0007326   -0.0398398    0.0413049
6-12 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0215861   -0.0614022    0.0182299
6-12 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0163841   -0.0591149    0.0263466
6-12 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0123643   -0.0475886    0.0228600
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.0157306   -0.0624220    0.0309607
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0012058   -0.0485638    0.0461522
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                 0.0019854   -0.0463133    0.0502841
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                 0.0159287   -0.1048913    0.1367487
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.0089139   -0.1307303    0.1129025
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.0176623   -0.1375403    0.1022158
6-12 months    ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA          Q1                   Q4                -0.0593288   -0.1070461   -0.0116115
6-12 months    ki1000108-IRC              INDIA          Q2                   Q4                -0.0497647   -0.0986255   -0.0009038
6-12 months    ki1000108-IRC              INDIA          Q3                   Q4                -0.0371290   -0.0878237    0.0135656
6-12 months    ki1000304-VITAMIN-A        INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-VITAMIN-A        INDIA          Q1                   Q4                -0.0568762   -0.0924624   -0.0212899
6-12 months    ki1000304-VITAMIN-A        INDIA          Q2                   Q4                -0.0417501   -0.0776209   -0.0058793
6-12 months    ki1000304-VITAMIN-A        INDIA          Q3                   Q4                -0.0247219   -0.0614999    0.0120561
6-12 months    ki1000304-Vitamin-B12      INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-Vitamin-B12      INDIA          Q1                   Q4                 0.0169794   -0.0341591    0.0681178
6-12 months    ki1000304-Vitamin-B12      INDIA          Q2                   Q4                 0.0170627   -0.0815955    0.1157208
6-12 months    ki1000304-Vitamin-B12      INDIA          Q3                   Q4                -0.0187685   -0.0747224    0.0371855
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                -0.0603935   -0.1219525    0.0011655
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                -0.0270691   -0.0811914    0.0270532
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                -0.0459879   -0.1039824    0.0120065
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                 0.0638266    0.0174253    0.1102279
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                 0.1025884   -0.0183371    0.2235139
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                 0.0454832   -0.0333896    0.1243561
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0386392   -0.0704326   -0.0068458
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.0213356   -0.0540023    0.0113311
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0202078   -0.0571556    0.0167399
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.0677204   -0.1114184   -0.0240225
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.0581338   -0.1019701   -0.0142976
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.0305055   -0.0750315    0.0140206
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0125960   -0.0325509    0.0073589
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                 0.0002669   -0.0282322    0.0287660
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                 0.0022603   -0.0151509    0.0196715
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                -0.0350015   -0.0712001    0.0011971
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                -0.0315124   -0.0621217   -0.0009031
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                -0.0290862   -0.0725562    0.0143838
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0048584   -0.0288962    0.0191793
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0373309   -0.0689872   -0.0056747
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                 0.0204928   -0.0119796    0.0529651
6-12 months    ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS        Q1                   Q4                 0.1173787    0.0661946    0.1685628
6-12 months    ki1119695-PROBIT           BELARUS        Q2                   Q4                 0.0293967    0.0038236    0.0549699
6-12 months    ki1119695-PROBIT           BELARUS        Q3                   Q4                 0.0019523   -0.0078359    0.0117405
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0253195   -0.0562879    0.0056489
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                -0.0153080   -0.0423848    0.0117687
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0154902   -0.0257388   -0.0052415
6-12 months    ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA          Q1                   Q4                -0.0417722   -0.0509916   -0.0325527
6-12 months    ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0260222   -0.0374747   -0.0145697
6-12 months    ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0049900   -0.0162798    0.0062998
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                -0.0306116   -0.0446769   -0.0165463
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                -0.0132135   -0.0332292    0.0068023
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                -0.0208077   -0.0332626   -0.0083527
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q1                   Q4                -0.0048252   -0.0244009    0.0147506
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q2                   Q4                -0.0081434   -0.0272970    0.0110101
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q3                   Q4                -0.0106596   -0.0296890    0.0083697
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q1                   Q4                -0.0013126   -0.0312675    0.0286422
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q2                   Q4                 0.0095398   -0.0178707    0.0369502
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q3                   Q4                -0.0038312   -0.0315033    0.0238409
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0179453   -0.0299059   -0.0059846
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0097023   -0.0223126    0.0029079
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0048988   -0.0174077    0.0076102
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                -0.0539942   -0.1283896    0.0204012
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                -0.0597689   -0.1473135    0.0277757
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                -0.0387773   -0.1218159    0.0442612
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                 0.0069866   -0.0086595    0.0226327
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.0025215   -0.0139065    0.0189495
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                 0.0083855   -0.0071849    0.0239559
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.0076683   -0.0366605    0.0213240
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.0296317   -0.0615653    0.0023018
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0175318   -0.0441094    0.0090459
12-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0194117   -0.0370798   -0.0017437
12-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.0160579   -0.0310341   -0.0010818
12-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0222525   -0.0365884   -0.0079166
12-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.0171961   -0.0334864   -0.0009058
12-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.0177438   -0.0330791   -0.0024085
12-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.0097831   -0.0228073    0.0032412
12-24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0130814   -0.0342264    0.0080637
12-24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0135907   -0.0328227    0.0056414
12-24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0147594   -0.0331869    0.0036682
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                 0.0017671   -0.0226387    0.0261729
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0049266   -0.0259448    0.0160915
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.0115213   -0.0333539    0.0103113
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.0316226   -0.0962833    0.0330381
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.0152032   -0.0794768    0.0490704
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.0213510   -0.0849384    0.0422364
12-24 months   ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA          Q1                   Q4                -0.0450376   -0.0833088   -0.0067664
12-24 months   ki1000108-IRC              INDIA          Q2                   Q4                -0.0481356   -0.0874169   -0.0088542
12-24 months   ki1000108-IRC              INDIA          Q3                   Q4                -0.0479031   -0.0867146   -0.0090916
12-24 months   ki1000111-WASH-Kenya       KENYA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000111-WASH-Kenya       KENYA          Q1                   Q4                -0.0140203   -0.0273585   -0.0006822
12-24 months   ki1000111-WASH-Kenya       KENYA          Q3                   Q4                -0.0107866   -0.0243173    0.0027441
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0024094   -0.0170443    0.0122255
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.0119448   -0.0273240    0.0034345
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0064038   -0.0232349    0.0104272
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.0013908   -0.0173285    0.0145469
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                 0.0046212   -0.0112610    0.0205035
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                 0.0148484   -0.0020233    0.0317200
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0167048   -0.0268258   -0.0065839
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.0087953   -0.0244441    0.0068535
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0072773   -0.0168988    0.0023441
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0087968   -0.0270294    0.0094358
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0204736   -0.0415571    0.0006099
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                -0.0050926   -0.0284597    0.0182746
12-24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0071408   -0.0385992    0.0243176
12-24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0032347   -0.0186152    0.0121458
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0097607   -0.0346352    0.0151139
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0214278   -0.0159187    0.0587742
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0153589   -0.0350347    0.0043168
12-24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                -0.0149589   -0.0195224   -0.0103955
12-24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0122874   -0.0174822   -0.0070925
12-24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0119428   -0.0171602   -0.0067254
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                -0.0195143   -0.0265865   -0.0124421
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                -0.0239988   -0.0337434   -0.0142542
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                -0.0141350   -0.0201666   -0.0081034
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q1                   Q4                 0.0031745   -0.0089303    0.0152792
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q2                   Q4                 0.0090181   -0.0045560    0.0225923
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q3                   Q4                 0.0033346   -0.0107723    0.0174415
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q1                   Q4                 0.0059553   -0.0094629    0.0213735
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q2                   Q4                -0.0038190   -0.0206664    0.0130283
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q3                   Q4                 0.0036093   -0.0117966    0.0190152
12-24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q1                -0.0058674   -0.0188235    0.0070887
12-24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q1                -0.0137006   -0.0328997    0.0054986
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                 0.0031714   -0.0049779    0.0113208
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                 0.0010423   -0.0073877    0.0094722
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                 0.0027340   -0.0052500    0.0107180
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                -0.0093421   -0.0505179    0.0318337
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                -0.0040776   -0.0477814    0.0396261
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                -0.0175104   -0.0597621    0.0247413
