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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg        ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5                  0       44     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5                  1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                   0       46     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                   1        9     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)               0       71     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)               1       18     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)               0       50     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)               1        9     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5                  0      131     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5                  1       13     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <42.5                   0       11     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <42.5                   1        3     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)               0       17     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)               1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)               0       40     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)               1        4     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=57.5                  0       40     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=57.5                  1        4     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <42.5                   0       36     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <42.5                   1       11     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)               0       62     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)               1       14     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)               0       63     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)               1       12     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=57.5                  0       78     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=57.5                  1        9     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <42.5                   0        2     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <42.5                   1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)               0       39     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)               1       11     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)               0       92     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)               1        7     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=57.5                  0       94     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=57.5                  1       10     290
0-6 months    ki0047075b-MAL-ED          PERU                           <42.5                   0       10     290
0-6 months    ki0047075b-MAL-ED          PERU                           <42.5                   1        4     290
0-6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)               0       46     290
0-6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)               1       11     290
0-6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)               0      104     290
0-6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)               1       11     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5                  0      176     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5                  1       18     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5                   0        2     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5                   1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)               0       14     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)               1        2     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)               0       50     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)               1        7     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5                  0       89     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5                  1       14     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                   0        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                   1        5     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)               0       57     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)               1       12     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)               0       64     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)               1       11     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5                  0      110    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5                  1       11    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                   0      204    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                   1      139    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)               0      493    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)               1      205    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)               0      275    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)               1       74    1511
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5                  0       78     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5                  1        8     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                   0      132     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                   1       42     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)               0      184     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)               1       33     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)               0      136     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)               1       16     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5                  0      115     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5                  1        5     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                   0      153     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                   1       24     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)               0      186     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)               1       16     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)               0      150     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)               1       20     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5                  0      180     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5                  1       17     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                   0       82     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                   1       22     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)               0      199     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)               1       36     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)               0      189     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)               1       30     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5                  0     1403    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5                  1       79    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                   0       23    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                   1        4    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)               0      195    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)               1       18    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)               0      574    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)               1       56    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=57.5                  0    10273   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=57.5                  1       21   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <42.5                   0       32   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <42.5                   1        0   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [42.5-50)               0      543   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [42.5-50)               1        2   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [50-57.5)               0     2891   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [50-57.5)               1       10   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5                  0     5575   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5                  1      488   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                   0      118   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                   1       33   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)               0     1212   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)               1      202   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)               0     3125   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)               1      435   11188
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5                  0       26     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5                  1        9     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <42.5                   0       10     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <42.5                   1       17     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)               0       63     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)               1       38     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)               0       75     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)               1       33     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5                  0       32     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5                  1        9     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                   0       18     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                   1       21     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)               0       32     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)               1       30     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)               0       40     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)               1       13     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5                  0      130     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5                  1        4     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5                   0       10     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5                   1        1     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)               0       17     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)               1        1     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)               0       37     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)               1        2     202
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5                  0       27     194
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5                  1       11     194
6-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                   0       19     194
6-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                   1       19     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)               0       44     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)               1       14     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)               0       38     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)               1       22     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5                  0       76     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5                  1        8     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          <42.5                   0        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          <42.5                   1        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)               0       30     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)               1       14     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)               0       81     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)               1       13     224
6-24 months   ki0047075b-MAL-ED          PERU                           >=57.5                  0       62     228
6-24 months   ki0047075b-MAL-ED          PERU                           >=57.5                  1       26     228
6-24 months   ki0047075b-MAL-ED          PERU                           <42.5                   0        7     228
6-24 months   ki0047075b-MAL-ED          PERU                           <42.5                   1        2     228
6-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)               0       27     228
6-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)               1       13     228
6-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)               0       58     228
6-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)               1       33     228
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5                  0      122     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5                  1       37     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5                   0        2     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5                   1        0     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)               0        9     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)               1        5     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)               0       29     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)               1       15     219
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5                  0       35     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5                  1       42     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                   0        0     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                   1        2     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)               0       15     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)               1       35     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)               0       21     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)               1       37     187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5                  0       77     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5                  1       22     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                   0       78     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                   1       80     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)               0      304     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)               1      143     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)               0      196     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)               1       59     959
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5                  0       48     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5                  1       13     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                   0       33     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                   1       61     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)               0       82     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)               1       70     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)               0       68     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)               1       45     420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5                  0       89     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5                  1       14     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                   0       68     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                   1       36     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)               0      102     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)               1       46     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)               0      119     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)               1       23     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5                  0      154     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5                  1       24     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                   0       51     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                   1       22     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)               0      150     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)               1       41     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)               0      148     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)               1       30     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5                  0     1029    1812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5                  1      129    1812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                   0       15    1812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                   1        6    1812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)               0      110    1812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)               1       39    1812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)               0      413    1812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)               1       71    1812
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5                  0      799    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5                  1       93    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                   0       38    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                   1       11    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)               0      458    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)               1      123    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)               0      936    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)               1      173    2631
6-24 months   ki1119695-PROBIT           BELARUS                        >=57.5                  0     9744   13559
6-24 months   ki1119695-PROBIT           BELARUS                        >=57.5                  1      416   13559
6-24 months   ki1119695-PROBIT           BELARUS                        <42.5                   0       26   13559
6-24 months   ki1119695-PROBIT           BELARUS                        <42.5                   1        2   13559
6-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)               0      494   13559
6-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)               1       31   13559
6-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)               0     2714   13559
6-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)               1      132   13559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5                  0     4165    8417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5                  1      543    8417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                   0       70    8417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                   1       20    8417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)               0      782    8417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)               1      209    8417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)               0     2195    8417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)               1      433    8417
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5                  0       83     588
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5                  1       26     588
6-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                   0       22     588
6-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                   1       12     588
6-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)               0      143     588
6-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)               1       80     588
6-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)               0      161     588
6-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)               1       61     588
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5                  0       35     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5                  1       16     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                   0       19     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                   1       36     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)               0       34     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)               1       55     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)               0       37     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)               1       22     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5                  0      123     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5                  1       21     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5                   0       11     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5                   1        3     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)               0       16     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)               1        3     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)               0       38     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)               1        6     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5                  0       27     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5                  1       17     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                   0       17     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                   1       30     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)               0       38     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)               1       38     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)               0       36     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)               1       39     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5                  0       73     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5                  1       14     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <42.5                   0        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <42.5                   1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)               0       27     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)               1       23     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)               0       79     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)               1       20     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5                  0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5                  1       47     290
0-24 months   ki0047075b-MAL-ED          PERU                           <42.5                   0        7     290
0-24 months   ki0047075b-MAL-ED          PERU                           <42.5                   1        7     290
0-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)               0       27     290
0-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)               1       30     290
0-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)               0       65     290
0-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)               1       50     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5                  0      121     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5                  1       73     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5                   0        1     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5                   1        2     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)               0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)               1        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)               0       27     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)               1       30     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5                  0       36     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5                  1       67     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                   0        1     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5                   1        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)               0       17     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)               1       52     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)               0       21     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)               1       54     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5                  0       77    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5                  1       44    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                   0       82    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                   1      262    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)               0      271    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)               1      429    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)               0      186    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)               1      163    1514
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5                  0       58     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5                  1       28     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                   0       49     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                   1      125     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)               0      100     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)               1      117     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)               0       79     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)               1       73     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5                  0       95     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5                  1       25     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                   0       85     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                   1       92     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)               0      110     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)               1       92     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)               0      118     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)               1       52     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5                  0      143     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5                  1       54     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                   0       46     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                   1       58     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)               0      132     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)               1      103     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)               0      140     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)               1       79     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5                  0     1191    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5                  1      291    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                   0       16    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                   1       11    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)               0      142    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)               1       71    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)               0      471    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)               1      159    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5                  0      771    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5                  1      218    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                   0       33    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                   1       49    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)               0      428    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)               1      345    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)               0      892    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)               1      441    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5                  0     9342   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5                  1      952   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <42.5                   0       24   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <42.5                   1        8   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)               0      456   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)               1       89   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)               0     2587   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)               1      314   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5                  0     4521   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5                  1     1550   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                   0       67   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                   1       85   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)               0      802   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)               1      613   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)               0     2273   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)               1     1293   11204
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5                  0       71     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5                  1       56     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                   0       18     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                   1       54     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)               0      125     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)               1      208     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)               0      145     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)               1      161     838


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c14923c1-d92e-499b-af3a-e9504c464a8b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c14923c1-d92e-499b-af3a-e9504c464a8b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c14923c1-d92e-499b-af3a-e9504c464a8b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c14923c1-d92e-499b-af3a-e9504c464a8b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.3137255   0.1861276   0.4413234
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.6545455   0.5286272   0.7804637
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.6179775   0.5168334   0.7191216
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.3728814   0.2492471   0.4965156
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.3863636   0.2421937   0.5305335
0-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.6382979   0.5006449   0.7759508
0-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.5000000   0.3873554   0.6126446
0-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.5200000   0.4066977   0.6333023
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.4519231   0.3561079   0.5477383
0-24 months   ki0047075b-MAL-ED          PERU                           <42.5                NA                0.5000000   0.2376361   0.7623639
0-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                0.5263158   0.3964698   0.6561617
0-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                0.4347826   0.3440229   0.5255423
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.3636364   0.2649201   0.4623526
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.7616279   0.6988293   0.8244265
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.6128571   0.5601024   0.6656119
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.4670487   0.4160362   0.5180612
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.3255814   0.2264665   0.4246963
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.7183908   0.6515067   0.7852749
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.5391705   0.4727967   0.6055443
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.4802632   0.4007749   0.5597515
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.2083333   0.1356169   0.2810498
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.5197740   0.4461166   0.5934314
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.4554455   0.3867172   0.5241739
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.3058824   0.2365650   0.3751997
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.2741117   0.2117811   0.3364423
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.5576923   0.4621757   0.6532089
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.4382979   0.3748175   0.5017783
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.3607306   0.2970881   0.4243731
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1963563   0.1761275   0.2165851
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.4074074   0.2220324   0.5927824
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.3333333   0.2700128   0.3966538
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.2523810   0.2184545   0.2863074
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.2204247   0.0686566   0.3721927
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                NA                0.5975610   0.3804893   0.8146326
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            NA                0.4463131   0.3951848   0.4974414
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            NA                0.3308327   0.2900541   0.3716114
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0924811   0.0759979   0.1089642
0-24 months   ki1119695-PROBIT           BELARUS                        <42.5                NA                0.2500000   0.1131344   0.3868656
0-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                0.1633028   0.1232302   0.2033753
0-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                0.1082385   0.0890765   0.1274006
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.2553121   0.2443433   0.2662810
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.5592105   0.4802793   0.6381418
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.4332155   0.4073959   0.4590352
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.3625911   0.3468116   0.3783707
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.4409449   0.3545426   0.5273471
0-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.7500000   0.6499213   0.8500787
0-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.6246246   0.5725858   0.6766635
0-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.5261438   0.4701652   0.5821224
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.1372549   0.0426258   0.2318840
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.1636364   0.0656736   0.2615991
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.2022472   0.1186320   0.2858624
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.1525424   0.0606175   0.2444672
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.0909091   0.0510734   0.1307448
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.4052478   0.3522654   0.4582303
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.2936963   0.2499094   0.3374831
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.2120344   0.1925895   0.2314793
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.0930233   0.0315851   0.1544614
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.2413793   0.1777465   0.3050122
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.1520737   0.1042581   0.1998894
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.1052632   0.0564364   0.1540899
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.0416667   0.0058871   0.0774462
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.1355932   0.0851196   0.1860668
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.0792079   0.0419377   0.1164782
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.1176471   0.0691785   0.1661156
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.0862944   0.0470573   0.1255315
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.2115385   0.1329961   0.2900809
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.1531915   0.1071116   0.1992714
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.1369863   0.0914182   0.1825544
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0804882   0.0736401   0.0873363
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.2185430   0.1526256   0.2844604
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.1428571   0.1246173   0.1610970
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.1221910   0.1114323   0.1329498
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2571429   0.1120798   0.4022059
0-6 months    ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.6296296   0.4471436   0.8121157
0-6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.3762376   0.2815854   0.4708899
0-6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.3055556   0.2185188   0.3925923
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.2195122   0.0924884   0.3465360
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.5384615   0.3816011   0.6953220
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.4838710   0.3591577   0.6085842
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.2452830   0.1291509   0.3614152
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.2894737   0.1449054   0.4340420
6-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.5000000   0.3406146   0.6593854
6-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.2413793   0.1309667   0.3517919
6-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.3666667   0.2444173   0.4889160
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.2222222   0.1146591   0.3297854
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.5063291   0.4266670   0.5859912
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.3199105   0.2807003   0.3591208
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.2313725   0.1736168   0.2891283
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.2131148   0.1102271   0.3160024
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.6489362   0.5523320   0.7455403
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.4605263   0.3811929   0.5398598
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.3982301   0.3078633   0.4885969
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1359223   0.0696719   0.2021727
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.3461538   0.2546285   0.4376791
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.3108108   0.2361708   0.3854509
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.1619718   0.1013135   0.2226301
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.1348315   0.0846163   0.1850466
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.3013699   0.1960256   0.4067141
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.2146597   0.1563842   0.2729352
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.1685393   0.1135016   0.2235770
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1113990   0.0932727   0.1295252
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.2857143   0.0924461   0.4789824
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.2617450   0.1911429   0.3323470
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.1466942   0.1151657   0.1782228
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.1042601   0.0726070   0.1359131
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                NA                0.2244898   0.0776981   0.3712815
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            NA                0.2117040   0.1669686   0.2564394
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            NA                0.1559964   0.1195032   0.1924896
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1153356   0.1062107   0.1244605
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.2222222   0.1363260   0.3081185
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.2108981   0.1854977   0.2362984
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.1647641   0.1505801   0.1789480
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2385321   0.1584559   0.3186084
6-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.3529412   0.1921726   0.5137098
6-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.3587444   0.2957396   0.4217492
6-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.2747748   0.2160034   0.3335462


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5078740   0.4462707   0.5694773
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5123967   0.4492899   0.5755035
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4620690   0.4045891   0.5195488
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5931308   0.5521428   0.6341188
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5453100   0.5063654   0.5842547
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3901345   0.3531446   0.4271245
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3894040   0.3545991   0.4242088
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2261905   0.2092792   0.2431017
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3314448   0.2804289   0.3824606
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0989689   0.0826855   0.1152523
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3160478   0.3074385   0.3246572
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5715990   0.5380750   0.6051231
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1692913   0.1230820   0.2155007
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2839179   0.2547416   0.3130943
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1573927   0.1289105   0.1858749
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0971599   0.0747000   0.1196199
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1390728   0.1143746   0.1637711
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035038   0.0978590   0.1091485
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3743590   0.3062579   0.4424600
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3402062   0.2733649   0.4070475
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3169969   0.2870901   0.3469036
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4500000   0.4023647   0.4976353
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1352097   0.1194609   0.1509585
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1520334   0.1259980   0.1780689
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1431626   0.1356799   0.1506454
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3044218   0.2671963   0.3416472


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            2.0863636   1.3304308   3.271807
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            1.9698034   1.2706379   3.053683
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            1.1885593   0.7032796   2.008694
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            1.6520651   1.0736288   2.542144
0-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            1.2941176   0.8368984   2.001128
0-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.3458824   0.8736691   2.073324
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <42.5                >=57.5            1.1063830   0.6282319   1.948458
0-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5            1.1646137   0.8412187   1.612333
0-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5            0.9620722   0.7144803   1.295463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            2.0944767   1.5834139   2.770490
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            1.6853571   1.3039048   2.178402
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            1.2843840   0.9055020   1.821798
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            2.2064860   1.6048948   3.033582
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.6560237   1.1924936   2.299731
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.4750940   1.0431175   2.085961
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            2.4949153   1.7117995   3.636292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.1861386   1.4946222   3.197599
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            1.4682353   0.9684187   2.226015
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            2.0345442   1.5305015   2.704584
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.5989756   1.2211146   2.093762
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.3159986   0.9868751   1.754885
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            2.0748377   1.3012882   3.308223
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            1.6975945   1.3676766   2.107097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            1.2853216   1.0850724   1.522527
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                >=57.5            2.7109532   1.2353189   5.949288
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            >=57.5            2.0247873   1.0077222   4.068347
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            >=57.5            1.5008878   0.7482476   3.010587
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            2.7032563   1.5333476   4.765778
0-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5            1.7657968   1.3823032   2.255683
0-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5            1.1703860   1.0452526   1.310500
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            2.1903014   1.8898508   2.538518
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.6968075   1.5766115   1.826167
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.4201876   1.3359414   1.509747
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            1.7008929   1.3418980   2.155929
0-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.4165594   1.1448885   1.752695
0-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.1932190   0.9547415   1.491264
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            1.1922078   0.4784145   2.970979
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            1.4735152   0.6595167   3.292179
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            1.1113801   0.4448218   2.776766
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            4.4577255   3.1372088   6.334075
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            3.2306587   2.0785673   5.021322
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            2.3323780   1.4135005   3.848592
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            2.5948274   1.2742927   5.283817
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.6347925   0.7866523   3.397367
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.1315789   0.5048672   2.536253
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            3.2542370   1.2763925   8.296867
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            1.9009899   0.7140504   5.060935
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            2.8235292   1.0893308   7.318545
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            2.4513575   1.3629017   4.409088
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.7752190   1.0291596   3.062113
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.5874295   0.9036949   2.788477
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            2.7152182   1.9847243   3.714576
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.7748829   1.5224251   2.069205
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.5181232   1.3431736   1.715860
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            2.4485597   1.2985768   4.616935
0-6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.4631463   0.7889139   2.713600
0-6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.1882716   0.6316186   2.235510
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            2.4529915   1.2833250   4.688732
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            2.2043011   1.1699280   4.153199
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            1.1174004   0.5290512   2.360043
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            1.7272727   0.9551025   3.123718
6-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            0.8338558   0.4236129   1.641394
6-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.2666667   0.6948264   2.309130
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            2.2784810   1.4116776   3.677522
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            1.4395973   0.8572973   2.417412
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            1.0411765   0.5638729   1.922505
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            3.0450082   1.8372921   5.046598
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            2.1609312   1.2942675   3.607928
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.8686181   1.0960885   3.185631
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            2.5467033   1.4627061   4.434040
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.2866795   1.3280858   3.937173
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            1.1916499   0.6444659   2.203421
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            2.2351598   1.3411660   3.725071
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.5920593   1.0041640   2.524142
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.2500000   0.7617193   2.051281
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            2.5647840   1.2790796   5.142852
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            2.3496176   1.7147016   3.219629
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            1.3168364   1.0056751   1.724273
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                >=57.5            2.1531709   1.0302366   4.500078
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            >=57.5            2.0305369   1.3936418   2.958493
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            >=57.5            1.4962235   1.0740035   2.084430
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            1.9267444   1.2985977   2.858733
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.8285602   1.5831692   2.111987
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.4285622   1.2709301   1.605745
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            1.4796380   0.8402517   2.605563
6-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.5039669   1.0296688   2.196742
6-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.1519404   0.7736738   1.715150


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.1941485    0.0777954   0.3105017
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.1260331   -0.0051510   0.2572171
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.0101459   -0.0666644   0.0869562
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.2294944    0.1330499   0.3259389
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.2197286    0.1267010   0.3127563
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1818012    0.1128156   0.2507868
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.1152923    0.0598935   0.1706911
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.0298342    0.0164359   0.0432325
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.1110201   -0.0022290   0.2242691
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0064879    0.0034559   0.0095198
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0607357    0.0527327   0.0687387
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.1306542    0.0511152   0.2101931
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.0320364   -0.0545315   0.1186043
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.1930088    0.1513010   0.2347166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.0643694    0.0047565   0.1239824
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.0554933    0.0190876   0.0918989
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.0527784    0.0160887   0.0894682
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0230155    0.0177305   0.0283006
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.1007907   -0.0366047   0.2381861
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.1548468    0.0365767   0.2731168
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.0507325   -0.0803405   0.1818055
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.0947746   -0.0082692   0.1978185
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.2368852    0.1379911   0.3357794
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1035143    0.0404248   0.1666038
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.0538782    0.0088914   0.0988650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.0238107    0.0112952   0.0363263
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.0477734    0.0226457   0.0729010
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0278270    0.0210367   0.0346174
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.0658897   -0.0077352   0.1395145


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.3822769    0.1030511   0.5745780
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.2459677   -0.0603532   0.4637969
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.0219575   -0.1592539   0.1748425
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.3869204    0.2033136   0.5282127
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.4029426    0.2040851   0.5521160
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.4659962    0.2588203   0.6152619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.2960738    0.1387206   0.4246790
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1318986    0.0710306   0.1887783
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.3349580   -0.1734002   0.6230776
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0655546    0.0327886   0.0972105
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1921725    0.1665912   0.2169686
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2285766    0.0752677   0.3564688
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.1892385   -0.5200899   0.5675688
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.6798050    0.5131943   0.7893927
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.4089734   -0.1110884   0.6856124
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.5711538    0.0233517   0.8116937
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.3795021    0.0613431   0.5898206
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.2223644    0.1708653   0.2706647
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2815906   -0.2249121   0.5786538
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.4136318   -0.0004008   0.6563101
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.1491228   -0.3379648   0.4588856
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.2989766   -0.1169467   0.5600204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.5264117    0.2492964   0.7012324
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.4323244    0.1059834   0.6395418
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.2855085    0.0067987   0.4860074
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1761024    0.0800420   0.2621322
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.3142293    0.1323162   0.4580036
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1943737    0.1463688   0.2396789
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2164420   -0.0662703   0.4241956
