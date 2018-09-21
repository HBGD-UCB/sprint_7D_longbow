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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        gagebrth             ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ------------------  ------------  -------  ------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      123     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       90     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       25     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       27     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       46     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       37     348
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              0      121     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              1      128     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        0       16     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        1       26     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     0       44     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     1       54     389
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              0       38     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              1       12     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        0      264     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        1      222     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     0      122     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     1       96     754
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       19    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        9    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      862    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      496    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       66    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       35    1487
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      152     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       16     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      214     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       47     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      280     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       45     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1145    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      240    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      253    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       91    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      401    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1      112    2242
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              0      522    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              1      314    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        0      152    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        1      104    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     0      387    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     1      212    1691
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              0     7999   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              1      622   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        0      549   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        1       42   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     0     7119   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     1      546   16877
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      394     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       54     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        0      105     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       25     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     0      191     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     1       40     809
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              0      470    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              1      109    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        0      242    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        1       66    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     0      358    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     1      100    1345
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      830    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      328    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      434    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      199    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      822    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      380    2993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    16840   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     3606   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     6616   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1     1366   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     9023   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1     1950   39401
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      136     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       64     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       36     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       15     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       58     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       23     332
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              0      160     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              1       79     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        0       28     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        1       10     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     0       54     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     1       40     371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              0       42     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              1        8     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        0      390     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        1       90     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     0      170     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     1       46     746
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       25    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        3    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0     1170    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      162    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       80    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       19    1459
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      162     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      255     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1        5     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      312     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1        9     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1270    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      110    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      301    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       42    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      471    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       40    2234
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              0      642    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              1      110    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        0      202    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        1       39    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     0      496    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     1       63    1552
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              0     7954   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              1      552   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        0      546   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        1       36   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     0     7095   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     1      474   16657
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              0      406     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              1        4     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        0      120     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        1        2     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     0      208     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     1        5     745
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              0      484    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              1       49    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        0      262    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        1       20    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     0      395    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     1       39    1249
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              0     1047    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      103    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      569    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        1       60    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     0     1076    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     1      117    2972
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    18760   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1548   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     7384   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      514   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0    10054   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      844   39104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      164     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       51     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       33     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       19     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       63     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       21     351
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              0      177     390
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              1       73     390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        0       21     390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        1       21     390
6-24 months                   ki1000108-IRC              INDIA                          Early term                     0       68     390
6-24 months                   ki1000108-IRC              INDIA                          Early term                     1       30     390
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              0       44     750
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              1        6     750
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        0      318     750
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        1      166     750
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     0      140     750
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     1       76     750
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       20    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        7    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      865    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      391    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       72    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       24    1379
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      146     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       12     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      210     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       45     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      278     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       39     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      997    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      161    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      240    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       60    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      358    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       81    1897
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              0      546    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              1      268    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        0      159    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        1       82    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     0      399    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     1      181    1635
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              0     8403   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              1       76   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        0      574   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        1        6   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     0     7454   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     1       85   16598
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      376     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       51     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       97     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       24     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     0      185     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     1       36     769
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              0      510    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              1       64    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        0      255    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        1       48    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     0      387    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     1       63    1327
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      815    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      266    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      419    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      167    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      809    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      311    2787
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    11306   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     2241   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     4064   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      908   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     5923   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1     1212   25654


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c795d1f7-5c84-4d34-be17-6cf77567d035/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c795d1f7-5c84-4d34-be17-6cf77567d035/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c795d1f7-5c84-4d34-be17-6cf77567d035/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c795d1f7-5c84-4d34-be17-6cf77567d035/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4249980    0.3600637   0.4899323
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5447484    0.4285628   0.6609340
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.4654670    0.3670551   0.5638789
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5109074    0.4491021   0.5727127
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.5828397    0.4470622   0.7186172
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.5355349    0.4396966   0.6313731
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.2211990    0.0875968   0.3548012
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              NA                0.4697413    0.4077734   0.5317092
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           NA                0.4342686    0.3445199   0.5240173
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.3214286    0.0856647   0.5571925
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3652430    0.3139329   0.4165531
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.3465347    0.2741080   0.4189613
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0897496    0.0468034   0.1326957
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1757131    0.1299281   0.2214982
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1374455    0.1000720   0.1748190
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1739117    0.1541309   0.1936925
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2810132    0.2367163   0.3253101
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2246649    0.1903090   0.2590209
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3690571    0.3370504   0.4010638
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4062744    0.3488176   0.4637312
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3537021    0.3164941   0.3909101
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0712979    0.0583360   0.0842599
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0657586    0.0364187   0.0950984
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0716877    0.0588330   0.0845425
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1208005    0.0907251   0.1508758
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1909631    0.1246178   0.2573083
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1733456    0.1250094   0.2216818
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1855177    0.1542805   0.2167549
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2199048    0.1759418   0.2638678
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.2185949    0.1819659   0.2552240
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2827277    0.2568765   0.3085789
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3134984    0.2777107   0.3492861
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.3166782    0.2905046   0.3428518
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1770014    0.1687037   0.1852991
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1680862    0.1556794   0.1804930
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1769270    0.1655921   0.1882619
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3199891    0.2552481   0.3847301
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2942022    0.1690274   0.4193770
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2839909    0.1856783   0.3823036
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3286412    0.2695225   0.3877599
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.2200318    0.0998151   0.3402484
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.4050027    0.3090844   0.5009210
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1600000    0.0161000   0.3039000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm              NA                0.1875000    0.1380533   0.2369467
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term           NA                0.2129630    0.1356471   0.2902789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0357143    0.0076336   0.0637950
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.0192308    0.0025263   0.0359353
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0280374    0.0099665   0.0461083
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0794915    0.0653123   0.0936707
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1271708    0.0943406   0.1600010
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0801265    0.0573475   0.1029056
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1434606    0.1185080   0.1684132
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1607427    0.1163773   0.2051081
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1129805    0.0871793   0.1387818
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0642174    0.0515592   0.0768757
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0601050    0.0368198   0.0833903
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0631182    0.0514072   0.0748291
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0904718    0.0660422   0.1149015
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0709737    0.0412390   0.1007083
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0910498    0.0642796   0.1178200
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0895493    0.0731566   0.1059419
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0934219    0.0708529   0.1159908
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0975187    0.0807619   0.1142754
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0770224    0.0710633   0.0829815
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0638379    0.0560633   0.0716126
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0770183    0.0694433   0.0845933
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2363809    0.1796318   0.2931299
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3679310    0.2412902   0.4945718
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2490969    0.1578425   0.3403513
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.2941582    0.2379956   0.3503207
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.5472266    0.4029568   0.6914963
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.3196214    0.2297884   0.4094543
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1200000   -0.0075528   0.2475528
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm              NA                0.3429752    0.2830868   0.4028636
6-24 months                   ki1000109-EE               PAKISTAN                       Early term           NA                0.3518519    0.2616671   0.4420366
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2592593    0.0238559   0.4946626
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3113057    0.2697687   0.3528428
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.2500000    0.1619881   0.3380119
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0718289    0.0313371   0.1123206
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1719454    0.1260655   0.2178253
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1222443    0.0862056   0.1582830
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1396106    0.1198557   0.1593654
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2102588    0.1679824   0.2525352
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1876190    0.1531656   0.2220724
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3229404    0.2914722   0.3544086
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3416128    0.2848310   0.3983946
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3123441    0.2756861   0.3490022
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0089633    0.0061435   0.0117831
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0103448   -0.0000468   0.0207365
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0112747    0.0075006   0.0150488
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1197903    0.0891091   0.1504714
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1965191    0.1271302   0.2659080
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1634744    0.1152925   0.2116563
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1097069    0.0844251   0.1349886
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1630248    0.1240394   0.2020102
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.1399801    0.1091858   0.1707745
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2426531    0.2170434   0.2682629
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2798331    0.2436540   0.3160121
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2760041    0.2498528   0.3021554
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1656651    0.1559730   0.1753571
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1774177    0.1615376   0.1932977
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1675623    0.1546974   0.1804272


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4425287   0.3902692   0.4947882
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5347044   0.4850733   0.5843354
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3631473   0.3130392   0.4132554
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975914   0.1811057   0.2140772
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3725606   0.3495097   0.3956116
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1470952   0.1226726   0.1715178
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2044610   0.1828992   0.2260227
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3030404   0.2865732   0.3195077
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1756808   0.1694214   0.1819403
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3072289   0.2575285   0.3569293
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3477089   0.2991827   0.3962350
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0859445   0.0743193   0.0975697
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1365979   0.1195068   0.1536891
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0864692   0.0708761   0.1020623
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0942127   0.0837084   0.1047169
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0743146   0.0700205   0.0786087
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2592593   0.2133485   0.3051700
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3179487   0.2716722   0.3642252
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3060189   0.2640311   0.3480066
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591987   0.1427306   0.1756669
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3247706   0.3020649   0.3474764
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1443433   0.1194882   0.1691984
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1318764   0.1136647   0.1500881
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2669537   0.2505274   0.2833801
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1699930   0.1628757   0.1771103


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2817669   0.9866591   1.6651408
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0952216   0.8451987   1.4192053
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.1407933   0.8772907   1.4834414
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0482034   0.8445795   1.3009200
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    2.1236140   1.1454511   3.9370832
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.9632482   1.0377956   3.7139718
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.1363116   0.5359720   2.4090883
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    1.0781078   0.5705854   2.0370596
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.9578158   1.1347899   3.3777553
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.5314334   0.8830054   2.6560296
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.6158382   1.3308797   1.9618098
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2918331   1.0681349   1.5623801
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1008442   0.9332381   1.2985518
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9583939   0.8376218   1.0965795
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9223072   0.6003495   1.4169258
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0054676   0.8830491   1.1448571
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.5808142   1.0315529   2.4225354
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.4349745   0.9882102   2.0837185
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1853573   0.9141951   1.5369498
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1782968   0.9306585   1.4918292
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1088349   0.9581741   1.2831851
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1200819   0.9903955   1.2667498
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9496320   0.8727931   1.0332356
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9995795   0.9247857   1.0804224
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.9194133   0.5739908   1.4727082
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8875020   0.5943419   1.3252638
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.6695196   0.3767683   1.1897405
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.2323551   0.9162152   1.6575792
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.1718750   0.4590316   2.9917133
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.3310185   0.5046240   3.5107532
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.5384615   0.1668478   1.7377569
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    0.7850467   0.2840280   2.1698509
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5998035   1.1704695   2.1866195
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0079883   0.7214461   1.4083388
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1204661   0.8087320   1.5523614
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7875372   0.5914951   1.0485544
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9359617   0.6370583   1.3751085
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9828825   0.8589880   1.1246466
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.7844837   0.4767544   1.2908422
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0063883   0.6756231   1.4990866
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0432456   0.7705994   1.4123569
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0889947   0.8474675   1.3993569
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.8288223   0.7219251   0.9515479
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9999462   0.8855283   1.1291479
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5565176   1.0233598   2.3674440
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0537947   0.6806614   1.6314768
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.8603141   1.3435063   2.5759228
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0865630   0.7745714   1.5242224
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    2.8581267   0.9733416   8.3926223
6-24 months                   ki1000109-EE               PAKISTAN                       Early term           Full or late term    2.9320988   0.9824674   8.7506244
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.2007507   0.4570909   3.1543011
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.9642857   0.3949159   2.3545441
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    2.3938210   1.2826193   4.4677160
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.7018824   0.9007302   3.2156174
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5060376   1.1782026   1.9250928
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3438739   1.0664982   1.6933896
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0578201   0.8732768   1.2813616
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9671882   0.8315055   1.1250111
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1541289   0.4648563   2.8654305
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2578713   0.8760389   1.8061302
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.6405262   1.0613805   2.5356846
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.3646718   0.9242548   2.0149520
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4860038   1.0687088   2.0662385
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2759472   0.9302343   1.7501411
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1532225   0.9763289   1.3621663
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1374430   0.9872648   1.3104656
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0709420   0.9630616   1.1909069
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0114521   0.9178430   1.1146083


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0175307   -0.0230002   0.0580616
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0237970   -0.0134110   0.0610050
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.2164668    0.0844196   0.3485140
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0417187   -0.1934900   0.2769274
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0534865    0.0128821   0.0940909
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0236797    0.0104667   0.0368927
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0035035   -0.0190206   0.0260276
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0003973   -0.0038984   0.0046930
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0262947    0.0040911   0.0484984
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0189433   -0.0049427   0.0428292
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0203127   -0.0001426   0.0407680
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0013206   -0.0068729   0.0042317
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0127602   -0.0528980   0.0273777
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0190677   -0.0168334   0.0549687
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0330295   -0.1067560   0.1728150
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0090120   -0.0328503   0.0148263
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0064530   -0.0027567   0.0156627
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0068626   -0.0242349   0.0105096
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0004604   -0.0044725   0.0035516
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0040027   -0.0220990   0.0140936
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0046634   -0.0083486   0.0176754
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0027078   -0.0064018   0.0009862
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0228784   -0.0140759   0.0598327
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0237906   -0.0112033   0.0587844
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.2106667    0.0827068   0.3386265
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0467596   -0.1999217   0.2934409
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0596780    0.0203411   0.0990149
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0195882    0.0062115   0.0329649
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0018302   -0.0202390   0.0238995
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0010981   -0.0006579   0.0028542
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0245530    0.0020432   0.0470629
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0221696    0.0022672   0.0420719
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0243006    0.0039592   0.0446420
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0043279   -0.0024161   0.0110719


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0396149   -0.0564242   0.1269230
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0445049   -0.0277761   0.1117026
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.4945938    0.0885681   0.7197427
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.1148810   -0.8371874   0.5735679
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3734150    0.0249248   0.5973554
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1198417    0.0509249   0.1837542
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0094038   -0.0529313   0.0680485
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0055415   -0.0562817   0.0637462
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1787600    0.0156403   0.3148489
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0926497   -0.0318490   0.2021269
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0670297   -0.0029541   0.1321302
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0075171   -0.0396283   0.0236022
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0415331   -0.1807107   0.0812388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0548380   -0.0542152   0.1526102
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1711111   -0.9844754   0.6537842
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3375000   -1.5855791   0.3081216
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0750831   -0.0380627   0.1758963
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0502396   -0.1852704   0.0694079
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0072217   -0.0719270   0.0535778
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0462901   -0.2776992   0.1432076
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0494987   -0.0990250   0.1779506
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0364369   -0.0871633   0.0119227
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0882452   -0.0656776   0.2199360
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0748251   -0.0418547   0.1784377
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.6370968   -0.0338224   0.8726099
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.1527997   -1.1757018   0.6701072
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4538014    0.0736111   0.6779615
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1230422    0.0357065   0.2024680
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0056355   -0.0646895   0.0713154
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1091425   -0.0756863   0.2622133
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1701016    0.0010190   0.3105660
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1681086    0.0039006   0.3052468
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0910292    0.0115749   0.1640965
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0254594   -0.0150208   0.0643252
