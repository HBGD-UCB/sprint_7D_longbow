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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        mage       n_cell       n
-------------  --------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <20            35     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [20-25)        79     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [25-30)        88     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=30           42     244
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <20            32     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [20-25)        77     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [25-30)        84     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=30           38     231
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <20            31     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [20-25)        72     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [25-30)        81     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=30           36     220
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <20            29     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [20-25)        61     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [25-30)        80     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=30           36     206
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <20            11      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [20-25)        14      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)         5      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30            8      38
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <20            61     564
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [20-25)       213     564
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [25-30)       168     564
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=30          122     564
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <20            56     521
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [20-25)       189     521
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [25-30)       161     521
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=30          115     521
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <20            53     480
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [20-25)       174     480
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [25-30)       150     480
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=30          103     480
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <20            43     419
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [20-25)       157     419
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [25-30)       127     419
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=30           92     419
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <20            72     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [20-25)       258     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [25-30)       188     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=30          116     634
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <20            62     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [20-25)       227     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [25-30)       178     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=30          107     574
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <20            59     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [20-25)       213     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)       174     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=30           99     545
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <20            53     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [20-25)       186     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)       142     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30           77     458
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <20           130     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)       247     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)       220     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=30          123     720
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <20           126     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)       236     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)       214     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=30          119     695
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <20           123     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)       228     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)       207     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=30          118     676
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <20            98     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)       168     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)       150     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=30           79     495
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     <20          8178   20035
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [20-25)      6355   20035
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [25-30)      3562   20035
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     >=30         1940   20035
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     <20          5600   12577
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [20-25)      3910   12577
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [25-30)      2076   12577
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     >=30          991   12577
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     <20          4333    9835
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [20-25)      3074    9835
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)      1611    9835
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30          817    9835
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <20          1920    4650
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [20-25)      1499    4650
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)       799    4650
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30          432    4650
0-3 months     ki1119695-PROBIT            BELARUS                        <20          1295   12745
0-3 months     ki1119695-PROBIT            BELARUS                        [20-25)      5553   12745
0-3 months     ki1119695-PROBIT            BELARUS                        [25-30)      3562   12745
0-3 months     ki1119695-PROBIT            BELARUS                        >=30         2335   12745
3-6 months     ki1119695-PROBIT            BELARUS                        <20          1386   13309
3-6 months     ki1119695-PROBIT            BELARUS                        [20-25)      5837   13309
3-6 months     ki1119695-PROBIT            BELARUS                        [25-30)      3717   13309
3-6 months     ki1119695-PROBIT            BELARUS                        >=30         2369   13309
6-12 months    ki1119695-PROBIT            BELARUS                        <20          1341   12896
6-12 months    ki1119695-PROBIT            BELARUS                        [20-25)      5674   12896
6-12 months    ki1119695-PROBIT            BELARUS                        [25-30)      3579   12896
6-12 months    ki1119695-PROBIT            BELARUS                        >=30         2302   12896
12-24 months   ki1119695-PROBIT            BELARUS                        <20           224    2533
12-24 months   ki1119695-PROBIT            BELARUS                        [20-25)      1097    2533
12-24 months   ki1119695-PROBIT            BELARUS                        [25-30)       712    2533
12-24 months   ki1119695-PROBIT            BELARUS                        >=30          500    2533
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <20            32     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [20-25)        56     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [25-30)        53     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=30           39     180
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <20            37     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [20-25)        62     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [25-30)        62     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=30           47     208
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <20            34     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [20-25)        57     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [25-30)        60     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=30           43     194
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <20            27     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [20-25)        47     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [25-30)        51     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=30           40     165
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [20-25)         2      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   [25-30)         6      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   >=30            4      12
12-24 months   ki1101329-Keneba            GAMBIA                         <20           130    1173
12-24 months   ki1101329-Keneba            GAMBIA                         [20-25)       275    1173
12-24 months   ki1101329-Keneba            GAMBIA                         [25-30)       262    1173
12-24 months   ki1101329-Keneba            GAMBIA                         >=30          506    1173
6-12 months    ki1101329-Keneba            GAMBIA                         <20           160    1304
6-12 months    ki1101329-Keneba            GAMBIA                         [20-25)       307    1304
6-12 months    ki1101329-Keneba            GAMBIA                         [25-30)       297    1304
6-12 months    ki1101329-Keneba            GAMBIA                         >=30          540    1304
0-3 months     ki1101329-Keneba            GAMBIA                         <20           201    1276
0-3 months     ki1101329-Keneba            GAMBIA                         [20-25)       299    1276
0-3 months     ki1101329-Keneba            GAMBIA                         [25-30)       287    1276
0-3 months     ki1101329-Keneba            GAMBIA                         >=30          489    1276
3-6 months     ki1101329-Keneba            GAMBIA                         <20           185    1394
3-6 months     ki1101329-Keneba            GAMBIA                         [20-25)       349    1394
3-6 months     ki1101329-Keneba            GAMBIA                         [25-30)       304    1394
3-6 months     ki1101329-Keneba            GAMBIA                         >=30          556    1394
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          <20            70     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)       285     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)       324     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          >=30          293     972
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          <20            66     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)       282     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)       312     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          >=30          285     945
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          <20            63     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)       271     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)       316     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          >=30          287     937
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      <20            30     179
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [20-25)        71     179
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)        39     179
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30           39     179
3-6 months     ki1135781-COHORTS           GUATEMALA                      <20            95     805
3-6 months     ki1135781-COHORTS           GUATEMALA                      [20-25)       216     805
3-6 months     ki1135781-COHORTS           GUATEMALA                      [25-30)       181     805
3-6 months     ki1135781-COHORTS           GUATEMALA                      >=30          313     805
6-12 months    ki1135781-COHORTS           GUATEMALA                      <20           105     862
6-12 months    ki1135781-COHORTS           GUATEMALA                      [20-25)       234     862
6-12 months    ki1135781-COHORTS           GUATEMALA                      [25-30)       189     862
6-12 months    ki1135781-COHORTS           GUATEMALA                      >=30          334     862
12-24 months   ki1135781-COHORTS           GUATEMALA                      <20           118     874
12-24 months   ki1135781-COHORTS           GUATEMALA                      [20-25)       235     874
12-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)       194     874
12-24 months   ki1135781-COHORTS           GUATEMALA                      >=30          327     874
0-3 months     ki1135781-COHORTS           GUATEMALA                      <20            92     728
0-3 months     ki1135781-COHORTS           GUATEMALA                      [20-25)       193     728
0-3 months     ki1135781-COHORTS           GUATEMALA                      [25-30)       154     728
0-3 months     ki1135781-COHORTS           GUATEMALA                      >=30          289     728
0-3 months     ki0047075b-MAL-ED           INDIA                          <20            27     200
0-3 months     ki0047075b-MAL-ED           INDIA                          [20-25)        91     200
0-3 months     ki0047075b-MAL-ED           INDIA                          [25-30)        65     200
0-3 months     ki0047075b-MAL-ED           INDIA                          >=30           17     200
3-6 months     ki0047075b-MAL-ED           INDIA                          <20            33     227
3-6 months     ki0047075b-MAL-ED           INDIA                          [20-25)       100     227
3-6 months     ki0047075b-MAL-ED           INDIA                          [25-30)        74     227
3-6 months     ki0047075b-MAL-ED           INDIA                          >=30           20     227
6-12 months    ki0047075b-MAL-ED           INDIA                          <20            33     222
6-12 months    ki0047075b-MAL-ED           INDIA                          [20-25)        97     222
6-12 months    ki0047075b-MAL-ED           INDIA                          [25-30)        72     222
6-12 months    ki0047075b-MAL-ED           INDIA                          >=30           20     222
12-24 months   ki0047075b-MAL-ED           INDIA                          <20            33     223
12-24 months   ki0047075b-MAL-ED           INDIA                          [20-25)        98     223
12-24 months   ki0047075b-MAL-ED           INDIA                          [25-30)        72     223
12-24 months   ki0047075b-MAL-ED           INDIA                          >=30           20     223
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          <20            27     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)       155     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)        88     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          >=30           37     307
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          <20            29     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)       160     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)        95     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          >=30           39     323
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          <20            30     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)       161     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)        96     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          >=30           37     324
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          <20             6      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)        44      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)        33      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          >=30            4      87
3-6 months     ki1000108-IRC               INDIA                          <20            35     397
3-6 months     ki1000108-IRC               INDIA                          [20-25)       213     397
3-6 months     ki1000108-IRC               INDIA                          [25-30)       121     397
3-6 months     ki1000108-IRC               INDIA                          >=30           28     397
6-12 months    ki1000108-IRC               INDIA                          <20            35     400
6-12 months    ki1000108-IRC               INDIA                          [20-25)       215     400
6-12 months    ki1000108-IRC               INDIA                          [25-30)       122     400
6-12 months    ki1000108-IRC               INDIA                          >=30           28     400
12-24 months   ki1000108-IRC               INDIA                          <20            35     396
12-24 months   ki1000108-IRC               INDIA                          [20-25)       212     396
12-24 months   ki1000108-IRC               INDIA                          [25-30)       121     396
12-24 months   ki1000108-IRC               INDIA                          >=30           28     396
0-3 months     ki1000108-IRC               INDIA                          <20            33     377
0-3 months     ki1000108-IRC               INDIA                          [20-25)       204     377
0-3 months     ki1000108-IRC               INDIA                          [25-30)       113     377
0-3 months     ki1000108-IRC               INDIA                          >=30           27     377
6-12 months    ki1000304-VITAMIN-A         INDIA                          <20           109    2017
6-12 months    ki1000304-VITAMIN-A         INDIA                          [20-25)       918    2017
6-12 months    ki1000304-VITAMIN-A         INDIA                          [25-30)       693    2017
6-12 months    ki1000304-VITAMIN-A         INDIA                          >=30          297    2017
3-6 months     ki1000304-VITAMIN-A         INDIA                          <20             2      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          [20-25)         5      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          [25-30)         3      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          >=30            2      12
6-12 months    ki1000304-Vitamin-B12       INDIA                          <20             2      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          [20-25)        23      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          [25-30)        17      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          >=30            7      49
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <20           133    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [20-25)       564    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [25-30)       335    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=30          136    1168
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <20           129    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [20-25)       540    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [25-30)       323    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=30          132    1124
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <20           148    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [20-25)       558    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)       303    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=30          128    1137
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          <20            27     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [20-25)       113     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)       114     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30           78     332
0-3 months     ki1135781-COHORTS           INDIA                          <20           364    4601
0-3 months     ki1135781-COHORTS           INDIA                          [20-25)      1572    4601
0-3 months     ki1135781-COHORTS           INDIA                          [25-30)      1524    4601
0-3 months     ki1135781-COHORTS           INDIA                          >=30         1141    4601
3-6 months     ki1135781-COHORTS           INDIA                          <20           347    4656
3-6 months     ki1135781-COHORTS           INDIA                          [20-25)      1609    4656
3-6 months     ki1135781-COHORTS           INDIA                          [25-30)      1552    4656
3-6 months     ki1135781-COHORTS           INDIA                          >=30         1148    4656
6-12 months    ki1135781-COHORTS           INDIA                          <20           247    3765
6-12 months    ki1135781-COHORTS           INDIA                          [20-25)      1254    3765
6-12 months    ki1135781-COHORTS           INDIA                          [25-30)      1266    3765
6-12 months    ki1135781-COHORTS           INDIA                          >=30          998    3765
12-24 months   ki1135781-COHORTS           INDIA                          <20           189    3118
12-24 months   ki1135781-COHORTS           INDIA                          [20-25)      1018    3118
12-24 months   ki1135781-COHORTS           INDIA                          [25-30)      1050    3118
12-24 months   ki1135781-COHORTS           INDIA                          >=30          861    3118
12-24 months   ki1000111-WASH-Kenya        KENYA                          <20            38     327
12-24 months   ki1000111-WASH-Kenya        KENYA                          [20-25)        94     327
12-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)        95     327
12-24 months   ki1000111-WASH-Kenya        KENYA                          >=30          100     327
6-12 months    ki1148112-LCNI-5            MALAWI                         <20            60     357
6-12 months    ki1148112-LCNI-5            MALAWI                         [20-25)        92     357
6-12 months    ki1148112-LCNI-5            MALAWI                         [25-30)        90     357
6-12 months    ki1148112-LCNI-5            MALAWI                         >=30          115     357
12-24 months   ki1148112-LCNI-5            MALAWI                         <20            45     254
12-24 months   ki1148112-LCNI-5            MALAWI                         [20-25)        67     254
12-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)        66     254
12-24 months   ki1148112-LCNI-5            MALAWI                         >=30           76     254
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <20           156    1017
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [20-25)       324    1017
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)       257    1017
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30          280    1017
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <20            81     482
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [20-25)       153     482
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)       109     482
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30          139     482
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <20           130     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [20-25)       145     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)       155     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30          108     538
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <20           116     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [20-25)       139     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)       149     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30          104     508
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         <20             2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         [20-25)         2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)         2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         >=30            1       7
3-6 months     ki0047075b-MAL-ED           NEPAL                          <20             5     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          [20-25)        56     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          [25-30)       126     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          >=30           46     233
6-12 months    ki0047075b-MAL-ED           NEPAL                          <20             4     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          [20-25)        56     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          [25-30)       125     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          >=30           45     230
12-24 months   ki0047075b-MAL-ED           NEPAL                          <20             4     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          [20-25)        54     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          [25-30)       123     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          >=30           45     226
0-3 months     ki0047075b-MAL-ED           NEPAL                          <20             5     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          [20-25)        40     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          [25-30)        94     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          >=30           36     175
3-6 months     ki1113344-GMS-Nepal         NEPAL                          <20            82     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          [20-25)       168     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          [25-30)       147     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          >=30           74     471
6-12 months    ki1113344-GMS-Nepal         NEPAL                          <20            82     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          [20-25)       166     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          [25-30)       152     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          >=30           75     475
12-24 months   ki1113344-GMS-Nepal         NEPAL                          <20            60     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          [20-25)       131     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          [25-30)       117     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          >=30           59     367
0-3 months     ki1000109-EE                PAKISTAN                       <20             1     296
0-3 months     ki1000109-EE                PAKISTAN                       [20-25)        14     296
0-3 months     ki1000109-EE                PAKISTAN                       [25-30)       115     296
0-3 months     ki1000109-EE                PAKISTAN                       >=30          166     296
3-6 months     ki1000109-EE                PAKISTAN                       <20             1     330
3-6 months     ki1000109-EE                PAKISTAN                       [20-25)        15     330
3-6 months     ki1000109-EE                PAKISTAN                       [25-30)       127     330
3-6 months     ki1000109-EE                PAKISTAN                       >=30          187     330
6-12 months    ki1000109-EE                PAKISTAN                       [25-30)         3       4
6-12 months    ki1000109-EE                PAKISTAN                       >=30            1       4
0-3 months     ki0047075b-MAL-ED           PERU                           <20            74     271
0-3 months     ki0047075b-MAL-ED           PERU                           [20-25)        79     271
0-3 months     ki0047075b-MAL-ED           PERU                           [25-30)        57     271
0-3 months     ki0047075b-MAL-ED           PERU                           >=30           61     271
3-6 months     ki0047075b-MAL-ED           PERU                           <20            74     267
3-6 months     ki0047075b-MAL-ED           PERU                           [20-25)        74     267
3-6 months     ki0047075b-MAL-ED           PERU                           [25-30)        59     267
3-6 months     ki0047075b-MAL-ED           PERU                           >=30           60     267
6-12 months    ki0047075b-MAL-ED           PERU                           <20            66     237
6-12 months    ki0047075b-MAL-ED           PERU                           [20-25)        62     237
6-12 months    ki0047075b-MAL-ED           PERU                           [25-30)        55     237
6-12 months    ki0047075b-MAL-ED           PERU                           >=30           54     237
12-24 months   ki0047075b-MAL-ED           PERU                           <20            49     191
12-24 months   ki0047075b-MAL-ED           PERU                           [20-25)        47     191
12-24 months   ki0047075b-MAL-ED           PERU                           [25-30)        47     191
12-24 months   ki0047075b-MAL-ED           PERU                           >=30           48     191
6-12 months    ki1135781-COHORTS           PHILIPPINES                    <20           283    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [20-25)       740    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [25-30)       680    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    >=30          716    2419
12-24 months   ki1135781-COHORTS           PHILIPPINES                    <20           262    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [20-25)       700    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [25-30)       645    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    >=30          653    2260
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <20            34     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)        71     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)        45     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=30           79     229
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <20            41     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)        71     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)        39     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=30           90     241
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   <20            40     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)        69     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)        35     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   >=30           88     232
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   <20            38     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)        67     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)        35     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   >=30           90     230
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            13     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)        56     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)        58     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           96     223
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             8     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)        50     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)        60     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           89     207
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            12     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)        61     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)        65     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           91     229
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            13     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)        62     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)        64     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30          100     239
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <20           121    1649
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [20-25)       508    1649
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)       554    1649
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30          466    1649
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <20            69    1074
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [20-25)       319    1074
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)       368    1074
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30          318    1074
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)         1       2
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30            1       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <20          1158    7845
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)      3182    7845
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)      2020    7845
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=30         1485    7845
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <20           857    5877
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)      2347    5877
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)      1521    5877
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=30         1152    5877
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <20           661    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)      1785    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)      1211    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30          903    4560
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <20            45     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)       106     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)        94     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30           57     302


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
* diffcat: 0-3 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* diffcat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* diffcat: 3-6 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* diffcat: 6-12 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d77f5bf5-c7ee-4ac0-8038-abd4da9ff5a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d77f5bf5-c7ee-4ac0-8038-abd4da9ff5a8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <20                  NA                -0.1232973   -0.2151116   -0.0314830
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [20-25)              NA                -0.0045920   -0.0543504    0.0451664
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [25-30)              NA                 0.0064781   -0.0463317    0.0592879
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=30                 NA                -0.0991672   -0.1791489   -0.0191855
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <20                  NA                 0.1390752    0.0085120    0.2696385
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [20-25)              NA                 0.2109272    0.1270816    0.2947727
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [25-30)              NA                 0.2457375    0.1403807    0.3510943
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=30                 NA                 0.1391832    0.0387421    0.2396243
0-3 months     ki0047075b-MAL-ED           INDIA                          <20                  NA                 0.0216117   -0.0716415    0.1148648
0-3 months     ki0047075b-MAL-ED           INDIA                          [20-25)              NA                -0.0076327   -0.0669500    0.0516847
0-3 months     ki0047075b-MAL-ED           INDIA                          [25-30)              NA                -0.0449360   -0.1107394    0.0208675
0-3 months     ki0047075b-MAL-ED           INDIA                          >=30                 NA                -0.0487898   -0.2113626    0.1137830
0-3 months     ki0047075b-MAL-ED           NEPAL                          <20                  NA                 0.1710396    0.0131505    0.3289288
0-3 months     ki0047075b-MAL-ED           NEPAL                          [20-25)              NA                 0.1042807    0.0407921    0.1677693
0-3 months     ki0047075b-MAL-ED           NEPAL                          [25-30)              NA                 0.0547805    0.0050510    0.1045101
0-3 months     ki0047075b-MAL-ED           NEPAL                          >=30                 NA                 0.0800761   -0.0000911    0.1602433
0-3 months     ki0047075b-MAL-ED           PERU                           <20                  NA                -0.1115231   -0.1686347   -0.0544115
0-3 months     ki0047075b-MAL-ED           PERU                           [20-25)              NA                -0.1437623   -0.2042256   -0.0832990
0-3 months     ki0047075b-MAL-ED           PERU                           [25-30)              NA                -0.1667576   -0.2379511   -0.0955641
0-3 months     ki0047075b-MAL-ED           PERU                           >=30                 NA                -0.2251196   -0.2961396   -0.1540997
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <20                  NA                -0.1406821   -0.2590527   -0.0223115
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)              NA                -0.1455394   -0.2148807   -0.0761982
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)              NA                -0.0728852   -0.1813870    0.0356166
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0624538   -0.1382040    0.0132964
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1451016   -0.2911088    0.0009055
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                 0.0269165   -0.0446580    0.0984909
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0201166   -0.0959801    0.0557469
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1007173   -0.1596113   -0.0418234
0-3 months     ki1000108-IRC               INDIA                          <20                  NA                -0.2967901   -0.4749470   -0.1186331
0-3 months     ki1000108-IRC               INDIA                          [20-25)              NA                -0.2700110   -0.3467946   -0.1932275
0-3 months     ki1000108-IRC               INDIA                          [25-30)              NA                -0.2317606   -0.3344827   -0.1290384
0-3 months     ki1000108-IRC               INDIA                          >=30                 NA                -0.2505504   -0.4524954   -0.0486054
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <20                  NA                 0.0392446   -0.0111628    0.0896520
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [20-25)              NA                 0.0342918    0.0081216    0.0604619
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [25-30)              NA                -0.0002615   -0.0453178    0.0447949
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=30                 NA                -0.0739080   -0.1345817   -0.0132343
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <20                  NA                -0.1162188   -0.1885287   -0.0439089
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [20-25)              NA                -0.0920897   -0.1382123   -0.0459671
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [25-30)              NA                -0.1305153   -0.1826824   -0.0783482
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=30                 NA                -0.1480819   -0.1988412   -0.0973226
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <20                  NA                -0.0068171   -0.0638336    0.0501995
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [20-25)              NA                -0.0411989   -0.0685557   -0.0138422
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [25-30)              NA                -0.0416845   -0.0754551   -0.0079138
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=30                 NA                -0.0623830   -0.1054316   -0.0193343
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <20                  NA                -0.1280356   -0.1763732   -0.0796981
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)              NA                -0.1194065   -0.1504236   -0.0883895
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)              NA                -0.1289364   -0.1599058   -0.0979669
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=30                 NA                -0.1089030   -0.1510327   -0.0667732
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          <20                  NA                 0.1593855    0.0919724    0.2267986
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)              NA                 0.1008542    0.0658958    0.1358126
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)              NA                 0.0924023    0.0653889    0.1194157
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          >=30                 NA                 0.0527035    0.0251756    0.0802315
0-3 months     ki1101329-Keneba            GAMBIA                         <20                  NA                -0.1801137   -0.2419877   -0.1182397
0-3 months     ki1101329-Keneba            GAMBIA                         [20-25)              NA                -0.2603531   -0.3095133   -0.2111930
0-3 months     ki1101329-Keneba            GAMBIA                         [25-30)              NA                -0.2972109   -0.3508068   -0.2436150
0-3 months     ki1101329-Keneba            GAMBIA                         >=30                 NA                -0.3361569   -0.3729267   -0.2993871
0-3 months     ki1119695-PROBIT            BELARUS                        <20                  NA                -0.4135437   -0.4775324   -0.3495549
0-3 months     ki1119695-PROBIT            BELARUS                        [20-25)              NA                -0.4293206   -0.4910787   -0.3675626
0-3 months     ki1119695-PROBIT            BELARUS                        [25-30)              NA                -0.4501876   -0.5079833   -0.3923918
0-3 months     ki1119695-PROBIT            BELARUS                        >=30                 NA                -0.4513744   -0.5122513   -0.3904976
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <20                  NA                -0.1492488   -0.1757795   -0.1227182
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)              NA                -0.1291513   -0.1456723   -0.1126303
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)              NA                -0.1326940   -0.1528978   -0.1124903
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=30                 NA                -0.1827438   -0.2069435   -0.1585441
0-3 months     ki1135781-COHORTS           GUATEMALA                      <20                  NA                -0.5498765   -0.6086298   -0.4911231
0-3 months     ki1135781-COHORTS           GUATEMALA                      [20-25)              NA                -0.4704666   -0.5141149   -0.4268182
0-3 months     ki1135781-COHORTS           GUATEMALA                      [25-30)              NA                -0.5941931   -0.6401680   -0.5482182
0-3 months     ki1135781-COHORTS           GUATEMALA                      >=30                 NA                -0.5624745   -0.5971374   -0.5278116
0-3 months     ki1135781-COHORTS           INDIA                          <20                  NA                -0.0471477   -0.0725838   -0.0217117
0-3 months     ki1135781-COHORTS           INDIA                          [20-25)              NA                -0.0529390   -0.0665073   -0.0393706
0-3 months     ki1135781-COHORTS           INDIA                          [25-30)              NA                -0.0598066   -0.0741063   -0.0455070
0-3 months     ki1135781-COHORTS           INDIA                          >=30                 NA                -0.1126416   -0.1309334   -0.0943499
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     <20                  NA                 0.0781855    0.0710667    0.0853042
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [20-25)              NA                 0.0764075    0.0689788    0.0838362
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [25-30)              NA                 0.0589482    0.0480221    0.0698743
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     >=30                 NA                 0.0400825    0.0252139    0.0549512
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <20                  NA                -0.0108702   -0.0744530    0.0527126
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [20-25)              NA                -0.0433611   -0.0846186   -0.0021035
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [25-30)              NA                -0.0171085   -0.0539684    0.0197515
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=30                 NA                -0.0020685   -0.0577728    0.0536358
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <20                  NA                 0.0965094    0.0099887    0.1830302
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [20-25)              NA                 0.0420959   -0.0271386    0.1113305
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [25-30)              NA                 0.0565200   -0.0132347    0.1262747
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=30                 NA                 0.0616376   -0.0058315    0.1291068
3-6 months     ki0047075b-MAL-ED           INDIA                          <20                  NA                 0.0215722   -0.0390949    0.0822392
3-6 months     ki0047075b-MAL-ED           INDIA                          [20-25)              NA                -0.0485479   -0.0945009   -0.0025949
3-6 months     ki0047075b-MAL-ED           INDIA                          [25-30)              NA                -0.0636763   -0.1066892   -0.0206633
3-6 months     ki0047075b-MAL-ED           INDIA                          >=30                 NA                -0.0579857   -0.1664108    0.0504394
3-6 months     ki0047075b-MAL-ED           NEPAL                          <20                  NA                -0.0058053   -0.2311229    0.2195122
3-6 months     ki0047075b-MAL-ED           NEPAL                          [20-25)              NA                -0.0110318   -0.0601607    0.0380971
3-6 months     ki0047075b-MAL-ED           NEPAL                          [25-30)              NA                -0.0232748   -0.0614449    0.0148952
3-6 months     ki0047075b-MAL-ED           NEPAL                          >=30                 NA                -0.0308561   -0.0857380    0.0240258
3-6 months     ki0047075b-MAL-ED           PERU                           <20                  NA                 0.0348224   -0.0221285    0.0917734
3-6 months     ki0047075b-MAL-ED           PERU                           [20-25)              NA                 0.0130505   -0.0456593    0.0717602
3-6 months     ki0047075b-MAL-ED           PERU                           [25-30)              NA                 0.0604394   -0.0156726    0.1365514
3-6 months     ki0047075b-MAL-ED           PERU                           >=30                 NA                 0.0033668   -0.0527312    0.0594649
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <20                  NA                 0.0461482   -0.0424439    0.1347402
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)              NA                 0.0359830   -0.0249413    0.0969073
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)              NA                -0.0123250   -0.1329725    0.1083225
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0442101   -0.1044020    0.0159818
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0527785   -0.1890927    0.0835358
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0804951   -0.1481972   -0.0127931
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1181264   -0.1776794   -0.0585733
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0362331   -0.0839947    0.0115285
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          <20                  NA                 0.0761972   -0.0725615    0.2249560
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)              NA                -0.1291117   -0.1962622   -0.0619612
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)              NA                -0.0753078   -0.1542616    0.0036459
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          >=30                 NA                -0.1484354   -0.3124587    0.0155880
3-6 months     ki1000108-IRC               INDIA                          <20                  NA                 0.0627658   -0.0522785    0.1778101
3-6 months     ki1000108-IRC               INDIA                          [20-25)              NA                -0.0763986   -0.1146803   -0.0381170
3-6 months     ki1000108-IRC               INDIA                          [25-30)              NA                -0.0461396   -0.1025452    0.0102659
3-6 months     ki1000108-IRC               INDIA                          >=30                 NA                -0.0336443   -0.1528014    0.0855127
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <20                  NA                 0.0284895   -0.0427313    0.0997102
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [20-25)              NA                -0.0166374   -0.0385724    0.0052977
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [25-30)              NA                -0.0244866   -0.0553115    0.0063382
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=30                 NA                -0.0415101   -0.0908503    0.0078300
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <20                  NA                -0.0684362   -0.1277685   -0.0091038
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [20-25)              NA                -0.0607757   -0.0950268   -0.0265247
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [25-30)              NA                -0.0267364   -0.0697000    0.0162272
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=30                 NA                -0.0616876   -0.1107096   -0.0126656
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <20                  NA                -0.0334250   -0.0826431    0.0157931
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [20-25)              NA                -0.0213580   -0.0461195    0.0034034
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [25-30)              NA                -0.0203285   -0.0508874    0.0102303
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=30                 NA                -0.0476473   -0.0877887   -0.0075060
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <20                  NA                 0.0359284    0.0012004    0.0706563
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)              NA                 0.0258813   -0.0042836    0.0560462
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)              NA                 0.0346445    0.0048751    0.0644139
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=30                 NA                 0.0046981   -0.0380083    0.0474044
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          <20                  NA                -0.0310685   -0.0847968    0.0226598
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)              NA                -0.0320709   -0.0549519   -0.0091900
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)              NA                -0.0560247   -0.0845943   -0.0274551
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          >=30                 NA                -0.0466286   -0.0695294   -0.0237278
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0966434   -0.1658198   -0.0274669
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0831177   -0.1132548   -0.0529806
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1012405   -0.1301402   -0.0723408
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0665699   -0.0963385   -0.0368012
3-6 months     ki1101329-Keneba            GAMBIA                         <20                  NA                 0.0281256   -0.0215178    0.0777690
3-6 months     ki1101329-Keneba            GAMBIA                         [20-25)              NA                -0.0055230   -0.0457266    0.0346807
3-6 months     ki1101329-Keneba            GAMBIA                         [25-30)              NA                -0.0284668   -0.0699436    0.0130099
3-6 months     ki1101329-Keneba            GAMBIA                         >=30                 NA                -0.0319487   -0.0585817   -0.0053157
3-6 months     ki1113344-GMS-Nepal         NEPAL                          <20                  NA                -0.1367291   -0.1817922   -0.0916660
3-6 months     ki1113344-GMS-Nepal         NEPAL                          [20-25)              NA                -0.1670559   -0.1985124   -0.1355994
3-6 months     ki1113344-GMS-Nepal         NEPAL                          [25-30)              NA                -0.1588362   -0.1908075   -0.1268648
3-6 months     ki1113344-GMS-Nepal         NEPAL                          >=30                 NA                -0.2102480   -0.2562210   -0.1642749
3-6 months     ki1119695-PROBIT            BELARUS                        <20                  NA                 0.0529437    0.0277436    0.0781438
3-6 months     ki1119695-PROBIT            BELARUS                        [20-25)              NA                 0.0502468    0.0309618    0.0695318
3-6 months     ki1119695-PROBIT            BELARUS                        [25-30)              NA                 0.0465312    0.0226494    0.0704129
3-6 months     ki1119695-PROBIT            BELARUS                        >=30                 NA                 0.0366968    0.0127481    0.0606456
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <20                  NA                 0.0035101   -0.0213021    0.0283223
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)              NA                 0.0101422   -0.0048096    0.0250941
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)              NA                -0.0166560   -0.0348337    0.0015217
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=30                 NA                -0.0043972   -0.0249265    0.0161321
3-6 months     ki1135781-COHORTS           GUATEMALA                      <20                  NA                -0.0556737   -0.0914390   -0.0199085
3-6 months     ki1135781-COHORTS           GUATEMALA                      [20-25)              NA                -0.0899379   -0.1182637   -0.0616121
3-6 months     ki1135781-COHORTS           GUATEMALA                      [25-30)              NA                -0.1175130   -0.1462109   -0.0888150
3-6 months     ki1135781-COHORTS           GUATEMALA                      >=30                 NA                -0.1008526   -0.1259621   -0.0757430
3-6 months     ki1135781-COHORTS           INDIA                          <20                  NA                -0.0523650   -0.0734076   -0.0313225
3-6 months     ki1135781-COHORTS           INDIA                          [20-25)              NA                -0.0618493   -0.0723196   -0.0513790
3-6 months     ki1135781-COHORTS           INDIA                          [25-30)              NA                -0.0609957   -0.0724115   -0.0495800
3-6 months     ki1135781-COHORTS           INDIA                          >=30                 NA                -0.0735276   -0.0873959   -0.0596593
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     <20                  NA                 0.0104932    0.0039715    0.0170149
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [20-25)              NA                -0.0185835   -0.0274299   -0.0097371
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [25-30)              NA                -0.0079967   -0.0203470    0.0043536
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     >=30                 NA                -0.0136994   -0.0294511    0.0020524
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <20                  NA                -0.0729761   -0.1002884   -0.0456637
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [20-25)              NA                -0.0648080   -0.0836906   -0.0459253
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [25-30)              NA                -0.0898311   -0.1057603   -0.0739019
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=30                 NA                -0.0988307   -0.1240057   -0.0736556
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <20                  NA                -0.0345576   -0.0924619    0.0233467
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [20-25)              NA                 0.0249339   -0.0079376    0.0578054
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [25-30)              NA                 0.0026407   -0.0301876    0.0354689
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=30                 NA                 0.0202043   -0.0179291    0.0583377
6-12 months    ki0047075b-MAL-ED           INDIA                          <20                  NA                -0.0756141   -0.1102752   -0.0409531
6-12 months    ki0047075b-MAL-ED           INDIA                          [20-25)              NA                -0.0883681   -0.1057052   -0.0710311
6-12 months    ki0047075b-MAL-ED           INDIA                          [25-30)              NA                -0.0709903   -0.0909530   -0.0510275
6-12 months    ki0047075b-MAL-ED           INDIA                          >=30                 NA                -0.0752227   -0.1204101   -0.0300352
6-12 months    ki0047075b-MAL-ED           PERU                           <20                  NA                -0.0282117   -0.0521216   -0.0043019
6-12 months    ki0047075b-MAL-ED           PERU                           [20-25)              NA                -0.0278568   -0.0587598    0.0030461
6-12 months    ki0047075b-MAL-ED           PERU                           [25-30)              NA                -0.0662739   -0.0959253   -0.0366225
6-12 months    ki0047075b-MAL-ED           PERU                           >=30                 NA                -0.0297951   -0.0561842   -0.0034061
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   <20                  NA                -0.0255114   -0.0680021    0.0169793
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)              NA                -0.0728619   -0.1017420   -0.0439819
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)              NA                -0.0112861   -0.0567467    0.0341744
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0685482   -0.0969725   -0.0401239
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1672966   -0.2395437   -0.0950496
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0949972   -0.1293925   -0.0606018
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1214723   -0.1493806   -0.0935640
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1366155   -0.1590567   -0.1141743
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          <20                  NA                -0.0903200   -0.1628760   -0.0177640
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)              NA                -0.1115948   -0.1392949   -0.0838946
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)              NA                -0.0870191   -0.1260156   -0.0480226
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          >=30                 NA                -0.0857793   -0.1492448   -0.0223138
6-12 months    ki1000108-IRC               INDIA                          <20                  NA                -0.0264380   -0.0889834    0.0361074
6-12 months    ki1000108-IRC               INDIA                          [20-25)              NA                -0.0225823   -0.0403379   -0.0048266
6-12 months    ki1000108-IRC               INDIA                          [25-30)              NA                -0.0354173   -0.0553363   -0.0154984
6-12 months    ki1000108-IRC               INDIA                          >=30                 NA                -0.0108791   -0.0510785    0.0293203
6-12 months    ki1000304-VITAMIN-A         INDIA                          <20                  NA                -0.0739050   -0.0936662   -0.0541437
6-12 months    ki1000304-VITAMIN-A         INDIA                          [20-25)              NA                -0.0707309   -0.0777829   -0.0636788
6-12 months    ki1000304-VITAMIN-A         INDIA                          [25-30)              NA                -0.0799156   -0.0885542   -0.0712770
6-12 months    ki1000304-VITAMIN-A         INDIA                          >=30                 NA                -0.0798866   -0.0938533   -0.0659200
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <20                  NA                -0.0717924   -0.0866825   -0.0569022
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [20-25)              NA                -0.0840238   -0.0944355   -0.0736121
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)              NA                -0.0967527   -0.1111741   -0.0823314
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=30                 NA                -0.0876478   -0.1094201   -0.0658754
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          <20                  NA                -0.0498085   -0.1883640    0.0887471
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [20-25)              NA                -0.0893396   -0.1522974   -0.0263817
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)              NA                -0.1395655   -0.1740114   -0.1051196
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30                 NA                -0.1090907   -0.1732462   -0.0449352
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <20                  NA                -0.0501301   -0.0795455   -0.0207147
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [20-25)              NA                -0.0460749   -0.0610681   -0.0310816
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [25-30)              NA                -0.0633485   -0.0801805   -0.0465165
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=30                 NA                -0.0521129   -0.0724070   -0.0318189
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <20                  NA                -0.0556612   -0.0777787   -0.0335438
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [20-25)              NA                -0.0588775   -0.0692626   -0.0484925
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)              NA                -0.0690225   -0.0823855   -0.0556595
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=30                 NA                -0.0635394   -0.0787333   -0.0483455
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <20                  NA                -0.0436441   -0.0611436   -0.0261446
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)              NA                -0.0301280   -0.0426752   -0.0175808
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)              NA                -0.0273553   -0.0394685   -0.0152422
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=30                 NA                -0.0291399   -0.0483118   -0.0099680
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          <20                  NA                 0.0061576   -0.0127253    0.0250405
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)              NA                -0.0032658   -0.0143959    0.0078643
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)              NA                 0.0092155   -0.0015699    0.0200008
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          >=30                 NA                -0.0045833   -0.0156041    0.0064375
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0520571   -0.0925782   -0.0115360
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0556427   -0.0733681   -0.0379174
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0609334   -0.0766856   -0.0451813
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0639737   -0.0796828   -0.0482646
6-12 months    ki1101329-Keneba            GAMBIA                         <20                  NA                -0.0601245   -0.0786882   -0.0415609
6-12 months    ki1101329-Keneba            GAMBIA                         [20-25)              NA                -0.0509918   -0.0685982   -0.0333854
6-12 months    ki1101329-Keneba            GAMBIA                         [25-30)              NA                -0.0550351   -0.0705896   -0.0394807
6-12 months    ki1101329-Keneba            GAMBIA                         >=30                 NA                -0.0713322   -0.0838250   -0.0588393
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      <20                  NA                -0.0425764   -0.0770465   -0.0081064
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [20-25)              NA                -0.0851708   -0.1043433   -0.0659983
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)              NA                -0.0812761   -0.1090690   -0.0534832
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30                 NA                -0.0796727   -0.1073314   -0.0520140
6-12 months    ki1113344-GMS-Nepal         NEPAL                          <20                  NA                -0.0405426   -0.0590457   -0.0220395
6-12 months    ki1113344-GMS-Nepal         NEPAL                          [20-25)              NA                -0.0576396   -0.0721268   -0.0431524
6-12 months    ki1113344-GMS-Nepal         NEPAL                          [25-30)              NA                -0.0731258   -0.0876378   -0.0586138
6-12 months    ki1113344-GMS-Nepal         NEPAL                          >=30                 NA                -0.0693710   -0.0885673   -0.0501747
6-12 months    ki1119695-PROBIT            BELARUS                        <20                  NA                 0.0519834    0.0272432    0.0767236
6-12 months    ki1119695-PROBIT            BELARUS                        [20-25)              NA                 0.0469249    0.0289651    0.0648847
6-12 months    ki1119695-PROBIT            BELARUS                        [25-30)              NA                 0.0321898    0.0152127    0.0491670
6-12 months    ki1119695-PROBIT            BELARUS                        >=30                 NA                 0.0409069    0.0252713    0.0565424
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <20                  NA                -0.0466039   -0.0595097   -0.0336980
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)              NA                -0.0500461   -0.0577088   -0.0423834
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)              NA                -0.0471245   -0.0561137   -0.0381353
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30                 NA                -0.0528250   -0.0622923   -0.0433577
6-12 months    ki1135781-COHORTS           GUATEMALA                      <20                  NA                -0.0917227   -0.1116049   -0.0718406
6-12 months    ki1135781-COHORTS           GUATEMALA                      [20-25)              NA                -0.1119878   -0.1257692   -0.0982064
6-12 months    ki1135781-COHORTS           GUATEMALA                      [25-30)              NA                -0.1248814   -0.1388304   -0.1109323
6-12 months    ki1135781-COHORTS           GUATEMALA                      >=30                 NA                -0.1036543   -0.1152457   -0.0920630
6-12 months    ki1135781-COHORTS           INDIA                          <20                  NA                -0.0909172   -0.1076291   -0.0742053
6-12 months    ki1135781-COHORTS           INDIA                          [20-25)              NA                -0.0932940   -0.1001752   -0.0864127
6-12 months    ki1135781-COHORTS           INDIA                          [25-30)              NA                -0.0980874   -0.1049496   -0.0912252
6-12 months    ki1135781-COHORTS           INDIA                          >=30                 NA                -0.0994576   -0.1076212   -0.0912941
6-12 months    ki1135781-COHORTS           PHILIPPINES                    <20                  NA                -0.0857828   -0.1019134   -0.0696521
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [20-25)              NA                -0.0951329   -0.1043165   -0.0859494
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [25-30)              NA                -0.1075649   -0.1169477   -0.0981822
6-12 months    ki1135781-COHORTS           PHILIPPINES                    >=30                 NA                -0.1032593   -0.1126023   -0.0939163
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <20                  NA                -0.0335077   -0.0508022   -0.0162133
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [20-25)              NA                -0.0343799   -0.0466488   -0.0221110
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)              NA                -0.0357926   -0.0498309   -0.0217543
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30                 NA                -0.0451057   -0.0589469   -0.0312644
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <20                  NA                -0.0307949   -0.0520956   -0.0094943
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [20-25)              NA                -0.0526746   -0.0710004   -0.0343487
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)              NA                -0.0418736   -0.0617092   -0.0220380
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30                 NA                -0.0488867   -0.0675594   -0.0302141
6-12 months    ki1148112-LCNI-5            MALAWI                         <20                  NA                -0.0262516   -0.0543534    0.0018503
6-12 months    ki1148112-LCNI-5            MALAWI                         [20-25)              NA                -0.0084787   -0.0324461    0.0154886
6-12 months    ki1148112-LCNI-5            MALAWI                         [25-30)              NA                 0.0103773   -0.0134388    0.0341934
6-12 months    ki1148112-LCNI-5            MALAWI                         >=30                 NA                -0.0093454   -0.0291373    0.0104465
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     <20                  NA                -0.0672378   -0.0712614   -0.0632142
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [20-25)              NA                -0.0798906   -0.0845764   -0.0752047
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)              NA                -0.0809349   -0.0874853   -0.0743845
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30                 NA                -0.0829682   -0.0928545   -0.0730818
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <20                  NA                -0.0149759   -0.0308229    0.0008711
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [20-25)              NA                -0.0184841   -0.0280620   -0.0089061
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [25-30)              NA                -0.0181898   -0.0269768   -0.0094027
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=30                 NA                -0.0183302   -0.0304205   -0.0062398
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <20                  NA                 0.0236521   -0.0023143    0.0496185
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [20-25)              NA                -0.0077822   -0.0265256    0.0109612
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [25-30)              NA                -0.0068962   -0.0225216    0.0087291
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=30                 NA                -0.0033973   -0.0293786    0.0225840
12-24 months   ki0047075b-MAL-ED           INDIA                          <20                  NA                -0.0042598   -0.0159461    0.0074264
12-24 months   ki0047075b-MAL-ED           INDIA                          [20-25)              NA                -0.0084046   -0.0159865   -0.0008228
12-24 months   ki0047075b-MAL-ED           INDIA                          [25-30)              NA                -0.0133406   -0.0230399   -0.0036414
12-24 months   ki0047075b-MAL-ED           INDIA                          >=30                 NA                -0.0173918   -0.0341200   -0.0006635
12-24 months   ki0047075b-MAL-ED           PERU                           <20                  NA                -0.0123124   -0.0240444   -0.0005804
12-24 months   ki0047075b-MAL-ED           PERU                           [20-25)              NA                -0.0226613   -0.0373849   -0.0079376
12-24 months   ki0047075b-MAL-ED           PERU                           [25-30)              NA                 0.0019363   -0.0129408    0.0168134
12-24 months   ki0047075b-MAL-ED           PERU                           >=30                 NA                -0.0039690   -0.0177179    0.0097799
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   <20                  NA                -0.0164068   -0.0354682    0.0026546
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)              NA                -0.0091691   -0.0217187    0.0033806
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)              NA                -0.0299184   -0.0499180   -0.0099188
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0138257   -0.0263744   -0.0012769
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0476250   -0.0871292   -0.0081208
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0528249   -0.0690366   -0.0366131
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0464405   -0.0621825   -0.0306985
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0262013   -0.0366281   -0.0157745
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          <20                  NA                -0.0505667   -0.0824109   -0.0187224
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)              NA                -0.0374440   -0.0518479   -0.0230401
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)              NA                -0.0497178   -0.0675324   -0.0319032
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          >=30                 NA                -0.0656641   -0.0992490   -0.0320792
12-24 months   ki1000108-IRC               INDIA                          <20                  NA                -0.0334785   -0.0522123   -0.0147448
12-24 months   ki1000108-IRC               INDIA                          [20-25)              NA                -0.0266048   -0.0364519   -0.0167576
12-24 months   ki1000108-IRC               INDIA                          [25-30)              NA                -0.0336275   -0.0463815   -0.0208736
12-24 months   ki1000108-IRC               INDIA                          >=30                 NA                -0.0606964   -0.0871413   -0.0342514
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <20                  NA                -0.0191153   -0.0425647    0.0043342
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [20-25)              NA                 0.0151367   -0.0092470    0.0395204
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)              NA                -0.0008815   -0.0157537    0.0139907
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30                 NA                -0.0124290   -0.0470296    0.0221716
12-24 months   ki1000111-WASH-Kenya        KENYA                          <20                  NA                -0.0236251   -0.0393418   -0.0079083
12-24 months   ki1000111-WASH-Kenya        KENYA                          [20-25)              NA                -0.0320244   -0.0412895   -0.0227593
12-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)              NA                -0.0239725   -0.0331754   -0.0147696
12-24 months   ki1000111-WASH-Kenya        KENYA                          >=30                 NA                -0.0185673   -0.0290902   -0.0080444
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <20                  NA                -0.0348107   -0.0500659   -0.0195555
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [20-25)              NA                -0.0441404   -0.0522212   -0.0360595
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [25-30)              NA                -0.0407203   -0.0486831   -0.0327576
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=30                 NA                -0.0373248   -0.0467126   -0.0279371
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <20                  NA                 0.0037494   -0.0085636    0.0160625
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [20-25)              NA                -0.0119050   -0.0174784   -0.0063317
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)              NA                -0.0067478   -0.0137703    0.0002747
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30                 NA                -0.0099852   -0.0196980   -0.0002724
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <20                  NA                 0.0016210   -0.0074043    0.0106463
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)              NA                -0.0066692   -0.0131355   -0.0002030
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)              NA                -0.0121798   -0.0197672   -0.0045925
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=30                 NA                -0.0006212   -0.0104015    0.0091591
12-24 months   ki1101329-Keneba            GAMBIA                         <20                  NA                -0.0233042   -0.0330751   -0.0135334
12-24 months   ki1101329-Keneba            GAMBIA                         [20-25)              NA                -0.0259660   -0.0333625   -0.0185695
12-24 months   ki1101329-Keneba            GAMBIA                         [25-30)              NA                -0.0245759   -0.0328592   -0.0162926
12-24 months   ki1101329-Keneba            GAMBIA                         >=30                 NA                -0.0147803   -0.0208599   -0.0087008
12-24 months   ki1113344-GMS-Nepal         NEPAL                          <20                  NA                -0.0016209   -0.0132023    0.0099605
12-24 months   ki1113344-GMS-Nepal         NEPAL                          [20-25)              NA                -0.0228370   -0.0314726   -0.0142014
12-24 months   ki1113344-GMS-Nepal         NEPAL                          [25-30)              NA                -0.0160053   -0.0250866   -0.0069240
12-24 months   ki1113344-GMS-Nepal         NEPAL                          >=30                 NA                -0.0127255   -0.0242002   -0.0012509
12-24 months   ki1119695-PROBIT            BELARUS                        <20                  NA                -0.0498794   -0.0805144   -0.0192445
12-24 months   ki1119695-PROBIT            BELARUS                        [20-25)              NA                -0.0410629   -0.0603507   -0.0217750
12-24 months   ki1119695-PROBIT            BELARUS                        [25-30)              NA                -0.0502330   -0.0689188   -0.0315473
12-24 months   ki1119695-PROBIT            BELARUS                        >=30                 NA                -0.0341200   -0.0543517   -0.0138884
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <20                  NA                -0.0741577   -0.1005325   -0.0477828
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)              NA                -0.0372436   -0.0520860   -0.0224012
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)              NA                -0.0553836   -0.0705875   -0.0401797
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30                 NA                -0.0557228   -0.0780694   -0.0333761
12-24 months   ki1135781-COHORTS           GUATEMALA                      <20                  NA                -0.0330549   -0.0432281   -0.0228817
12-24 months   ki1135781-COHORTS           GUATEMALA                      [20-25)              NA                -0.0352756   -0.0427143   -0.0278370
12-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)              NA                -0.0306212   -0.0379288   -0.0233136
12-24 months   ki1135781-COHORTS           GUATEMALA                      >=30                 NA                -0.0235053   -0.0293843   -0.0176262
12-24 months   ki1135781-COHORTS           INDIA                          <20                  NA                -0.0411659   -0.0485717   -0.0337601
12-24 months   ki1135781-COHORTS           INDIA                          [20-25)              NA                -0.0343174   -0.0376048   -0.0310301
12-24 months   ki1135781-COHORTS           INDIA                          [25-30)              NA                -0.0360513   -0.0393975   -0.0327050
12-24 months   ki1135781-COHORTS           INDIA                          >=30                 NA                -0.0365974   -0.0404797   -0.0327151
12-24 months   ki1135781-COHORTS           PHILIPPINES                    <20                  NA                -0.0596769   -0.0670767   -0.0522771
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [20-25)              NA                -0.0595782   -0.0641632   -0.0549932
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [25-30)              NA                -0.0570938   -0.0618930   -0.0522945
12-24 months   ki1135781-COHORTS           PHILIPPINES                    >=30                 NA                -0.0553261   -0.0598883   -0.0507639
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <20                  NA                -0.0290496   -0.0407532   -0.0173459
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [20-25)              NA                -0.0307742   -0.0394907   -0.0220576
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)              NA                -0.0383599   -0.0485901   -0.0281297
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30                 NA                -0.0251699   -0.0341417   -0.0161981
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <20                  NA                -0.0312100   -0.0429759   -0.0194440
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [20-25)              NA                -0.0231093   -0.0327584   -0.0134601
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)              NA                -0.0179910   -0.0267676   -0.0092144
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30                 NA                -0.0086488   -0.0205987    0.0033011
12-24 months   ki1148112-LCNI-5            MALAWI                         <20                  NA                -0.0216107   -0.0352642   -0.0079573
12-24 months   ki1148112-LCNI-5            MALAWI                         [20-25)              NA                -0.0169113   -0.0289931   -0.0048295
12-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)              NA                -0.0213269   -0.0348952   -0.0077585
12-24 months   ki1148112-LCNI-5            MALAWI                         >=30                 NA                -0.0048038   -0.0166891    0.0070816
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <20                  NA                -0.0166102   -0.0194587   -0.0137616
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [20-25)              NA                -0.0210502   -0.0240043   -0.0180961
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)              NA                -0.0201873   -0.0244553   -0.0159192
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30                 NA                -0.0182033   -0.0244504   -0.0119562


### Parameter: E(Y)


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED           BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0193066   -0.0586302    0.0200170
0-3 months     ki0047075b-MAL-ED           NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED           PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000108-IRC               INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                -0.1182571   -0.1452753   -0.0912390
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                 0.0871908    0.0704561    0.1039256
0-3 months     ki1101329-Keneba            GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
0-3 months     ki1119695-PROBIT            BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.1431748   -0.1535906   -0.1327590
0-3 months     ki1135781-COHORTS           GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS           INDIA                          NA                   NA                -0.0695612   -0.0778723   -0.0612501
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                 0.0705118    0.0655570    0.0754666
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED           BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0441175   -0.0722008   -0.0160342
3-6 months     ki0047075b-MAL-ED           NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED           PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC               INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                -0.0512815   -0.0734273   -0.0291358
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                -0.0443716   -0.0584690   -0.0302741
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855224   -0.1021794   -0.0688654
3-6 months     ki1101329-Keneba            GAMBIA                         NA                   NA                -0.0166009   -0.0350544    0.0018526
3-6 months     ki1113344-GMS-Nepal         NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1119695-PROBIT            BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.0006104   -0.0099457    0.0087249
3-6 months     ki1135781-COHORTS           GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS           INDIA                          NA                   NA                -0.0637374   -0.0701991   -0.0572756
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                -0.0035046   -0.0083701    0.0013610
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED           BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0796519   -0.0916308   -0.0676731
6-12 months    ki0047075b-MAL-ED           PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC               INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                -0.0754063   -0.0803579   -0.0704546
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                -0.0532163   -0.0625510   -0.0438816
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                 0.0011158   -0.0049386    0.0071703
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0596919   -0.0689285   -0.0504554
6-12 months    ki1101329-Keneba            GAMBIA                         NA                   NA                -0.0614564   -0.0693246   -0.0535883
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                -0.0759856   -0.0889912   -0.0629800
6-12 months    ki1113344-GMS-Nepal         NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1119695-PROBIT            BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.0493215   -0.0539815   -0.0446616
6-12 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                -0.1091173   -0.1161782   -0.1020564
6-12 months    ki1135781-COHORTS           INDIA                          NA                   NA                -0.0963837   -0.1004421   -0.0923253
6-12 months    ki1135781-COHORTS           PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                -0.0375561   -0.0445922   -0.0305201
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                -0.0435155   -0.0534192   -0.0336118
6-12 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                -0.0069913   -0.0187672    0.0047845
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                -0.0747429   -0.0775844   -0.0719013
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED           BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED           INDIA                          NA                   NA                -0.0101910   -0.0153291   -0.0050528
12-24 months   ki0047075b-MAL-ED           PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC               INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                -0.0026893   -0.0170438    0.0116652
12-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                -0.0245938   -0.0299092   -0.0192783
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                -0.0406498   -0.0453177   -0.0359819
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba            GAMBIA                         NA                   NA                -0.0205353   -0.0243517   -0.0167190
12-24 months   ki1113344-GMS-Nepal         NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                -0.0518781   -0.0610844   -0.0426717
12-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                -0.0295389   -0.0332082   -0.0258696
12-24 months   ki1135781-COHORTS           INDIA                          NA                   NA                -0.0359460   -0.0378892   -0.0340029
12-24 months   ki1135781-COHORTS           PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                -0.0305836   -0.0354570   -0.0257102
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                -0.0204974   -0.0257171   -0.0152777
12-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                -0.0152685   -0.0217374   -0.0087996
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                -0.0188041   -0.0206556   -0.0169527


### Parameter: ATE


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [20-25)              <20                0.1187053    0.0142746    0.2231359
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     [25-30)              <20                0.1297754    0.0238568    0.2356939
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     >=30                 <20                0.0241301   -0.0976358    0.1458960
0-3 months     ki0047075b-MAL-ED           BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [20-25)              <20                0.0718520   -0.0833152    0.2270191
0-3 months     ki0047075b-MAL-ED           BRAZIL                         [25-30)              <20                0.1066623   -0.0611078    0.2744324
0-3 months     ki0047075b-MAL-ED           BRAZIL                         >=30                 <20                0.0001080   -0.1646196    0.1648356
0-3 months     ki0047075b-MAL-ED           INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           INDIA                          [20-25)              <20               -0.0292443   -0.1397645    0.0812758
0-3 months     ki0047075b-MAL-ED           INDIA                          [25-30)              <20               -0.0665476   -0.1806802    0.0475849
0-3 months     ki0047075b-MAL-ED           INDIA                          >=30                 <20               -0.0704015   -0.2578210    0.1170181
0-3 months     ki0047075b-MAL-ED           NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           NEPAL                          [20-25)              <20               -0.0667589   -0.2369347    0.1034168
0-3 months     ki0047075b-MAL-ED           NEPAL                          [25-30)              <20               -0.1162591   -0.2817946    0.0492764
0-3 months     ki0047075b-MAL-ED           NEPAL                          >=30                 <20               -0.0909635   -0.2680391    0.0861121
0-3 months     ki0047075b-MAL-ED           PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           PERU                           [20-25)              <20               -0.0322391   -0.1154109    0.0509327
0-3 months     ki0047075b-MAL-ED           PERU                           [25-30)              <20               -0.0552345   -0.1465047    0.0360357
0-3 months     ki0047075b-MAL-ED           PERU                           >=30                 <20               -0.1135965   -0.2047314   -0.0224616
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)              <20               -0.0048573   -0.1420427    0.1323280
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)              <20                0.0677969   -0.0927778    0.2283717
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=30                 <20                0.0782283   -0.0623053    0.2187620
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.1720181    0.0094113    0.3346249
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.1249851   -0.0395547    0.2895248
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0443843   -0.1130532    0.2018219
0-3 months     ki1000108-IRC               INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC               INDIA                          [20-25)              <20                0.0267790   -0.1672200    0.2207780
0-3 months     ki1000108-IRC               INDIA                          [25-30)              <20                0.0650295   -0.1406201    0.2706791
0-3 months     ki1000108-IRC               INDIA                          >=30                 <20                0.0462397   -0.2230588    0.3155382
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [20-25)              <20               -0.0049529   -0.0760456    0.0661399
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          [25-30)              <20               -0.0395061   -0.1281293    0.0491171
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          >=30                 <20               -0.1131527   -0.2042182   -0.0220871
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [20-25)              <20                0.0241291   -0.0616381    0.1098963
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     [25-30)              <20               -0.0142965   -0.1034600    0.0748670
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     >=30                 <20               -0.0318631   -0.1202104    0.0564841
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [20-25)              <20               -0.0343819   -0.0976217    0.0288580
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     [25-30)              <20               -0.0348674   -0.1011346    0.0313998
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     >=30                 <20               -0.0555659   -0.1270087    0.0158769
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)              <20                0.0086291   -0.0488041    0.0660623
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)              <20               -0.0009007   -0.0583083    0.0565068
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=30                 <20                0.0191326   -0.0449878    0.0832531
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)              <20               -0.0585312   -0.1344695    0.0174070
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)              <20               -0.0669832   -0.1396072    0.0056408
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          >=30                 <20               -0.1066819   -0.1794989   -0.0338650
0-3 months     ki1101329-Keneba            GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba            GAMBIA                         [20-25)              <20               -0.0802394   -0.1592655   -0.0012134
0-3 months     ki1101329-Keneba            GAMBIA                         [25-30)              <20               -0.1170972   -0.1989563   -0.0352381
0-3 months     ki1101329-Keneba            GAMBIA                         >=30                 <20               -0.1560432   -0.2280183   -0.0840682
0-3 months     ki1119695-PROBIT            BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT            BELARUS                        [20-25)              <20               -0.0157770   -0.0478424    0.0162885
0-3 months     ki1119695-PROBIT            BELARUS                        [25-30)              <20               -0.0366439   -0.0699422   -0.0033456
0-3 months     ki1119695-PROBIT            BELARUS                        >=30                 <20               -0.0378308   -0.0643721   -0.0112894
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)              <20                0.0200975   -0.0111566    0.0513516
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)              <20                0.0165548   -0.0167929    0.0499025
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=30                 <20               -0.0334950   -0.0694046    0.0024146
0-3 months     ki1135781-COHORTS           GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS           GUATEMALA                      [20-25)              <20                0.0794099    0.0062174    0.1526024
0-3 months     ki1135781-COHORTS           GUATEMALA                      [25-30)              <20               -0.0443167   -0.1189199    0.0302866
0-3 months     ki1135781-COHORTS           GUATEMALA                      >=30                 <20               -0.0125980   -0.0808144    0.0556183
0-3 months     ki1135781-COHORTS           INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS           INDIA                          [20-25)              <20               -0.0057912   -0.0346199    0.0230374
0-3 months     ki1135781-COHORTS           INDIA                          [25-30)              <20               -0.0126589   -0.0418389    0.0165211
0-3 months     ki1135781-COHORTS           INDIA                          >=30                 <20               -0.0654939   -0.0968240   -0.0341637
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [20-25)              <20               -0.0017780   -0.0112831    0.0077271
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     [25-30)              <20               -0.0192373   -0.0312978   -0.0071767
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     >=30                 <20               -0.0381029   -0.0543945   -0.0218113
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [20-25)              <20               -0.0324908   -0.1082863    0.0433047
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     [25-30)              <20               -0.0062382   -0.0797326    0.0672562
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     >=30                 <20                0.0088018   -0.0757307    0.0933342
3-6 months     ki0047075b-MAL-ED           BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [20-25)              <20               -0.0544135   -0.1652254    0.0563984
3-6 months     ki0047075b-MAL-ED           BRAZIL                         [25-30)              <20               -0.0399895   -0.1511270    0.0711481
3-6 months     ki0047075b-MAL-ED           BRAZIL                         >=30                 <20               -0.0348718   -0.1445893    0.0748457
3-6 months     ki0047075b-MAL-ED           INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           INDIA                          [20-25)              <20               -0.0701201   -0.1462264    0.0059862
3-6 months     ki0047075b-MAL-ED           INDIA                          [25-30)              <20               -0.0852484   -0.1596164   -0.0108804
3-6 months     ki0047075b-MAL-ED           INDIA                          >=30                 <20               -0.0795578   -0.2038015    0.0446858
3-6 months     ki0047075b-MAL-ED           NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           NEPAL                          [20-25)              <20               -0.0052264   -0.2358379    0.2253850
3-6 months     ki0047075b-MAL-ED           NEPAL                          [25-30)              <20               -0.0174695   -0.2459973    0.2110583
3-6 months     ki0047075b-MAL-ED           NEPAL                          >=30                 <20               -0.0250508   -0.2569560    0.2068545
3-6 months     ki0047075b-MAL-ED           PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           PERU                           [20-25)              <20               -0.0217720   -0.1035659    0.0600219
3-6 months     ki0047075b-MAL-ED           PERU                           [25-30)              <20                0.0256170   -0.0694433    0.1206772
3-6 months     ki0047075b-MAL-ED           PERU                           >=30                 <20               -0.0314556   -0.1113956    0.0484844
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)              <20               -0.0101652   -0.1176841    0.0973538
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)              <20               -0.0584731   -0.2081540    0.0912078
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   >=30                 <20               -0.0903583   -0.1974639    0.0167474
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0277167   -0.1799177    0.1244843
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0653479   -0.2141032    0.0834074
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0165454   -0.1278941    0.1609848
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)              <20               -0.2053089   -0.3685215   -0.0420963
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)              <20               -0.1515050   -0.3199178    0.0169077
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          >=30                 <20               -0.2246326   -0.4460661   -0.0031990
3-6 months     ki1000108-IRC               INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC               INDIA                          [20-25)              <20               -0.1391644   -0.2604108   -0.0179181
3-6 months     ki1000108-IRC               INDIA                          [25-30)              <20               -0.1089054   -0.2370334    0.0192226
3-6 months     ki1000108-IRC               INDIA                          >=30                 <20               -0.0964101   -0.2620410    0.0692208
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [20-25)              <20               -0.0451268   -0.1295370    0.0392833
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          [25-30)              <20               -0.0529761   -0.1357597    0.0298074
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          >=30                 <20               -0.0699996   -0.1461645    0.0061653
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [20-25)              <20                0.0076604   -0.0608484    0.0761693
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     [25-30)              <20                0.0416997   -0.0315546    0.1149541
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     >=30                 <20                0.0067485   -0.0702156    0.0837127
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [20-25)              <20                0.0120670   -0.0430288    0.0671628
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     [25-30)              <20                0.0130965   -0.0448368    0.0710298
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     >=30                 <20               -0.0142223   -0.0777341    0.0492895
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)              <20               -0.0100471   -0.0560465    0.0359524
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)              <20               -0.0012839   -0.0470250    0.0444572
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     >=30                 <20               -0.0312303   -0.0862745    0.0238139
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)              <20               -0.0010025   -0.0594000    0.0573951
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)              <20               -0.0249562   -0.0858081    0.0358957
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          >=30                 <20               -0.0155601   -0.0739654    0.0428452
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.0135257   -0.0619304    0.0889818
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0045971   -0.0795676    0.0703733
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0300735   -0.0452362    0.1053832
3-6 months     ki1101329-Keneba            GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba            GAMBIA                         [20-25)              <20               -0.0336485   -0.0975297    0.0302327
3-6 months     ki1101329-Keneba            GAMBIA                         [25-30)              <20               -0.0565924   -0.1212824    0.0080976
3-6 months     ki1101329-Keneba            GAMBIA                         >=30                 <20               -0.0600743   -0.1164106   -0.0037379
3-6 months     ki1113344-GMS-Nepal         NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal         NEPAL                          [20-25)              <20               -0.0303268   -0.0852831    0.0246294
3-6 months     ki1113344-GMS-Nepal         NEPAL                          [25-30)              <20               -0.0221071   -0.0773597    0.0331455
3-6 months     ki1113344-GMS-Nepal         NEPAL                          >=30                 <20               -0.0735189   -0.1378944   -0.0091434
3-6 months     ki1119695-PROBIT            BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT            BELARUS                        [20-25)              <20               -0.0026969   -0.0217812    0.0163874
3-6 months     ki1119695-PROBIT            BELARUS                        [25-30)              <20               -0.0064125   -0.0307764    0.0179514
3-6 months     ki1119695-PROBIT            BELARUS                        >=30                 <20               -0.0162469   -0.0442136    0.0117199
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)              <20                0.0066321   -0.0223368    0.0356011
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)              <20               -0.0201661   -0.0509244    0.0105922
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       >=30                 <20               -0.0079073   -0.0401112    0.0242967
3-6 months     ki1135781-COHORTS           GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS           GUATEMALA                      [20-25)              <20               -0.0342642   -0.0798877    0.0113593
3-6 months     ki1135781-COHORTS           GUATEMALA                      [25-30)              <20               -0.0618392   -0.1076947   -0.0159838
3-6 months     ki1135781-COHORTS           GUATEMALA                      >=30                 <20               -0.0451788   -0.0888783   -0.0014794
3-6 months     ki1135781-COHORTS           INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS           INDIA                          [20-25)              <20               -0.0094842   -0.0329878    0.0140193
3-6 months     ki1135781-COHORTS           INDIA                          [25-30)              <20               -0.0086307   -0.0325704    0.0153090
3-6 months     ki1135781-COHORTS           INDIA                          >=30                 <20               -0.0211625   -0.0463641    0.0040390
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [20-25)              <20               -0.0290767   -0.0398763   -0.0182771
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     [25-30)              <20               -0.0184899   -0.0325245   -0.0044554
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     >=30                 <20               -0.0241926   -0.0407292   -0.0076560
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [20-25)              <20                0.0081681   -0.0250361    0.0413723
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     [25-30)              <20               -0.0168551   -0.0484732    0.0147631
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     >=30                 <20               -0.0258546   -0.0629996    0.0112904
6-12 months    ki0047075b-MAL-ED           BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [20-25)              <20                0.0594915   -0.0070926    0.1260756
6-12 months    ki0047075b-MAL-ED           BRAZIL                         [25-30)              <20                0.0371982   -0.0293645    0.1037610
6-12 months    ki0047075b-MAL-ED           BRAZIL                         >=30                 <20                0.0547619   -0.0145711    0.1240949
6-12 months    ki0047075b-MAL-ED           INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           INDIA                          [20-25)              <20               -0.0127540   -0.0515092    0.0260011
6-12 months    ki0047075b-MAL-ED           INDIA                          [25-30)              <20                0.0046239   -0.0353749    0.0446226
6-12 months    ki0047075b-MAL-ED           INDIA                          >=30                 <20                0.0003914   -0.0565585    0.0573413
6-12 months    ki0047075b-MAL-ED           PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           PERU                           [20-25)              <20                0.0003549   -0.0387178    0.0394276
6-12 months    ki0047075b-MAL-ED           PERU                           [25-30)              <20               -0.0380622   -0.0761527    0.0000283
6-12 months    ki0047075b-MAL-ED           PERU                           >=30                 <20               -0.0015834   -0.0371933    0.0340264
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)              <20               -0.0473505   -0.0987268    0.0040257
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)              <20                0.0142253   -0.0480011    0.0764517
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   >=30                 <20               -0.0430368   -0.0941582    0.0080846
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.0722995   -0.0077172    0.1523162
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.0458243   -0.0316257    0.1232744
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0306812   -0.0449710    0.1063333
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)              <20               -0.0212747   -0.0989386    0.0563891
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)              <20                0.0033009   -0.0790708    0.0856727
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          >=30                 <20                0.0045408   -0.0918555    0.1009370
6-12 months    ki1000108-IRC               INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC               INDIA                          [20-25)              <20                0.0038557   -0.0611611    0.0688726
6-12 months    ki1000108-IRC               INDIA                          [25-30)              <20               -0.0089794   -0.0746200    0.0566613
6-12 months    ki1000108-IRC               INDIA                          >=30                 <20                0.0155588   -0.0587911    0.0899088
6-12 months    ki1000304-VITAMIN-A         INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-VITAMIN-A         INDIA                          [20-25)              <20                0.0031741   -0.0178078    0.0241560
6-12 months    ki1000304-VITAMIN-A         INDIA                          [25-30)              <20               -0.0060107   -0.0275776    0.0155563
6-12 months    ki1000304-VITAMIN-A         INDIA                          >=30                 <20               -0.0059817   -0.0301803    0.0182170
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [20-25)              <20               -0.0122315   -0.0342330    0.0097701
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          [25-30)              <20               -0.0249604   -0.0481531   -0.0017676
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          >=30                 <20               -0.0158554   -0.0419874    0.0102767
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [20-25)              <20               -0.0395311   -0.1917195    0.1126574
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          [25-30)              <20               -0.0897570   -0.2325301    0.0530161
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          >=30                 <20               -0.0592822   -0.2119700    0.0934056
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [20-25)              <20                0.0040552   -0.0289609    0.0370713
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     [25-30)              <20               -0.0132184   -0.0471092    0.0206723
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     >=30                 <20               -0.0019829   -0.0377196    0.0337539
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [20-25)              <20               -0.0032163   -0.0276505    0.0212179
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     [25-30)              <20               -0.0133613   -0.0392021    0.0124796
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     >=30                 <20               -0.0078782   -0.0347117    0.0189553
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)              <20                0.0135161   -0.0080168    0.0350489
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)              <20                0.0162887   -0.0049941    0.0375716
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     >=30                 <20                0.0145042   -0.0114534    0.0404617
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          [20-25)              <20               -0.0094234   -0.0313424    0.0124957
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          [25-30)              <20                0.0030579   -0.0186881    0.0248039
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          >=30                 <20               -0.0107408   -0.0326046    0.0111229
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0035856   -0.0478140    0.0406427
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0088763   -0.0523515    0.0345989
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   >=30                 <20               -0.0119166   -0.0553762    0.0315430
6-12 months    ki1101329-Keneba            GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba            GAMBIA                         [20-25)              <20                0.0091327   -0.0164523    0.0347178
6-12 months    ki1101329-Keneba            GAMBIA                         [25-30)              <20                0.0050894   -0.0191294    0.0293082
6-12 months    ki1101329-Keneba            GAMBIA                         >=30                 <20               -0.0112076   -0.0335835    0.0111683
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [20-25)              <20               -0.0425944   -0.0820376   -0.0031512
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      [25-30)              <20               -0.0386997   -0.0829787    0.0055793
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      >=30                 <20               -0.0370963   -0.0812911    0.0070986
6-12 months    ki1113344-GMS-Nepal         NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal         NEPAL                          [20-25)              <20               -0.0170971   -0.0405969    0.0064028
6-12 months    ki1113344-GMS-Nepal         NEPAL                          [25-30)              <20               -0.0325832   -0.0560984   -0.0090681
6-12 months    ki1113344-GMS-Nepal         NEPAL                          >=30                 <20               -0.0288284   -0.0554904   -0.0021664
6-12 months    ki1119695-PROBIT            BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT            BELARUS                        [20-25)              <20               -0.0050585   -0.0205402    0.0104232
6-12 months    ki1119695-PROBIT            BELARUS                        [25-30)              <20               -0.0197936   -0.0362814   -0.0033058
6-12 months    ki1119695-PROBIT            BELARUS                        >=30                 <20               -0.0110765   -0.0296518    0.0074988
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)              <20               -0.0034422   -0.0184515    0.0115670
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)              <20               -0.0005206   -0.0162486    0.0152073
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       >=30                 <20               -0.0062211   -0.0222271    0.0097848
6-12 months    ki1135781-COHORTS           GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           GUATEMALA                      [20-25)              <20               -0.0202650   -0.0444565    0.0039264
6-12 months    ki1135781-COHORTS           GUATEMALA                      [25-30)              <20               -0.0331586   -0.0574460   -0.0088713
6-12 months    ki1135781-COHORTS           GUATEMALA                      >=30                 <20               -0.0119316   -0.0349459    0.0110827
6-12 months    ki1135781-COHORTS           INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           INDIA                          [20-25)              <20               -0.0023768   -0.0204500    0.0156964
6-12 months    ki1135781-COHORTS           INDIA                          [25-30)              <20               -0.0071702   -0.0252362    0.0108957
6-12 months    ki1135781-COHORTS           INDIA                          >=30                 <20               -0.0085404   -0.0271397    0.0100588
6-12 months    ki1135781-COHORTS           PHILIPPINES                    <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [20-25)              <20               -0.0093502   -0.0279118    0.0092114
6-12 months    ki1135781-COHORTS           PHILIPPINES                    [25-30)              <20               -0.0217822   -0.0404432   -0.0031211
6-12 months    ki1135781-COHORTS           PHILIPPINES                    >=30                 <20               -0.0174766   -0.0361176    0.0011645
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [20-25)              <20               -0.0008722   -0.0220765    0.0203322
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         [25-30)              <20               -0.0022849   -0.0245598    0.0199901
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         >=30                 <20               -0.0115979   -0.0337492    0.0105534
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [20-25)              <20               -0.0218796   -0.0499786    0.0062194
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)              <20               -0.0110787   -0.0401849    0.0180274
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         >=30                 <20               -0.0180918   -0.0464182    0.0102346
6-12 months    ki1148112-LCNI-5            MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5            MALAWI                         [20-25)              <20                0.0177728   -0.0191615    0.0547072
6-12 months    ki1148112-LCNI-5            MALAWI                         [25-30)              <20                0.0366289   -0.0002075    0.0734653
6-12 months    ki1148112-LCNI-5            MALAWI                         >=30                 <20                0.0169061   -0.0174659    0.0512781
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [20-25)              <20               -0.0126528   -0.0185347   -0.0067709
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     [25-30)              <20               -0.0136971   -0.0214514   -0.0059428
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     >=30                 <20               -0.0157304   -0.0262049   -0.0052558
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [20-25)              <20               -0.0035082   -0.0220248    0.0150085
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     [25-30)              <20               -0.0032139   -0.0213341    0.0149063
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     >=30                 <20               -0.0033543   -0.0232868    0.0165783
12-24 months   ki0047075b-MAL-ED           BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [20-25)              <20               -0.0314343   -0.0634588    0.0005902
12-24 months   ki0047075b-MAL-ED           BRAZIL                         [25-30)              <20               -0.0305483   -0.0608535   -0.0002431
12-24 months   ki0047075b-MAL-ED           BRAZIL                         >=30                 <20               -0.0270494   -0.0637820    0.0096832
12-24 months   ki0047075b-MAL-ED           INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           INDIA                          [20-25)              <20               -0.0041448   -0.0180751    0.0097855
12-24 months   ki0047075b-MAL-ED           INDIA                          [25-30)              <20               -0.0090808   -0.0242678    0.0061062
12-24 months   ki0047075b-MAL-ED           INDIA                          >=30                 <20               -0.0131319   -0.0335379    0.0072740
12-24 months   ki0047075b-MAL-ED           PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           PERU                           [20-25)              <20               -0.0103489   -0.0291750    0.0084773
12-24 months   ki0047075b-MAL-ED           PERU                           [25-30)              <20                0.0142487   -0.0046978    0.0331951
12-24 months   ki0047075b-MAL-ED           PERU                           >=30                 <20                0.0083434   -0.0097307    0.0264175
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [20-25)              <20                0.0072377   -0.0155840    0.0300595
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   [25-30)              <20               -0.0135116   -0.0411399    0.0141166
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   >=30                 <20                0.0025811   -0.0202401    0.0254023
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0051999   -0.0479012    0.0375014
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.0011845   -0.0413407    0.0437097
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0214237   -0.0194334    0.0622807
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          [20-25)              <20                0.0131227   -0.0218277    0.0480731
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          [25-30)              <20                0.0008489   -0.0356397    0.0373374
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          >=30                 <20               -0.0150974   -0.0613792    0.0311843
12-24 months   ki1000108-IRC               INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC               INDIA                          [20-25)              <20                0.0068738   -0.0142904    0.0280379
12-24 months   ki1000108-IRC               INDIA                          [25-30)              <20               -0.0001490   -0.0228121    0.0225141
12-24 months   ki1000108-IRC               INDIA                          >=30                 <20               -0.0272178   -0.0596260    0.0051903
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [20-25)              <20                0.0342520    0.0004223    0.0680816
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     [25-30)              <20                0.0182338   -0.0095342    0.0460017
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     >=30                 <20                0.0066863   -0.0351118    0.0484844
12-24 months   ki1000111-WASH-Kenya        KENYA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000111-WASH-Kenya        KENYA                          [20-25)              <20               -0.0083993   -0.0266437    0.0098451
12-24 months   ki1000111-WASH-Kenya        KENYA                          [25-30)              <20               -0.0003475   -0.0185604    0.0178655
12-24 months   ki1000111-WASH-Kenya        KENYA                          >=30                 <20                0.0050578   -0.0138564    0.0239720
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [20-25)              <20               -0.0093297   -0.0265930    0.0079336
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     [25-30)              <20               -0.0059097   -0.0231180    0.0112987
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     >=30                 <20               -0.0025141   -0.0204265    0.0153982
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [20-25)              <20               -0.0156544   -0.0291701   -0.0021388
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     [25-30)              <20               -0.0104972   -0.0246720    0.0036777
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     >=30                 <20               -0.0137346   -0.0294174    0.0019482
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [20-25)              <20               -0.0082902   -0.0193928    0.0028124
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     [25-30)              <20               -0.0138008   -0.0255917   -0.0020100
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     >=30                 <20               -0.0022422   -0.0155505    0.0110661
12-24 months   ki1101329-Keneba            GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba            GAMBIA                         [20-25)              <20               -0.0026618   -0.0149165    0.0095929
12-24 months   ki1101329-Keneba            GAMBIA                         [25-30)              <20               -0.0012717   -0.0140811    0.0115378
12-24 months   ki1101329-Keneba            GAMBIA                         >=30                 <20                0.0085239   -0.0029840    0.0200317
12-24 months   ki1113344-GMS-Nepal         NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal         NEPAL                          [20-25)              <20               -0.0212161   -0.0356627   -0.0067696
12-24 months   ki1113344-GMS-Nepal         NEPAL                          [25-30)              <20               -0.0143844   -0.0291017    0.0003329
12-24 months   ki1113344-GMS-Nepal         NEPAL                          >=30                 <20               -0.0111046   -0.0274079    0.0051986
12-24 months   ki1119695-PROBIT            BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT            BELARUS                        [20-25)              <20                0.0088166   -0.0181162    0.0357493
12-24 months   ki1119695-PROBIT            BELARUS                        [25-30)              <20               -0.0003536   -0.0206242    0.0199170
12-24 months   ki1119695-PROBIT            BELARUS                        >=30                 <20                0.0157594   -0.0065836    0.0381023
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [20-25)              <20                0.0369141    0.0066497    0.0671784
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       [25-30)              <20                0.0187741   -0.0116691    0.0492174
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       >=30                 <20                0.0184349   -0.0161339    0.0530037
12-24 months   ki1135781-COHORTS           GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           GUATEMALA                      [20-25)              <20               -0.0022207   -0.0148234    0.0103820
12-24 months   ki1135781-COHORTS           GUATEMALA                      [25-30)              <20                0.0024337   -0.0100921    0.0149595
12-24 months   ki1135781-COHORTS           GUATEMALA                      >=30                 <20                0.0095496   -0.0022001    0.0212994
12-24 months   ki1135781-COHORTS           INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           INDIA                          [20-25)              <20                0.0068485   -0.0012542    0.0149511
12-24 months   ki1135781-COHORTS           INDIA                          [25-30)              <20                0.0051147   -0.0030120    0.0132413
12-24 months   ki1135781-COHORTS           INDIA                          >=30                 <20                0.0045685   -0.0037932    0.0129302
12-24 months   ki1135781-COHORTS           PHILIPPINES                    <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [20-25)              <20                0.0000987   -0.0086064    0.0088038
12-24 months   ki1135781-COHORTS           PHILIPPINES                    [25-30)              <20                0.0025831   -0.0062367    0.0114030
12-24 months   ki1135781-COHORTS           PHILIPPINES                    >=30                 <20                0.0043508   -0.0043423    0.0130439
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [20-25)              <20               -0.0017246   -0.0163176    0.0128683
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         [25-30)              <20               -0.0093104   -0.0248549    0.0062342
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         >=30                 <20                0.0038797   -0.0108672    0.0186265
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [20-25)              <20                0.0081007   -0.0071159    0.0233173
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         [25-30)              <20                0.0132190   -0.0014598    0.0278978
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         >=30                 <20                0.0225612    0.0057910    0.0393314
12-24 months   ki1148112-LCNI-5            MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5            MALAWI                         [20-25)              <20                0.0046994   -0.0135321    0.0229309
12-24 months   ki1148112-LCNI-5            MALAWI                         [25-30)              <20                0.0002839   -0.0189650    0.0195327
12-24 months   ki1148112-LCNI-5            MALAWI                         >=30                 <20                0.0168070   -0.0012949    0.0349089
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [20-25)              <20               -0.0044400   -0.0083794   -0.0005006
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     [25-30)              <20               -0.0035771   -0.0085789    0.0014246
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     >=30                 <20               -0.0015931   -0.0083420    0.0051558
