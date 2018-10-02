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
![](/tmp/7fa47412-2733-4a95-91cf-e0383fadf4c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7fa47412-2733-4a95-91cf-e0383fadf4c2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7fa47412-2733-4a95-91cf-e0383fadf4c2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7fa47412-2733-4a95-91cf-e0383fadf4c2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4249937    0.3597647   0.4902227
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5426207    0.4220974   0.6631440
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.4639857    0.3640414   0.5639300
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5101244    0.4483063   0.5719425
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.5844421    0.4488566   0.7200276
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.5348767    0.4389043   0.6308491
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.2225260    0.0853539   0.3596981
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              NA                0.4694789    0.4074977   0.5314602
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           NA                0.4325284    0.3427654   0.5222913
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.3214286    0.0856647   0.5571925
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3652430    0.3139329   0.4165531
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.3465347    0.2741080   0.4189613
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0897216    0.0469031   0.1325401
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1759308    0.1300965   0.2217652
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1374960    0.1001027   0.1748892
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1738278    0.1540661   0.1935895
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2800681    0.2359885   0.3241477
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2240935    0.1897751   0.2584119
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3691319    0.3369898   0.4012740
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4064530    0.3475538   0.4653522
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3538589    0.3164123   0.3913055
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0712975    0.0583393   0.0842556
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0657432    0.0364806   0.0950057
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0716915    0.0588337   0.0845494
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1207747    0.0907550   0.1507945
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1907084    0.1251716   0.2562452
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1736482    0.1256214   0.2216750
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1853134    0.1541714   0.2164554
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2201466    0.1763485   0.2639447
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.2182797    0.1817779   0.2547814
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2828005    0.2569018   0.3086993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3139425    0.2779882   0.3498969
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.3168122    0.2906007   0.3430238
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1770015    0.1687038   0.1852992
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1680863    0.1556796   0.1804931
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1769270    0.1655921   0.1882619
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3200000    0.2552533   0.3847467
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2941176    0.1688772   0.4193581
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2839506    0.1856053   0.3822959
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3279250    0.2688150   0.3870350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.2160916    0.0982952   0.3338879
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.4053160    0.3092700   0.5013621
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1600000    0.0161000   0.3039000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm              NA                0.1875000    0.1380533   0.2369467
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term           NA                0.2129630    0.1356471   0.2902789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0357143    0.0076336   0.0637950
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.0192308    0.0025263   0.0359353
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0280374    0.0099665   0.0461083
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0796831    0.0654701   0.0938960
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1279347    0.0947084   0.1611611
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0801917    0.0573131   0.1030702
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1433184    0.1186287   0.1680081
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1635652    0.1207133   0.2064171
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1139659    0.0884271   0.1395048
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0642172    0.0515591   0.0768753
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0601029    0.0368228   0.0833830
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0631184    0.0514072   0.0748295
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0899705    0.0655356   0.1144055
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0691410    0.0393075   0.0989745
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0891863    0.0623674   0.1160052
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0895730    0.0730976   0.1060485
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0936615    0.0707522   0.1165708
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0975540    0.0807154   0.1143926
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0770225    0.0710634   0.0829816
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0638379    0.0560633   0.0716125
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0770183    0.0694433   0.0845933
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2362137    0.1795005   0.2929269
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3684573    0.2426466   0.4942680
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2488970    0.1579214   0.3398727
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.2927917    0.2376045   0.3479790
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.5422946    0.4167208   0.6678685
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.3126697    0.2284526   0.3968869
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1200000   -0.0075528   0.2475528
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm              NA                0.3429752    0.2830868   0.4028636
6-24 months                   ki1000109-EE               PAKISTAN                       Early term           NA                0.3518519    0.2616671   0.4420366
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2592593    0.0238559   0.4946626
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3113057    0.2697687   0.3528428
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.2500000    0.1619881   0.3380119
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0717175    0.0313910   0.1120439
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1720431    0.1261387   0.2179476
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1222571    0.0862125   0.1583018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1396270    0.1198975   0.1593566
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2089464    0.1667987   0.2510940
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1871546    0.1527121   0.2215971
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3229975    0.2915096   0.3544854
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3413759    0.2844567   0.3982950
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3123022    0.2756155   0.3489889
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0089633    0.0061435   0.0117831
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0103448   -0.0000468   0.0207365
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0112747    0.0075006   0.0150488
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1197722    0.0890876   0.1504568
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1965954    0.1271435   0.2660474
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1634587    0.1152578   0.2116597
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1098753    0.0846286   0.1351219
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1638244    0.1248467   0.2028021
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.1396153    0.1088969   0.1703337
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2427179    0.2171307   0.2683052
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2798600    0.2437701   0.3159499
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2760195    0.2498920   0.3021469
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1656646    0.1559726   0.1753567
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1774175    0.1615374   0.1932976
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1675621    0.1546971   0.1804270


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


agecat                        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2767735   0.9752853   1.671460
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0917472   0.8393359   1.420066
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.1456853   0.8817431   1.488636
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0485220   0.8443142   1.302120
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    2.1097713   1.1242425   3.959230
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.9437207   1.0151995   3.721485
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.1363116   0.5359720   2.409088
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    1.0781078   0.5705854   2.037060
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.9608528   1.1378674   3.379079
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.5324733   0.8845669   2.654943
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.6111813   1.3276128   1.955318
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2891695   1.0659147   1.559185
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1011051   0.9305107   1.302975
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9586246   0.8372500   1.097595
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9220972   0.6008403   1.415124
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0055273   0.8831062   1.144919
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.5790421   1.0340577   2.411252
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.4377859   0.9925553   2.082734
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1879694   0.9170863   1.538864
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1778949   0.9307734   1.490628
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1101200   0.9589248   1.285154
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1202675   0.9903995   1.267165
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9496325   0.8727938   1.033236
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9995792   0.9247855   1.080422
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.9191176   0.5736217   1.472708
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8873457   0.5941417   1.325243
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.6589664   0.3711983   1.169824
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.2360023   0.9185335   1.663197
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.1718750   0.4590316   2.991713
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.3310185   0.5046240   3.510753
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.5384615   0.1668478   1.737757
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    0.7850467   0.2840280   2.169851
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.6055448   1.1725184   2.198494
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0063826   0.7192875   1.408068
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1412713   0.8342727   1.561240
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7951939   0.5999646   1.053951
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9359324   0.6370833   1.374969
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9828888   0.8589921   1.124656
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.7684854   0.4616578   1.279237
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.9912839   0.6612930   1.485943
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0456439   0.7700862   1.419803
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0891004   0.8465296   1.401179
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.8288210   0.7219243   0.951546
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9999455   0.8855280   1.129147
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5598475   1.0279018   2.367078
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0536944   0.6811707   1.629946
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.8521515   1.3757994   2.493434
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0678912   0.7709804   1.479145
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    2.8581267   0.9733416   8.392622
6-24 months                   ki1000109-EE               PAKISTAN                       Early term           Full or late term    2.9320988   0.9824674   8.750624
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.2007507   0.4570909   3.154301
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.9642857   0.3949159   2.354544
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    2.3989019   1.2870168   4.471372
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.7047053   0.9033585   3.216907
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4964609   1.1705652   1.913089
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3403896   1.0637051   1.689044
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0568995   0.8721027   1.280854
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9668874   0.8311496   1.124793
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1541289   0.4648563   2.865430
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2578713   0.8760389   1.806130
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.6414114   1.0617244   2.537599
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.3647469   0.9241395   2.015425
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4910035   1.0736305   2.070630
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2706709   0.9264879   1.742715
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1530257   0.9764885   1.361479
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1372026   0.9872057   1.309990
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0709436   0.9630625   1.190910
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0114534   0.9178438   1.114610


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0175350   -0.0231598   0.0582298
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0245799   -0.0127016   0.0618614
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.2151398    0.0798817   0.3503979
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0417187   -0.1934900   0.2769274
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0535145    0.0130635   0.0939654
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0237636    0.0105817   0.0369455
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0034287   -0.0191865   0.0260439
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0003977   -0.0038960   0.0046915
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0263204    0.0041855   0.0484554
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0191476   -0.0046720   0.0429672
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0202399   -0.0002507   0.0407304
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0013206   -0.0068729   0.0042316
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0127711   -0.0529146   0.0273724
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0197839   -0.0162355   0.0558033
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0330295   -0.1067560   0.1728150
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0090120   -0.0328503   0.0148263
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0062614   -0.0029905   0.0155133
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0067205   -0.0239046   0.0104637
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0004602   -0.0044722   0.0035518
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0035013   -0.0216061   0.0146035
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0046396   -0.0084369   0.0177161
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0027079   -0.0064018   0.0009861
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0230456   -0.0138795   0.0599707
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0251570   -0.0089648   0.0592788
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.2106667    0.0827068   0.3386265
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0467596   -0.1999217   0.2934409
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0597894    0.0206162   0.0989625
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0195717    0.0062239   0.0329195
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0017732   -0.0203091   0.0238554
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0010981   -0.0006579   0.0028542
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0245711    0.0020561   0.0470861
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0220011    0.0021150   0.0418873
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0242358    0.0039118   0.0445598
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0043283   -0.0024157   0.0110724


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0396246   -0.0568526   0.1272946
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0459692   -0.0264665   0.1132933
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.4915618    0.0720659   0.7214141
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.1148810   -0.8371874   0.5735679
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3736103    0.0267211   0.5968637
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1202665    0.0515170   0.1840327
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0092032   -0.0533942   0.0680807
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0055478   -0.0562458   0.0637262
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1789348    0.0163884   0.3146197
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0936492   -0.0304617   0.2028120
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0667894   -0.0033244   0.1320036
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0075173   -0.0396284   0.0236020
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0415686   -0.1807664   0.0812194
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0568979   -0.0525347   0.1549527
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1711111   -0.9844754   0.6537842
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3375000   -1.5855791   0.3081216
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0728542   -0.0408361   0.1741262
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0491991   -0.1827604   0.0692800
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0072182   -0.0719230   0.0535808
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0404922   -0.2721667   0.1489920
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0492461   -0.1000913   0.1783110
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0364379   -0.0871642   0.0119215
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0888902   -0.0649039   0.2204732
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0791228   -0.0343270   0.1801289
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.6370968   -0.0338224   0.8726099
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.1527997   -1.1757018   0.6701072
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4546485    0.0765110   0.6779515
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1229388    0.0358123   0.2021924
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0054597   -0.0649081   0.0711777
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1091425   -0.0756863   0.2622133
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1702269    0.0010986   0.3107193
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1668315    0.0028454   0.3038495
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0907865    0.0114088   0.1637907
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0254619   -0.0150185   0.0643279
