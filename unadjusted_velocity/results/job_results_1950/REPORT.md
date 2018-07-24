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

**Outcome Variable:** y_rate_lencm

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
![](/tmp/62f88009-2f44-47de-9176-4eec27ac62ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/62f88009-2f44-47de-9176-4eec27ac62ca/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                3.6159197   3.5012373   3.7306022
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                3.4576258   3.2968745   3.6183770
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                3.5752917   3.3790909   3.7714925
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                3.6032960   3.5083993   3.6981927
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q4                   NA                4.1218973   3.9667860   4.2770085
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q1                   NA                4.1407601   3.8874613   4.3940590
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q2                   NA                3.8774174   3.6219313   4.1329036
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q3                   NA                4.0293989   3.8566258   4.2021720
0-3 months     ki0047075b-MAL-ED          INDIA          Q4                   NA                3.7153683   3.5493147   3.8814220
0-3 months     ki0047075b-MAL-ED          INDIA          Q1                   NA                3.4299272   3.2871703   3.5726841
0-3 months     ki0047075b-MAL-ED          INDIA          Q2                   NA                3.4773185   3.3178077   3.6368293
0-3 months     ki0047075b-MAL-ED          INDIA          Q3                   NA                3.6613867   3.4947969   3.8279764
0-3 months     ki0047075b-MAL-ED          NEPAL          Q4                   NA                3.8660576   3.5666755   4.1654397
0-3 months     ki0047075b-MAL-ED          NEPAL          Q1                   NA                3.7899951   3.6246885   3.9553018
0-3 months     ki0047075b-MAL-ED          NEPAL          Q2                   NA                3.8579113   3.6970682   4.0187545
0-3 months     ki0047075b-MAL-ED          NEPAL          Q3                   NA                3.8124739   3.7043689   3.9205788
0-3 months     ki0047075b-MAL-ED          PERU           Q4                   NA                3.4165649   3.3050236   3.5281062
0-3 months     ki0047075b-MAL-ED          PERU           Q1                   NA                3.3397081   3.2252119   3.4542043
0-3 months     ki0047075b-MAL-ED          PERU           Q2                   NA                3.2258926   3.0919082   3.3598770
0-3 months     ki0047075b-MAL-ED          PERU           Q3                   NA                3.2704842   3.1332723   3.4076961
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                3.5334389   3.3806926   3.6861852
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                3.3753410   3.1567467   3.5939354
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                3.4448036   3.2717449   3.6178623
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                3.4041441   3.2325227   3.5757655
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                3.7781402   3.3047234   4.2515570
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                3.7023765   3.2509778   4.1537752
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                3.1680321   2.6824970   3.6535673
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                3.6281950   3.3276248   3.9287652
0-3 months     ki1000108-IRC              INDIA          Q4                   NA                3.3233603   2.3958166   4.2509041
0-3 months     ki1000108-IRC              INDIA          Q1                   NA                3.1617382   2.9993870   3.3240894
0-3 months     ki1000108-IRC              INDIA          Q2                   NA                2.9949382   2.7624695   3.2274069
0-3 months     ki1000108-IRC              INDIA          Q3                   NA                3.3533613   3.1537977   3.5529249
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                3.7125152   3.4756236   3.9494069
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                3.5261476   3.4946920   3.5576031
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                3.6189449   3.5746456   3.6632441
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                3.7551385   3.6824269   3.8278501
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                3.3087373   3.1633609   3.4541136
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                3.2647298   3.1824894   3.3469701
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                3.3434010   3.2419001   3.4449020
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                3.3803481   3.2329465   3.5277498
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                3.4657571   3.1936367   3.7378774
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                3.4284372   3.3670367   3.4898377
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                3.4873954   3.4249586   3.5498321
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                3.5789786   3.4898907   3.6680665
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                3.3064445   3.2450573   3.3678316
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                3.3508678   3.2731499   3.4285856
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                3.1573097   2.9972311   3.3173882
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                3.2949314   3.2287754   3.3610874
0-3 months     ki1119695-PROBIT           BELARUS        Q4                   NA                2.8803310   2.7716424   2.9890197
0-3 months     ki1119695-PROBIT           BELARUS        Q1                   NA                2.5369835   2.4616918   2.6122752
0-3 months     ki1119695-PROBIT           BELARUS        Q2                   NA                2.8798009   2.7288249   3.0307769
0-3 months     ki1119695-PROBIT           BELARUS        Q3                   NA                2.8252472   2.7083229   2.9421716
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                3.3751034   3.3484117   3.4017951
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                3.2848912   3.1272088   3.4425736
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                3.3703415   3.2465284   3.4941545
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                3.3652241   3.3294124   3.4010359
0-3 months     ki1135781-COHORTS          GUATEMALA      Q1                   NA                2.6104504   2.5601517   2.6607491
0-3 months     ki1135781-COHORTS          GUATEMALA      Q2                   NA                2.6359446   2.5435895   2.7282997
0-3 months     ki1135781-COHORTS          GUATEMALA      Q3                   NA                2.7361741   2.5610134   2.9113348
0-3 months     ki1135781-COHORTS          INDIA          Q4                   NA                3.6498661   3.6238656   3.6758667
0-3 months     ki1135781-COHORTS          INDIA          Q1                   NA                3.4470097   3.4189033   3.4751162
0-3 months     ki1135781-COHORTS          INDIA          Q2                   NA                3.4772188   3.4372202   3.5172174
0-3 months     ki1135781-COHORTS          INDIA          Q3                   NA                3.5762167   3.5345525   3.6178810
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                3.8155543   3.7768530   3.8542555
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                3.6820633   3.6656488   3.6984779
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                3.7135157   3.6951631   3.7318683
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                3.7506693   3.7357857   3.7655530
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                1.9786484   1.8818985   2.0753982
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                1.9685799   1.8476772   2.0894826
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                1.9811212   1.8032866   2.1589558
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                1.8857019   1.8052021   1.9662018
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q4                   NA                2.0939236   1.9556968   2.2321505
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q1                   NA                2.1601234   1.9855584   2.3346883
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q2                   NA                2.1863873   1.9942803   2.3784943
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q3                   NA                2.1755518   2.0308630   2.3202406
3-6 months     ki0047075b-MAL-ED          INDIA          Q4                   NA                1.7889236   1.6814759   1.8963713
3-6 months     ki0047075b-MAL-ED          INDIA          Q1                   NA                2.0551527   1.9223154   2.1879901
3-6 months     ki0047075b-MAL-ED          INDIA          Q2                   NA                1.8327529   1.6967843   1.9687215
3-6 months     ki0047075b-MAL-ED          INDIA          Q3                   NA                1.9130519   1.7936602   2.0324436
3-6 months     ki0047075b-MAL-ED          NEPAL          Q4                   NA                2.1127008   1.9147095   2.3106921
3-6 months     ki0047075b-MAL-ED          NEPAL          Q1                   NA                1.9666550   1.8278396   2.1054705
3-6 months     ki0047075b-MAL-ED          NEPAL          Q2                   NA                1.9180913   1.8179883   2.0181943
3-6 months     ki0047075b-MAL-ED          NEPAL          Q3                   NA                1.9692666   1.8814543   2.0570788
3-6 months     ki0047075b-MAL-ED          PERU           Q4                   NA                1.9436442   1.8206002   2.0666883
3-6 months     ki0047075b-MAL-ED          PERU           Q1                   NA                1.9874128   1.8750177   2.0998079
3-6 months     ki0047075b-MAL-ED          PERU           Q2                   NA                2.0819356   1.9419449   2.2219263
3-6 months     ki0047075b-MAL-ED          PERU           Q3                   NA                2.0650909   1.9241920   2.2059899
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                1.9844016   1.8352049   2.1335983
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                1.8286600   1.6281695   2.0291505
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                2.0043695   1.8608532   2.1478858
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                2.0900742   1.9328172   2.2473311
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                2.0054974   1.6627419   2.3482530
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                1.6580699   1.5009798   1.8151600
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                1.8441616   1.6308015   2.0575217
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                1.8473272   1.6801447   2.0145098
3-6 months     ki1000108-IRC              INDIA          Q4                   NA                1.4809979   1.0694338   1.8925620
3-6 months     ki1000108-IRC              INDIA          Q1                   NA                1.8804763   1.7899871   1.9709654
3-6 months     ki1000108-IRC              INDIA          Q2                   NA                1.9731956   1.8380251   2.1083660
3-6 months     ki1000108-IRC              INDIA          Q3                   NA                1.8338906   1.7144435   1.9533376
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                1.8881895   1.6839096   2.0924694
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                1.9171803   1.8614984   1.9728623
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                1.9060861   1.8446633   1.9675090
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                2.0566243   2.0133982   2.0998503
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                1.9543148   1.8415020   2.0671277
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                1.7743638   1.6999530   1.8487747
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                1.8194345   1.7303378   1.9085313
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                1.9183205   1.7934493   2.0431917
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                2.0647508   1.8912743   2.2382273
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                1.9413963   1.8872570   1.9955355
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                1.9829552   1.9259911   2.0399193
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                1.9698545   1.8873506   2.0523583
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                2.0400735   1.9789867   2.1011603
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                1.9848776   1.9186106   2.0511445
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                2.0571162   1.9069114   2.2073210
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                1.9768884   1.9112700   2.0425067
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q4                   NA                1.7751669   1.6750020   1.8753319
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q1                   NA                1.6990122   1.6520079   1.7460165
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q2                   NA                1.7996979   1.6547767   1.9446191
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q3                   NA                1.5843011   1.4632577   1.7053444
3-6 months     ki1119695-PROBIT           BELARUS        Q4                   NA                2.1018237   2.0456067   2.1580406
3-6 months     ki1119695-PROBIT           BELARUS        Q1                   NA                2.0413654   1.7854477   2.2972831
3-6 months     ki1119695-PROBIT           BELARUS        Q2                   NA                2.0278490   1.9514317   2.1042663
3-6 months     ki1119695-PROBIT           BELARUS        Q3                   NA                2.0925240   2.0508841   2.1341639
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                1.9886563   1.9632360   2.0140766
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                1.9973321   1.8597293   2.1349349
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                2.0328815   1.9049268   2.1608362
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                1.9424545   1.9082692   1.9766397
3-6 months     ki1135781-COHORTS          GUATEMALA      Q1                   NA                1.7690795   1.7341466   1.8040125
3-6 months     ki1135781-COHORTS          GUATEMALA      Q2                   NA                1.7495445   1.6797557   1.8193332
3-6 months     ki1135781-COHORTS          GUATEMALA      Q3                   NA                1.6231291   1.4823406   1.7639175
3-6 months     ki1135781-COHORTS          INDIA          Q4                   NA                1.9322108   1.9101401   1.9542816
3-6 months     ki1135781-COHORTS          INDIA          Q1                   NA                1.7906032   1.7672770   1.8139294
3-6 months     ki1135781-COHORTS          INDIA          Q2                   NA                1.8693467   1.8354792   1.9032142
3-6 months     ki1135781-COHORTS          INDIA          Q3                   NA                1.8672848   1.8336635   1.9009060
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                1.9526733   1.9148646   1.9904820
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                1.9050417   1.8874422   1.9226412
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                1.9248474   1.9039765   1.9457184
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                1.9262417   1.9103215   1.9421619
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                1.1371959   1.0804316   1.1939602
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                1.1002190   1.0462273   1.1542108
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                1.1094721   1.0383016   1.1806425
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                1.1363162   1.0931296   1.1795028
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q4                   NA                1.4360538   1.3561340   1.5159736
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q1                   NA                1.2899114   1.1829102   1.3969126
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q2                   NA                1.3420722   1.2438103   1.4403341
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q3                   NA                1.4258323   1.3396466   1.5120179
6-12 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                1.1173710   1.0642229   1.1705191
6-12 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                1.1099874   1.0401765   1.1797982
6-12 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                1.1586861   1.0909727   1.2263995
6-12 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                1.0984656   1.0480005   1.1489307
6-12 months    ki0047075b-MAL-ED          NEPAL          Q4                   NA                1.2203216   1.1253430   1.3153003
6-12 months    ki0047075b-MAL-ED          NEPAL          Q1                   NA                1.3157556   1.2367948   1.3947165
6-12 months    ki0047075b-MAL-ED          NEPAL          Q2                   NA                1.2170917   1.1696494   1.2645340
6-12 months    ki0047075b-MAL-ED          NEPAL          Q3                   NA                1.2148865   1.1787780   1.2509950
6-12 months    ki0047075b-MAL-ED          PERU           Q4                   NA                1.2369678   1.1742296   1.2997059
6-12 months    ki0047075b-MAL-ED          PERU           Q1                   NA                1.1901688   1.1186844   1.2616531
6-12 months    ki0047075b-MAL-ED          PERU           Q2                   NA                1.1995695   1.1236768   1.2754621
6-12 months    ki0047075b-MAL-ED          PERU           Q3                   NA                1.2069232   1.1547228   1.2591237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                1.2029633   1.1270795   1.2788471
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                1.1533944   1.0742416   1.2325472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                1.1898417   1.1076240   1.2720595
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                1.2066314   1.1167651   1.2964977
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                1.0898856   0.8245554   1.3552159
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                1.1074523   1.0230262   1.1918785
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                1.0501137   0.9597471   1.1404803
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                1.0324681   0.9559895   1.1089467
6-12 months    ki1000108-IRC              INDIA          Q4                   NA                1.3624972   1.2546702   1.4703242
6-12 months    ki1000108-IRC              INDIA          Q1                   NA                1.2229796   1.1787273   1.2672319
6-12 months    ki1000108-IRC              INDIA          Q2                   NA                1.2462707   1.1934307   1.2991108
6-12 months    ki1000108-IRC              INDIA          Q3                   NA                1.2812161   1.2212839   1.3411483
6-12 months    ki1000304-VITAMIN-A        INDIA          Q4                   NA                1.2422382   1.1632181   1.3212583
6-12 months    ki1000304-VITAMIN-A        INDIA          Q1                   NA                1.0743741   1.0573621   1.0913861
6-12 months    ki1000304-VITAMIN-A        INDIA          Q2                   NA                1.1232058   1.1031444   1.1432672
6-12 months    ki1000304-VITAMIN-A        INDIA          Q3                   NA                1.1788690   1.1504758   1.2072621
6-12 months    ki1000304-Vitamin-B12      INDIA          Q4                   NA                1.2636977   1.1925309   1.3348645
6-12 months    ki1000304-Vitamin-B12      INDIA          Q1                   NA                1.2578243   1.1679518   1.3476969
6-12 months    ki1000304-Vitamin-B12      INDIA          Q2                   NA                1.2784023   1.0905638   1.4662409
6-12 months    ki1000304-Vitamin-B12      INDIA          Q3                   NA                1.1982311   1.0838520   1.3126101
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                1.2281717   1.1016337   1.3547097
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                1.0532617   1.0243896   1.0821339
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                1.1461613   1.1232977   1.1690249
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                1.1167304   1.0914709   1.1419899
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.8819900   0.8115340   0.9524460
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                1.0124067   0.9254965   1.0993168
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                1.1055997   0.8265383   1.3846611
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.9641707   0.7885632   1.1397781
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                1.2441144   1.1758318   1.3123969
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                1.1285435   1.0943267   1.1627603
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                1.1757757   1.1377762   1.2137751
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                1.1943465   1.1364178   1.2522751
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                1.3405057   1.2353849   1.4456265
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                1.1382049   1.1111644   1.1652454
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                1.1647428   1.1363821   1.1931035
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                1.2407683   1.2059516   1.2755849
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                1.2421271   1.2112932   1.2729611
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                1.2003450   1.1634804   1.2372097
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                1.2351189   1.1758628   1.2943750
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                1.2320488   1.2038201   1.2602776
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                1.1524523   1.1064819   1.1984227
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                1.0577580   0.9825601   1.1329559
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                1.0759734   1.0188476   1.1330992
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                1.0903357   1.0002242   1.1804473
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                1.1953420   1.1451675   1.2455165
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                1.1633910   1.1390348   1.1877472
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                1.1064843   1.0514448   1.1615238
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                1.2267348   1.1692810   1.2841887
6-12 months    ki1119695-PROBIT           BELARUS        Q4                   NA                1.4703922   1.4374972   1.5032871
6-12 months    ki1119695-PROBIT           BELARUS        Q1                   NA                1.7115685   1.5885730   1.8345640
6-12 months    ki1119695-PROBIT           BELARUS        Q2                   NA                1.5161519   1.4400913   1.5922125
6-12 months    ki1119695-PROBIT           BELARUS        Q3                   NA                1.4682841   1.4293217   1.5072465
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                1.2145477   1.2009834   1.2281120
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                1.1458838   1.0743970   1.2173705
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                1.1742619   1.1115900   1.2369339
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                1.1719551   1.1521446   1.1917656
6-12 months    ki1135781-COHORTS          INDIA          Q4                   NA                1.1514290   1.1368759   1.1659822
6-12 months    ki1135781-COHORTS          INDIA          Q1                   NA                1.0116752   0.9952813   1.0280690
6-12 months    ki1135781-COHORTS          INDIA          Q2                   NA                1.0620017   1.0393530   1.0846503
6-12 months    ki1135781-COHORTS          INDIA          Q3                   NA                1.1185490   1.0960611   1.1410369
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                1.1183647   1.0959731   1.1407564
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                1.0226142   0.9978418   1.0473865
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                1.0709861   1.0286989   1.1132733
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                1.0541539   1.0346804   1.0736274
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q4                   NA                1.2435880   1.2132114   1.2739645
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q1                   NA                1.2214882   1.1851166   1.2578598
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q2                   NA                1.2128086   1.1790456   1.2465716
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q3                   NA                1.2089239   1.1750908   1.2427571
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q4                   NA                1.2028003   1.1535539   1.2520468
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q1                   NA                1.1887440   1.1367798   1.2407083
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q2                   NA                1.2109452   1.1684460   1.2534443
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q3                   NA                1.1837782   1.1397546   1.2278017
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                1.1547186   1.1279745   1.1814626
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                1.0823753   1.0722202   1.0925303
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                1.1046476   1.0925114   1.1167839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                1.1244062   1.1132333   1.1355790
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                1.3257782   1.1463524   1.5052040
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                1.2016674   1.1847561   1.2185786
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                1.1720282   1.0617158   1.2823406
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                1.2396478   1.1525007   1.3267949
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.8513488   0.8175954   0.8851022
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.8399510   0.8054987   0.8744033
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.8617313   0.8213957   0.9020669
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.8512031   0.8186984   0.8837077
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   NA                1.0119402   0.9607694   1.0631110
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   NA                0.9772366   0.9133646   1.0411086
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   NA                0.9256622   0.8446813   1.0066431
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   NA                0.9716780   0.9138995   1.0294565
12-24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.9308344   0.8937972   0.9678717
12-24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.8827116   0.8363952   0.9290279
12-24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.8796217   0.8471212   0.9121222
12-24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.8532948   0.8236733   0.8829163
12-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   NA                0.9161909   0.8753464   0.9570355
12-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   NA                0.8593161   0.8218698   0.8967624
12-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   NA                0.8396750   0.8062748   0.8730753
12-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   NA                0.8740184   0.8521704   0.8958665
12-24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.8852624   0.8437678   0.9267571
12-24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.8310088   0.7833167   0.8787009
12-24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.8330502   0.7959742   0.8701261
12-24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.8254879   0.7894396   0.8615362
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.8946424   0.8451393   0.9441454
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.8784356   0.8261823   0.9306889
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.8567836   0.8209850   0.8925822
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.8461803   0.8084719   0.8838886
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.8198865   0.6667331   0.9730400
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.7047966   0.6553798   0.7542135
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.7532551   0.7048530   0.8016573
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.7437945   0.7009476   0.7866413
12-24 months   ki1000108-IRC              INDIA          Q4                   NA                0.9766930   0.8780120   1.0753739
12-24 months   ki1000108-IRC              INDIA          Q1                   NA                0.8255722   0.7957073   0.8554370
12-24 months   ki1000108-IRC              INDIA          Q2                   NA                0.8199619   0.7809556   0.8589682
12-24 months   ki1000108-IRC              INDIA          Q3                   NA                0.8298036   0.7948593   0.8647480
12-24 months   ki1000111-WASH-Kenya       KENYA          Q4                   NA                0.8939938   0.8649071   0.9230805
12-24 months   ki1000111-WASH-Kenya       KENYA          Q1                   NA                0.8287266   0.8040177   0.8534355
12-24 months   ki1000111-WASH-Kenya       KENYA          Q3                   NA                0.8456736   0.8172999   0.8740473
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.7982138   0.7581571   0.8382705
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.7445289   0.7224685   0.7665892
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.7283024   0.7008342   0.7557706
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.7694141   0.7341909   0.8046372
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q4                   NA                0.8992834   0.8401452   0.9584215
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q1                   NA                0.8296624   0.8110332   0.8482915
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q2                   NA                0.8616486   0.8423582   0.8809391
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q3                   NA                0.8999438   0.8739680   0.9259195
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.9035351   0.8852904   0.9217798
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.8431967   0.8174932   0.8689002
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.8648643   0.8227851   0.9069434
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.8675842   0.8471354   0.8880331
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.8856756   0.8297241   0.9416271
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.8313600   0.8133659   0.8493541
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.8229562   0.7828921   0.8630204
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.8484565   0.7978407   0.8990723
12-24 months   ki1119695-PROBIT           BELARUS        Q4                   NA                0.8776908   0.8191786   0.9362029
12-24 months   ki1119695-PROBIT           BELARUS        Q2                   NA                0.8472103   0.7592851   0.9351356
12-24 months   ki1119695-PROBIT           BELARUS        Q3                   NA                0.8570525   0.8015978   0.9125071
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.7265205   0.6921322   0.7609088
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.6188146   0.5445315   0.6930977
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.7640215   0.6699641   0.8580789
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.6839053   0.6399205   0.7278900
12-24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.8786414   0.8699537   0.8873291
12-24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.7721159   0.7618133   0.7824185
12-24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.7978009   0.7851217   0.8104802
12-24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.8151645   0.8024242   0.8279047
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.7581058   0.7452568   0.7709549
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.6704377   0.6550470   0.6858284
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6681924   0.6432902   0.6930947
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6975450   0.6859759   0.7091142
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q4                   NA                0.8077736   0.7824491   0.8330981
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q1                   NA                0.8057596   0.7810338   0.8304854
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q2                   NA                0.8191470   0.7905373   0.8477567
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q3                   NA                0.7957882   0.7652383   0.8263380
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q4                   NA                0.8357908   0.8004976   0.8710840
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q1                   NA                0.8424895   0.8161378   0.8688411
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q2                   NA                0.8142882   0.7836439   0.8449326
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q3                   NA                0.8359407   0.8086933   0.8631880
12-24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                0.8442916   0.8230283   0.8655550
12-24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                0.8354393   0.8056582   0.8652204
12-24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                0.8380275   0.7916972   0.8843578
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.8248262   0.8027873   0.8468650
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.7881787   0.7801923   0.7961652
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.7894874   0.7781570   0.8008178
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.8058700   0.7972284   0.8145116
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.8877423   0.7713880   1.0040966
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.8478301   0.8401308   0.8555294
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.8663028   0.8262092   0.9063963
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.8300236   0.7929492   0.8670981


### Parameter: E(Y)


diffcat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
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
6-12 months    ki1000304-VITAMIN-A        INDIA          NA                   NA                1.1101515   1.0983243   1.1219787
6-12 months    ki1000304-Vitamin-B12      INDIA          NA                   NA                1.2475311   1.1931742   1.3018880
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
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         NA                   NA                1.2227917   1.2059762   1.2396072
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         NA                   NA                1.1960390   1.1724665   1.2196115
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
12-24 months   ki1000111-WASH-Kenya       KENYA          NA                   NA                0.8487677   0.8325231   0.8650122
12-24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.8382988   0.8227925   0.8538051
12-24 months   ki1119695-PROBIT           BELARUS        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.8223511   0.8167901   0.8279120
12-24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         NA                   NA                0.8060485   0.7921231   0.8199740
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         NA                   NA                0.8325979   0.8176481   0.8475477
12-24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                0.8415038   0.8246015   0.8584060
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.7967221   0.7914091   0.8020350
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.8480174   0.8406257   0.8554091


### Parameter: ATE


diffcat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.1582939   -0.3557605    0.0391726
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                -0.0406280   -0.2678874    0.1866314
0-3 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0126237   -0.1614775    0.1362301
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                 0.0188629   -0.2781553    0.3158811
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.2444798   -0.5433656    0.0544059
0-3 months     ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0924984   -0.3246837    0.1396870
0-3 months     ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.2854411   -0.5044237   -0.0664586
0-3 months     ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.2380499   -0.4683052   -0.0077945
0-3 months     ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0539817   -0.2891964    0.1812330
0-3 months     ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.0760624   -0.4180507    0.2659258
0-3 months     ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.0081463   -0.3479994    0.3317069
0-3 months     ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.0535837   -0.3718860    0.2647185
0-3 months     ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0768568   -0.2367031    0.0829895
0-3 months     ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.1906724   -0.3650091   -0.0163357
0-3 months     ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.1460807   -0.3229099    0.0307484
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.1580978   -0.4247716    0.1085760
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0886353   -0.3194615    0.1421910
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.1292948   -0.3590454    0.1004558
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.0757637   -0.7298923    0.5783649
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.6101081   -1.2882436    0.0680275
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.1499452   -0.7107178    0.4108274
0-3 months     ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA          Q1                   Q4                -0.1616222   -1.1032671    0.7800228
0-3 months     ki1000108-IRC              INDIA          Q2                   Q4                -0.3284221   -1.2846538    0.6278095
0-3 months     ki1000108-IRC              INDIA          Q3                   Q4                 0.0300010   -0.9187682    0.9787701
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                -0.1863677   -0.4352245    0.0624892
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                -0.0935704   -0.3161748    0.1290340
0-3 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                 0.0426232   -0.1493130    0.2345595
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0440075   -0.2110337    0.1230187
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                 0.0346638   -0.1426403    0.2119678
0-3 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                 0.0716109   -0.1354194    0.2786412
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.0373199   -0.3162813    0.2416416
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                 0.0216383   -0.2575530    0.3008297
0-3 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                 0.1132216   -0.1731106    0.3995538
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                 0.0444233   -0.0546143    0.1434609
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.1491348   -0.3205802    0.0223106
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0115131   -0.1017627    0.0787366
0-3 months     ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.3433475   -0.4761926   -0.2105025
0-3 months     ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0005302   -0.1195923    0.1185319
0-3 months     ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0550838   -0.1172427    0.0070751
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0902122   -0.2501378    0.0697134
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                -0.0047619   -0.1314195    0.1218956
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0098793   -0.0545439    0.0347854
0-3 months     ki1135781-COHORTS          GUATEMALA      Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA      Q2                   Q1                 0.0254941   -0.0796697    0.1306580
0-3 months     ki1135781-COHORTS          GUATEMALA      Q3                   Q1                 0.1257237   -0.0565158    0.3079631
0-3 months     ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA          Q1                   Q4                -0.2028564   -0.2411448   -0.1645680
0-3 months     ki1135781-COHORTS          INDIA          Q2                   Q4                -0.1726474   -0.2203540   -0.1249408
0-3 months     ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0736494   -0.1227609   -0.0245379
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.1334909   -0.1754282   -0.0915537
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.1020386   -0.1445950   -0.0594822
0-3 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0648849   -0.1049925   -0.0247774
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0100684   -0.1649167    0.1447799
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.0024728   -0.1999764    0.2049220
3-6 months     ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0929464   -0.2188066    0.0329137
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                 0.0661997   -0.1564650    0.2888644
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                 0.0924636   -0.1442044    0.3291317
3-6 months     ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                 0.0816282   -0.1184756    0.2817319
3-6 months     ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA          Q1                   Q4                 0.2662291    0.0953760    0.4370822
3-6 months     ki0047075b-MAL-ED          INDIA          Q2                   Q4                 0.0438293   -0.1294695    0.2171281
3-6 months     ki0047075b-MAL-ED          INDIA          Q3                   Q4                 0.1241283   -0.0364936    0.2847501
3-6 months     ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.1460458   -0.3878520    0.0957605
3-6 months     ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.1946095   -0.4164679    0.0272489
3-6 months     ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.1434343   -0.3600250    0.0731564
3-6 months     ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU           Q1                   Q4                 0.0437685   -0.1228823    0.2104193
3-6 months     ki0047075b-MAL-ED          PERU           Q2                   Q4                 0.1382914   -0.0480879    0.3246706
3-6 months     ki0047075b-MAL-ED          PERU           Q3                   Q4                 0.1214467   -0.0656157    0.3085091
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.1557416   -0.4056538    0.0941706
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                 0.0199679   -0.1870504    0.2269862
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                 0.1056726   -0.1110978    0.3224430
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.3474275   -0.7244669    0.0296118
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.1613358   -0.5650733    0.2424016
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.1581702   -0.5395249    0.2231845
3-6 months     ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA          Q1                   Q4                 0.3994783   -0.0219161    0.8208728
3-6 months     ki1000108-IRC              INDIA          Q2                   Q4                 0.4921976    0.0590048    0.9253905
3-6 months     ki1000108-IRC              INDIA          Q3                   Q4                 0.3528927   -0.0756544    0.7814397
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                 0.0289908   -0.2049107    0.2628924
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                 0.0178966   -0.1982199    0.2340131
3-6 months     ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                 0.1684348   -0.0185281    0.3553976
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.1799510   -0.3150943   -0.0448077
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.1348803   -0.2786335    0.0088728
3-6 months     ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0359943   -0.2042785    0.1322898
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.1233545   -0.3050828    0.0583737
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.0817956   -0.2643853    0.1007941
3-6 months     ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.0948963   -0.2869926    0.0972000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0551959   -0.1453231    0.0349312
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                 0.0170427   -0.1451087    0.1791941
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0631851   -0.1528365    0.0264662
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0761547   -0.1868002    0.0344908
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                 0.0245310   -0.1516371    0.2006990
3-6 months     ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                -0.1908659   -0.3479789   -0.0337528
3-6 months     ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS        Q1                   Q4                -0.0604583   -0.3035340    0.1826175
3-6 months     ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0739747   -0.1577774    0.0098281
3-6 months     ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0092996   -0.0532045    0.0346052
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                 0.0086758   -0.1312553    0.1486069
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0442252   -0.0862301    0.1746806
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0462018   -0.0888025   -0.0036011
3-6 months     ki1135781-COHORTS          GUATEMALA      Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA      Q2                   Q1                -0.0195350   -0.0975785    0.0585084
3-6 months     ki1135781-COHORTS          GUATEMALA      Q3                   Q1                -0.1459504   -0.2910080   -0.0008929
3-6 months     ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA          Q1                   Q4                -0.1416076   -0.1737204   -0.1094949
3-6 months     ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0628641   -0.1032885   -0.0224398
3-6 months     ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0649260   -0.1051443   -0.0247078
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0476316   -0.0897967   -0.0054665
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0278259   -0.0704644    0.0148126
3-6 months     kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0264316   -0.0660378    0.0131746
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0369769   -0.1153178    0.0413640
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                -0.0277239   -0.1187591    0.0633114
6-12 months    ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0008797   -0.0722047    0.0704454
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.1461424   -0.2796955   -0.0125894
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.0939817   -0.2206409    0.0326776
6-12 months    ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0102216   -0.1277594    0.1073162
6-12 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0073836   -0.0951234    0.0803562
6-12 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                 0.0413152   -0.0447652    0.1273955
6-12 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0189054   -0.0921955    0.0543848
6-12 months    ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL          Q1                   Q4                 0.0954340   -0.0280802    0.2189482
6-12 months    ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.0032299   -0.1093983    0.1029384
6-12 months    ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.0054352   -0.1070461    0.0961757
6-12 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0467990   -0.1419099    0.0483119
6-12 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0373983   -0.1358655    0.0610688
6-12 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0300446   -0.1116593    0.0515702
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.0495689   -0.1592207    0.0600829
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0131216   -0.1250060    0.0987628
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                 0.0036681   -0.1139512    0.1212874
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                 0.0175667   -0.2608717    0.2960051
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.0397720   -0.3200687    0.2405248
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.0574175   -0.3335500    0.2187149
6-12 months    ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA          Q1                   Q4                -0.1395176   -0.2560720   -0.0229632
6-12 months    ki1000108-IRC              INDIA          Q2                   Q4                -0.1162264   -0.2363045    0.0038516
6-12 months    ki1000108-IRC              INDIA          Q3                   Q4                -0.0812811   -0.2046445    0.0420823
6-12 months    ki1000304-VITAMIN-A        INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-VITAMIN-A        INDIA          Q1                   Q4                -0.1678641   -0.2486947   -0.0870335
6-12 months    ki1000304-VITAMIN-A        INDIA          Q2                   Q4                -0.1190324   -0.2005593   -0.0375055
6-12 months    ki1000304-VITAMIN-A        INDIA          Q3                   Q4                -0.0633693   -0.1473356    0.0205971
6-12 months    ki1000304-Vitamin-B12      INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-Vitamin-B12      INDIA          Q1                   Q4                -0.0058734   -0.1205110    0.1087643
6-12 months    ki1000304-Vitamin-B12      INDIA          Q2                   Q4                 0.0147046   -0.1861636    0.2155728
6-12 months    ki1000304-Vitamin-B12      INDIA          Q3                   Q4                -0.0654666   -0.2001785    0.0692452
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                -0.1749100   -0.3184385   -0.0313814
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                -0.0820104   -0.2117830    0.0477621
6-12 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                -0.1114413   -0.2482236    0.0253410
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                 0.1304166    0.0185354    0.2422979
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                 0.2236097   -0.0642085    0.5114279
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                 0.0821807   -0.1070335    0.2713949
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.1155709   -0.1919469   -0.0391949
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.0683387   -0.1464825    0.0098051
6-12 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0497679   -0.1393125    0.0397766
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.2023008   -0.3108437   -0.0937579
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.1757629   -0.2846422   -0.0668836
6-12 months    ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                -0.0997374   -0.2104739    0.0109991
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0417821   -0.0898418    0.0062776
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.0070082   -0.0738065    0.0597901
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0100783   -0.0518825    0.0317259
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                -0.0946943   -0.1828306   -0.0065581
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                -0.0764789   -0.1498045   -0.0031533
6-12 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                -0.0621166   -0.1632767    0.0390436
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0319510   -0.0877247    0.0238227
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0888577   -0.1633347   -0.0143807
6-12 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                 0.0313928   -0.0448858    0.1076714
6-12 months    ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS        Q1                   Q4                 0.2411764    0.1182524    0.3641004
6-12 months    ki1119695-PROBIT           BELARUS        Q2                   Q4                 0.0457598   -0.0142721    0.1057916
6-12 months    ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0021081   -0.0248030    0.0205868
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.0686639   -0.1414262    0.0040983
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                -0.0402857   -0.1044088    0.0238373
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0425926   -0.0666019   -0.0185832
6-12 months    ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA          Q1                   Q4                -0.1397538   -0.1616754   -0.1178323
6-12 months    ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0894274   -0.1163487   -0.0625061
6-12 months    ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0328801   -0.0596663   -0.0060939
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                -0.0957505   -0.1291430   -0.0623581
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                -0.0473786   -0.0952283    0.0004711
6-12 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                -0.0642108   -0.0938857   -0.0345359
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q1                   Q4                -0.0220998   -0.0694879    0.0252883
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q2                   Q4                -0.0307794   -0.0761960    0.0146373
6-12 months    ki1148112-iLiNS-DOSE       MALAWI         Q3                   Q4                -0.0346640   -0.0801329    0.0108048
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q1                   Q4                -0.0140563   -0.0856488    0.0575362
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q2                   Q4                 0.0081448   -0.0569043    0.0731939
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI         Q3                   Q4                -0.0190222   -0.0850773    0.0470329
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0723433   -0.1005468   -0.0441398
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0500709   -0.0799378   -0.0202040
6-12 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0303124   -0.0598071   -0.0008178
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                -0.1241108   -0.3038457    0.0556241
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                -0.1537500   -0.3643827    0.0568827
6-12 months    kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                -0.0861304   -0.2855998    0.1133391
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                -0.0113978   -0.0596291    0.0368335
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                 0.0103825   -0.0422127    0.0629777
12-24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                -0.0001458   -0.0470056    0.0467141
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q1                   Q4                -0.0347036   -0.1165454    0.0471383
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q2                   Q4                -0.0862780   -0.1820713    0.0095153
12-24 months   ki0047075b-MAL-ED          BRAZIL         Q3                   Q4                -0.0402622   -0.1174426    0.0369182
12-24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                -0.0481229   -0.1074268    0.0111811
12-24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                -0.0512127   -0.1004878   -0.0019375
12-24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                -0.0775396   -0.1249653   -0.0301140
12-24 months   ki0047075b-MAL-ED          NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL          Q1                   Q4                -0.0568748   -0.1122869   -0.0014627
12-24 months   ki0047075b-MAL-ED          NEPAL          Q2                   Q4                -0.0765159   -0.1292782   -0.0237537
12-24 months   ki0047075b-MAL-ED          NEPAL          Q3                   Q4                -0.0421725   -0.0884933    0.0041483
12-24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                -0.0542536   -0.1174703    0.0089630
12-24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                -0.0522122   -0.1078578    0.0034334
12-24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                -0.0597746   -0.1147408   -0.0048083
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                -0.0162068   -0.0881857    0.0557721
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                -0.0378588   -0.0989496    0.0232321
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                -0.0484621   -0.1106913    0.0137671
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                -0.1150899   -0.2760185    0.0458387
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                -0.0666314   -0.2272513    0.0939885
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                -0.0760920   -0.2351261    0.0829420
12-24 months   ki1000108-IRC              INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA          Q1                   Q4                -0.1511208   -0.2542219   -0.0480197
12-24 months   ki1000108-IRC              INDIA          Q2                   Q4                -0.1567311   -0.2628415   -0.0506206
12-24 months   ki1000108-IRC              INDIA          Q3                   Q4                -0.1468894   -0.2515748   -0.0422039
12-24 months   ki1000111-WASH-Kenya       KENYA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1000111-WASH-Kenya       KENYA          Q1                   Q4                -0.0652672   -0.1034322   -0.0271022
12-24 months   ki1000111-WASH-Kenya       KENYA          Q3                   Q4                -0.0483202   -0.0889540   -0.0076864
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                -0.0536849   -0.0994145   -0.0079553
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                -0.0699114   -0.1184813   -0.0213414
12-24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                -0.0287997   -0.0821402    0.0245408
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q1                   Q4                -0.0696210   -0.1316240   -0.0076180
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q2                   Q4                -0.0376348   -0.0998396    0.0245701
12-24 months   ki1017093b-PROVIDE         BANGLADESH     Q3                   Q4                 0.0006604   -0.0639311    0.0652519
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                -0.0603384   -0.0918589   -0.0288180
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                -0.0386708   -0.0845350    0.0071933
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                -0.0359509   -0.0633557   -0.0085460
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                -0.0543156   -0.1130894    0.0044582
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                -0.0627194   -0.1315358    0.0060971
12-24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                -0.0372191   -0.1126679    0.0382298
12-24 months   ki1119695-PROBIT           BELARUS        Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS        Q2                   Q4                -0.0304804   -0.1209006    0.0599397
12-24 months   ki1119695-PROBIT           BELARUS        Q3                   Q4                -0.0206383   -0.0633120    0.0220354
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                -0.1077059   -0.1895627   -0.0258491
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                 0.0375010   -0.0626456    0.1376477
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                -0.0426152   -0.0984472    0.0132168
12-24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                -0.1065255   -0.1200021   -0.0930489
12-24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                -0.0808405   -0.0962105   -0.0654704
12-24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                -0.0634769   -0.0788973   -0.0480565
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                -0.0876681   -0.1077173   -0.0676189
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                -0.0899134   -0.1179352   -0.0618916
12-24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                -0.0605608   -0.0778507   -0.0432708
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q1                   Q4                -0.0020140   -0.0374074    0.0333795
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q2                   Q4                 0.0113734   -0.0268345    0.0495813
12-24 months   ki1148112-iLiNS-DOSE       MALAWI         Q3                   Q4                -0.0119854   -0.0516670    0.0276961
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q1                   Q4                 0.0066987   -0.0373469    0.0507444
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q2                   Q4                -0.0215025   -0.0682431    0.0252381
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI         Q3                   Q4                 0.0001499   -0.0444374    0.0447372
12-24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q1                -0.0088524   -0.0454453    0.0277406
12-24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q1                -0.0062642   -0.0572409    0.0447126
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                -0.0366474   -0.0600986   -0.0131963
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                -0.0353388   -0.0599089   -0.0107687
12-24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                -0.0189562   -0.0420224    0.0041100
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                -0.0399122   -0.1563876    0.0765633
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                -0.0214395   -0.1444913    0.1016123
12-24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                -0.0577186   -0.1798071    0.0643698
