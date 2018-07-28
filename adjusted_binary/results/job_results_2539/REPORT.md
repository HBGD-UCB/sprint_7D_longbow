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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7df3934c-e14b-4c41-acd1-d74304c656c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7df3934c-e14b-4c41-acd1-d74304c656c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7df3934c-e14b-4c41-acd1-d74304c656c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7df3934c-e14b-4c41-acd1-d74304c656c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.2707376   0.1604855   0.3809896
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.5889790   0.4843379   0.6936202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.5994521   0.5056400   0.6932642
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.2897651   0.1872926   0.3922377
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.4033555   0.2683190   0.5383919
0-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.6535617   0.5226911   0.7844323
0-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.5050015   0.3969664   0.6130367
0-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.5398381   0.4313216   0.6483547
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               NA                0.4121821   0.3287558   0.4956084
0-24 months   ki0047075b-MAL-ED          PERU                           <42.5                NA                0.4061134   0.2434558   0.5687709
0-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)            NA                0.4223296   0.3292164   0.5154428
0-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)            NA                0.4279598   0.3426300   0.5132897
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.3751783   0.2821337   0.4682229
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.7687536   0.7077626   0.8297445
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.6164282   0.5644345   0.6684219
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.4733301   0.4239352   0.5227250
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.3431791   0.2490718   0.4372865
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.7292064   0.6643683   0.7940446
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.5502814   0.4854998   0.6150629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.4857316   0.4087274   0.5627359
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1999101   0.1333893   0.2664310
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.5323020   0.4638171   0.6007869
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.4616944   0.3961910   0.5271978
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.2897319   0.2255165   0.3539474
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.2733986   0.2135836   0.3332136
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.6184648   0.5352471   0.7016824
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.4493110   0.3869560   0.5116661
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.3631926   0.3009280   0.4254572
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1965486   0.1763996   0.2166977
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.4414452   0.3472839   0.5356065
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.3539291   0.2951589   0.4126993
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.2599651   0.2266289   0.2933013
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.2220207   0.0496909   0.3943505
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                NA                0.5824741   0.4630470   0.7019011
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            NA                0.4441045   0.3944423   0.4937666
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            NA                0.3275588   0.2872724   0.3678452
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                0.0934620   0.0767748   0.1101492
0-24 months   ki1119695-PROBIT           BELARUS                        <42.5                NA                0.2454347   0.2024617   0.2884076
0-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)            NA                0.1729607   0.1368052   0.2091163
0-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)            NA                0.1129254   0.0935116   0.1323393
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.2556382   0.2446609   0.2666155
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.5548136   0.5027679   0.6068594
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.4378800   0.4129594   0.4628007
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.3693670   0.3536050   0.3851291
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.4399301   0.3545305   0.5253297
0-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.7552308   0.6551351   0.8553265
0-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.6243044   0.5725964   0.6760125
0-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.5254274   0.4695792   0.5812756
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.1426974   0.0576574   0.2277375
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.1684367   0.0841015   0.2527720
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.2088302   0.1293012   0.2883592
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.1392154   0.0638730   0.2145578
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.0862990   0.0495564   0.1230416
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.4071267   0.3550382   0.4592152
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.2931004   0.2504325   0.3357683
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.2107522   0.1924693   0.2290350
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.1000083   0.0390686   0.1609480
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.2476939   0.1845287   0.3108592
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.1546955   0.1070447   0.2023463
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.1079007   0.0596018   0.1561995
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.0462761   0.0117226   0.0808296
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.1511956   0.1035546   0.1988367
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.0848098   0.0480901   0.1215294
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.1223711   0.0772455   0.1674968
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.0907276   0.0504348   0.1310204
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.2120916   0.1391533   0.2850298
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.1490688   0.1042740   0.1938637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.1337323   0.0894933   0.1779712
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.0802593   0.0734107   0.0871079
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.2229032   0.1797255   0.2660809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.1403581   0.1229815   0.1577348
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.1238984   0.1130840   0.1347128
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.3027844   0.1708128   0.4347561
0-6 months    ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.6923560   0.5314394   0.8532727
0-6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.3932014   0.3018879   0.4845149
0-6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.3156645   0.2311466   0.4001824
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                0.1978416   0.0910775   0.3046057
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                NA                0.4955325   0.3705130   0.6205520
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            NA                0.4655236   0.3568562   0.5741910
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            NA                0.2054062   0.1078185   0.3029940
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                0.3437176   0.2042309   0.4832043
6-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                NA                0.5421594   0.3911733   0.6931456
6-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            NA                0.2708494   0.1648474   0.3768515
6-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            NA                0.4055824   0.2877345   0.5234304
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                0.2164365   0.1164048   0.3164683
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                NA                0.5008432   0.4236241   0.5780622
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            NA                0.3201112   0.2800515   0.3601708
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            NA                0.2259412   0.1729894   0.2788931
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                0.2110111   0.1112477   0.3107744
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                NA                0.6534400   0.5593510   0.7475290
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            NA                0.4603189   0.3814156   0.5392222
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            NA                0.3968041   0.3075912   0.4860169
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                0.1247134   0.0626997   0.1867271
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                NA                0.3318985   0.2484949   0.4153022
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            NA                0.3010038   0.2301712   0.3718365
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            NA                0.1521424   0.0944963   0.2097886
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                0.1265408   0.0807918   0.1722898
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                NA                0.4050070   0.3187560   0.4912580
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            NA                0.2279494   0.1705195   0.2853792
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            NA                0.1698832   0.1167281   0.2230382
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                0.1112175   0.0931805   0.1292545
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                NA                0.2770356   0.1817691   0.3723021
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            NA                0.2896579   0.2273176   0.3519982
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            NA                0.1546582   0.1236052   0.1857112
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                0.1062200   0.0750873   0.1373526
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                NA                0.2311520   0.1355984   0.3267057
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            NA                0.2069171   0.1629618   0.2508723
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            NA                0.1535304   0.1187623   0.1882985
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                0.1153413   0.1062239   0.1244587
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                NA                0.2045277   0.1561013   0.2529541
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            NA                0.2163230   0.1920239   0.2406222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            NA                0.1677550   0.1536221   0.1818880
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                0.2374362   0.1575609   0.3173115
6-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                NA                0.3579280   0.1992085   0.5166475
6-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            NA                0.3607609   0.2983317   0.4231900
6-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            NA                0.2737035   0.2150051   0.3324019


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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1390729   0.1143746   0.1637711
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            2.1754610   1.3958661   3.390462
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            2.2141445   1.4317808   3.424013
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            1.0702805   0.6256115   1.831009
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            1.6203119   1.0972115   2.392803
0-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            1.2520011   0.8414631   1.862835
0-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.3383682   0.9064390   1.976117
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <42.5                >=57.5            0.9852765   0.6281525   1.545436
0-24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)            >=57.5            1.0246190   0.7601940   1.381021
0-24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)            >=57.5            1.0382785   0.7856267   1.372181
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            2.0490354   1.5852112   2.648572
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            1.6430274   1.2928970   2.087977
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            1.2616138   0.9126553   1.743999
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            2.1248564   1.5923700   2.835406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.6034813   1.1892108   2.162066
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.4153880   1.0318735   1.941442
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            2.6627066   1.8635009   3.804670
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.3095097   1.6090707   3.314854
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            1.4493109   0.9718081   2.161437
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            2.2621361   1.7499611   2.924214
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.6434286   1.2687937   2.128681
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.3284365   1.0066052   1.753164
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            2.2459846   1.7726006   2.845789
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            1.8007203   1.4815329   2.188675
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            1.3226502   1.1225891   1.558365
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                >=57.5            2.6235125   1.1777786   5.843898
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            >=57.5            2.0002841   0.9073076   4.409901
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            >=57.5            1.4753526   0.6676294   3.260290
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <42.5                >=57.5            2.6260377   2.0663949   3.337249
0-24 months   ki1119695-PROBIT           BELARUS                        [42.5-50)            >=57.5            1.8506001   1.4980071   2.286185
0-24 months   ki1119695-PROBIT           BELARUS                        [50-57.5)            >=57.5            1.2082501   1.0798440   1.351925
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            2.1703081   1.9575824   2.406150
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.7128899   1.5950719   1.839410
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.4448822   1.3600666   1.534987
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            1.7167063   1.3573025   2.171278
0-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.4190991   1.1495934   1.751786
0-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.1943428   0.9576185   1.489586
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            1.1803768   0.5420417   2.570447
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            1.4634475   0.7213837   2.968848
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            0.9755983   0.4362580   2.181718
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            4.7176299   3.3438561   6.655798
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            3.3963368   2.2213822   5.192759
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            2.4421161   1.5106409   3.947948
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            2.4767338   1.2790482   4.795918
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            1.5468268   0.7814976   3.061651
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.0789170   0.5063872   2.298759
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            3.2672509   1.4530833   7.346398
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            1.8326903   0.7729467   4.345388
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            2.6443704   1.1497042   6.082168
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            2.3376738   1.3330740   4.099336
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.6430371   0.9610808   2.808891
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.4739974   0.8472279   2.564444
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            2.7772889   2.2475688   3.431857
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.7488088   1.5047338   2.032474
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.5437266   1.3664448   1.744009
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            2.2866301   1.3958601   3.745846
0-6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.2986181   0.7934210   2.125491
0-6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.0425387   0.6265365   1.734754
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5                >=57.5            2.5046936   1.3836905   4.533882
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)            >=57.5            2.3530120   1.3120858   4.219743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)            >=57.5            1.0382359   0.5063503   2.128830
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <42.5                >=57.5            1.5773399   0.9654699   2.576985
6-24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)            >=57.5            0.7880000   0.4482545   1.385249
6-24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)            >=57.5            1.1799875   0.7187152   1.937305
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <42.5                >=57.5            2.3140417   1.4682695   3.647007
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [42.5-50)            >=57.5            1.4790071   0.8952104   2.443517
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [50-57.5)            >=57.5            1.0439146   0.5788921   1.882488
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5                >=57.5            3.0967091   1.8892368   5.075916
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)            >=57.5            2.1814914   1.3194047   3.606858
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)            >=57.5            1.8804892   1.1141566   3.173916
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5                >=57.5            2.6612901   1.5239086   4.647565
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)            >=57.5            2.4135648   1.3925564   4.183166
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)            >=57.5            1.2199367   0.6532011   2.278388
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5                >=57.5            3.2006045   2.1097478   4.855495
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)            >=57.5            1.8013906   1.1612908   2.794311
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)            >=57.5            1.3425170   0.8341151   2.160795
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5                >=57.5            2.4909358   1.7030703   3.643280
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)            >=57.5            2.6044276   1.9894271   3.409546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)            >=57.5            1.3905924   1.0745485   1.799591
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <42.5                >=57.5            2.1761631   1.3118251   3.609998
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [42.5-50)            >=57.5            1.9480050   1.3501908   2.810509
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [50-57.5)            >=57.5            1.4454006   1.0637395   1.963999
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5                >=57.5            1.7732393   1.3815419   2.275991
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)            >=57.5            1.8755038   1.6348688   2.151558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)            >=57.5            1.4544230   1.2957827   1.632485
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <42.5                >=57.5            1.5074700   0.8643645   2.629060
6-24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)            >=57.5            1.5194012   1.0414042   2.216795
6-24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)            >=57.5            1.1527452   0.7738651   1.717123


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                 0.2371364    0.1343403   0.3399326
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                 0.1090412   -0.0139005   0.2319830
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               NA                 0.0498868   -0.0186226   0.1183963
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                 0.2179525    0.1249691   0.3109359
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                 0.2021309    0.1136115   0.2906503
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                 0.1902244    0.1263801   0.2540687
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                 0.1160054    0.0622877   0.1697232
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                 0.0296419    0.0162007   0.0430830
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                 0.1094241   -0.0240926   0.2429408
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                 0.0055069    0.0025846   0.0084293
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                 0.0604097    0.0523417   0.0684776
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                 0.1316689    0.0531274   0.2102105
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                 0.0265939   -0.0518947   0.1050825
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                 0.1976189    0.1588837   0.2363541
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                 0.0573844   -0.0018028   0.1165716
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                 0.0508838    0.0154238   0.0863439
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                 0.0483452    0.0105500   0.0861405
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                 0.0232445    0.0179215   0.0285675
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                 0.0551491   -0.0700460   0.1803443
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                 0.1765174    0.0741465   0.2788883
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                -0.0035114   -0.1299256   0.1229028
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                 0.1005603    0.0039434   0.1971772
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                 0.2389889    0.1428522   0.3351256
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                 0.1147232    0.0549373   0.1745091
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                 0.0621689    0.0204762   0.1038616
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                 0.0239922    0.0114354   0.0365491
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                 0.0458135    0.0215371   0.0700898
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                 0.0278214    0.0209801   0.0346626
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                 0.0669855   -0.0063309   0.1403020


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                 0.4669198    0.2235764   0.6339956
0-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                 0.2128062   -0.0676766   0.4196052
0-24 months   ki0047075b-MAL-ED          PERU                           >=57.5               NA                 0.1079641   -0.0519612   0.2435765
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                 0.3674611    0.1940840   0.5035395
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                 0.3706715    0.1851572   0.5139499
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                 0.4875867    0.2995683   0.6251349
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                 0.2979050    0.1468475   0.4222166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                 0.1310482    0.0700825   0.1880169
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                 0.3301427   -0.2900142   0.6521675
0-24 months   ki1119695-PROBIT           BELARUS                        >=57.5               NA                 0.0556432    0.0237669   0.0864787
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                 0.1911409    0.1653825   0.2161043
0-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                 0.2303519    0.0791219   0.3567463
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                 0.1570896   -0.4535478   0.5111974
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                 0.6960425    0.5447252   0.7970672
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                 0.3645938   -0.1375362   0.6450741
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                 0.5237122    0.0252441   0.7672750
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                 0.3476253    0.0207545   0.5653870
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                 0.2245761    0.1727567   0.2731495
0-6 months    ki1148112-LCNI-5           MALAWI                         >=57.5               NA                 0.1540764   -0.2764315   0.4393850
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5               NA                 0.4715191    0.1293055   0.6792307
6-24 months   ki0047075b-MAL-ED          INDIA                          >=57.5               NA                -0.0103213   -0.4596209   0.3006751
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=57.5               NA                 0.3172282   -0.0674419   0.5632761
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5               NA                 0.5310865    0.2638994   0.7012910
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5               NA                 0.4791382    0.1713919   0.6725870
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5               NA                 0.3294420    0.0760558   0.5133385
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5               NA                 0.1774446    0.0812763   0.2635465
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=57.5               NA                 0.3013380    0.1267920   0.4409939
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5               NA                 0.1943340    0.1460348   0.2399014
6-24 months   ki1148112-LCNI-5           MALAWI                         >=57.5               NA                 0.2200419   -0.0616112   0.4269704
