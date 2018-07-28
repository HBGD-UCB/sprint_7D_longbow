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

**Intervention Variable:** mbmi

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

agecat        studyid                    country                        mbmi         ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)               0      134     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)               1       29     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                   0       27     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5                   1        5     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)                 0       48     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)                 1        5     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                    0        2     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                    1        4     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)               0       79     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)               1        9     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                   0        8     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <18.5                   1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)                 0       74     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)                 1        8     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                    0       38     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                    1        3     221
0-6 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)               0      115     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)               1       27     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <18.5                   0       40     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <18.5                   1        9     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)                 0       36     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)                 1        4     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                    0       10     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                    1        1     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)               0      118     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)               1       16     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)                 0       78     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)                 1        9     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                    0       15     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                    1        2     238
0-6 months    ki0047075b-MAL-ED          PERU                           [18.5-25)               0      138     290
0-6 months    ki0047075b-MAL-ED          PERU                           [18.5-25)               1       21     290
0-6 months    ki0047075b-MAL-ED          PERU                           <18.5                   0        3     290
0-6 months    ki0047075b-MAL-ED          PERU                           <18.5                   1        2     290
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)                 0       97     290
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)                 1       12     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                    0       16     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                    1        1     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)               0       94     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)               1       15     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                   0        7     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                   1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)                 0       77     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)                 1       10     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                    0       64     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                    1        2     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)               0      148     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)               1       29     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                   0       10     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                   1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)                 0       45     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)                 1        8     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                    0       11     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                    1        1     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)               0      704    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)               1      271    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                   0      226    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <18.5                   1      128    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)                 0       57    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)                 1        9    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                    0        8    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                    1        0    1403
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)               0      382     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)               1       63     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                   0       78     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                   1       28     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)                 0       56     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)                 1        7     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                    0       14     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                    1        1     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)               0      383     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)               1       40     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                   0      114     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5                   1       13     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)                 0       87     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)                 1       11     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                    0       20     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                    1        1     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)               0      411     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)               1       72     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                   0       55     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                   1       13     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)                 0      147     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)                 1       18     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                    0       37     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                    1        2     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)               0     1152    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)               1       83    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                   0       34    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                   1        4    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)                 0      693    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)                 1       49    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                    0      311    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                    1       19    2345
0-6 months    ki1119695-PROBIT           BELARUS                        [18.5-25)               0     8131   13728
0-6 months    ki1119695-PROBIT           BELARUS                        [18.5-25)               1       20   13728
0-6 months    ki1119695-PROBIT           BELARUS                        <18.5                   0      522   13728
0-6 months    ki1119695-PROBIT           BELARUS                        <18.5                   1        1   13728
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)                 0     3512   13728
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)                 1       10   13728
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                    0     1530   13728
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                    1        2   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)               0     6001    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)               1      717    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                   0      438    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                   1       79    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)                 0     1842    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)                 1      151    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                    0      530    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                    1       49    9807
0-6 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)               0      135     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)               1       80     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <18.5                   0       31     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <18.5                   1       16     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)                 0        8     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)                 1        1     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)               0       77     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)               1       48     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5                   0        9     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5                   1       12     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)                 0       34     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)                 1       12     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                    0        2     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                    1        1     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)               0       75     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)               1        4     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                   0        8     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                   1        1     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)                 0       75     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)                 1        2     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                    0       36     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                    1        1     202
6-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)               0       74     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)               1       41     194
6-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                   0       27     194
6-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                   1       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)                 0       20     194
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)                 1        9     194
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                    0        7     194
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                    1        3     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)               0      102     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)               1       22     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)                 0       72     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)                 1       12     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                    0       14     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                    1        2     224
6-24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)               0       88     228
6-24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)               1       36     228
6-24 months   ki0047075b-MAL-ED          PERU                           <18.5                   0        2     228
6-24 months   ki0047075b-MAL-ED          PERU                           <18.5                   1        1     228
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)                 0       57     228
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)                 1       29     228
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                    0        7     228
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                    1        8     228
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)               0       62     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)               1       26     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                   0        3     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                   1        2     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)                 0       48     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)                 1       17     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                    0       49     219
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                    1       12     219
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)               0       46     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)               1       84     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                   0        2     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                   1        6     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)                 0       19     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)                 1       23     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                    0        4     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                    1        3     187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)               0      460     880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)               1      173     880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <18.5                   0      109     880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <18.5                   1       85     880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)                 0       34     880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)                 1       13     880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                    0        5     880
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                    1        1     880
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)               0      165     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)               1      136     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                   0       24     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                   1       37     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)                 0       35     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)                 1       13     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                    0        7     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                    1        3     420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)               0      236     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)               1       82     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                   0       57     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                   1       21     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)                 0       71     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)                 1       14     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                    0       14     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                    1        2     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)               0      320     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)               1       75     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                   0       33     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                   1       14     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)                 0      118     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)                 1       24     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                    0       32     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                    1        4     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)               0      807    1808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)               1      136    1808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                   0       23    1808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                   1        6    1808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)                 0      508    1808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)                 1       70    1808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                    0      225    1808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                    1       33    1808
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)               0     1781    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)               1      322    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                   0      293    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                   1       62    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)                 0      140    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)                 1       10    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                    0       17    2631
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                    1        6    2631
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)               0     7696   13516
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)               1      332   13516
6-24 months   ki1119695-PROBIT           BELARUS                        <18.5                   0      486   13516
6-24 months   ki1119695-PROBIT           BELARUS                        <18.5                   1       20   13516
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)                 0     3313   13516
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)                 1      166   13516
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                    0     1443   13516
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                    1       60   13516
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)               0     4281    7417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)               1      755    7417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                   0      295    7417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                   1       71    7417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)                 0     1357    7417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)                 1      195    7417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                    0      425    7417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                    1       38    7417
6-24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)               0      322     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)               1      137     587
6-24 months   ki1148112-LCNI-5           MALAWI                         <18.5                   0       60     587
6-24 months   ki1148112-LCNI-5           MALAWI                         <18.5                   1       32     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)                 0       27     587
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)                 1        8     587
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                    0        0     587
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                    1        1     587
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)               0       78     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)               1       85     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5                   0       10     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5                   1       22     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)                 0       35     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)                 1       18     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                    0        2     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                    1        4     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)               0       75     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)               1       13     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                   0        8     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5                   1        2     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)                 0       72     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)                 1       10     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                    0       33     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                    1        8     221
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)               0       67     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)               1       75     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                   0       24     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                   1       25     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)                 0       21     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)                 1       19     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                    0        6     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                    1        5     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)               0       98     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)               1       36     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)                 0       68     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)                 1       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                    0       14     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                    1        3     238
0-24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)               0       88     290
0-24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)               1       71     290
0-24 months   ki0047075b-MAL-ED          PERU                           <18.5                   0        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           <18.5                   1        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)                 0       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)                 1       49     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                    0        6     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                    1       11     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)               0       58     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)               1       51     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                   0        3     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5                   1        5     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)                 0       48     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)                 1       39     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                    0       48     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                    1       18     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)               0       47     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)               1      130     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                   0        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5                   1       11     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)                 0       19     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)                 1       34     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                    0        6     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                    1        6     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)               0      430    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [18.5-25)               1      547    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <18.5                   0      107    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <18.5                   1      248    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)                 0       36    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)                 1       30    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                    0        6    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                    1        2    1406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)               0      206     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)               1      239     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                   0       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                   1       73     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)                 0       39     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)                 1       24     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                    0        8     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                    1        7     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)               0      251     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)               1      172     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                   0       72     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                   1       55     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)                 0       69     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)                 1       29     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                    0       16     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                    1        5     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)               0      292     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)               1      191     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                   0       30     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                   1       38     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)                 0      110     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)                 1       55     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                    0       29     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                    1       10     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)               0      955    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)               1      280    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                   0       27    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                   1       11    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)                 0      575    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)                 1      167    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                    0      259    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                    1       71    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)               0     1691    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)               1      849    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                   0      279    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                   1      172    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)                 0      137    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)                 1       23    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                    0       17    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                    1        9    3177
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)               0     7365   13728
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)               1      786   13728
0-24 months   ki1119695-PROBIT           BELARUS                        <18.5                   0      456   13728
0-24 months   ki1119695-PROBIT           BELARUS                        <18.5                   1       67   13728
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)                 0     3166   13728
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)                 1      356   13728
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                    0     1383   13728
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                    1      149   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)               0     4500    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)               1     2226    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                   0      302    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                   1      215    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)                 0     1473    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)                 1      524    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                    0      442    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                    1      137    9819
0-24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)               0      285     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)               1      367     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <18.5                   0       52     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <18.5                   1       93     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)                 0       22     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)                 1       17     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                    0        0     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                    1        1     837


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
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5cc0fe6d-d33d-4c19-97d3-dff8d2ca2d77/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5cc0fe6d-d33d-4c19-97d3-dff8d2ca2d77/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5cc0fe6d-d33d-4c19-97d3-dff8d2ca2d77/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5cc0fe6d-d33d-4c19-97d3-dff8d2ca2d77/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                0.5296843    0.4476457   0.6117229
0-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                NA                0.5160086    0.3777835   0.6542337
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.4897043    0.3397524   0.6396562
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4668939    0.1908330   0.7429548
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                0.5378988    0.4915991   0.5841985
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                0.7016311    0.6152352   0.7880269
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3965829    0.2795013   0.5136645
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5872495    0.3639459   0.8105531
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                0.4092825    0.3627920   0.4557729
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                0.4480959    0.3705858   0.5256060
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2783193    0.1993905   0.3572481
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1973351    0.0761611   0.3185092
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                0.3948796    0.3513514   0.4384077
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                0.6430232    0.5483153   0.7377310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.3359967    0.2648674   0.4071260
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2459010    0.1339319   0.3578700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.2274015    0.2042594   0.2505437
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.2971314    0.2236002   0.3706627
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2269467    0.1967953   0.2570981
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2152279    0.1755473   0.2549085
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                0.3335104    0.3010227   0.3659981
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                NA                0.3708498    0.2886597   0.4530400
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.1189183   -0.9077333   1.1455699
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2354774    0.1007454   0.3702095
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                0.0967804    0.0801093   0.1134514
0-24 months   ki1119695-PROBIT           BELARUS                        <18.5                NA                0.1321263    0.1030431   0.1612094
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.1043991    0.0834909   0.1253073
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1014736    0.0783590   0.1245881
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.3313191    0.3200727   0.3425655
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.4265050    0.3881812   0.4648287
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2573171    0.2381289   0.2765052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2397869    0.2081665   0.2714074
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.1070661    0.0996726   0.1144597
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.1605586    0.1316210   0.1894961
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0756326    0.0639461   0.0873190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0920128    0.0702843   0.1137413
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.1451920    0.1230136   0.1673703
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.1514072    0.0844799   0.2183346
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1212420    0.0946854   0.1477986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1219522    0.0868186   0.1570858
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                0.1527958    0.1261039   0.1794878
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                NA                0.1682981    0.1194506   0.2171457
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0614117   -0.0012439   0.1240673
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2034548    0.0751474   0.3317621
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                0.0416535    0.0315637   0.0517433
6-24 months   ki1119695-PROBIT           BELARUS                        <18.5                NA                0.0392903    0.0272102   0.0513704
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0489616    0.0335994   0.0643238
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0446426    0.0308173   0.0584679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.1494520    0.1396398   0.1592643
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.2081083    0.1714379   0.2447786
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1231924    0.1068808   0.1395041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0765887    0.0550812   0.0980963


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5123967   0.4492899   0.5755035
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5453100   0.5063654   0.5842547
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3901345   0.3531446   0.4271245
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3894040   0.3545991   0.4242088
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2255864   0.2086659   0.2425068
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3314448   0.2804289   0.3824606
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0989219   0.0828371   0.1150068
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3159181   0.3067226   0.3251137
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1015601   0.0955814   0.1075388
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1355088   0.1197279   0.1512898
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1520334   0.1259980   0.1780689
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0427641   0.0326485   0.0528797
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1427801   0.1348177   0.1507425


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower       ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -------------
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         0.9741814   0.7148957      1.3275075
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         0.9245210   0.6559115      1.3031318
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         0.8814569   0.4783809      1.6241585
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         1.3043923   1.1225537      1.5156863
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         0.7372816   0.5421688      1.0026105
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         1.0917472   0.7392297      1.6123702
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         1.0948329   0.8901796      1.3465363
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         0.6800176   0.5010358      0.9229361
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         0.4821490   0.2582057      0.9003197
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         1.6284031   1.3544770      1.9577273
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         0.8508839   0.6704594      1.0798618
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         0.6227239   0.3897868      0.9948645
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.3066378   0.9999217      1.7074360
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.9979998   0.8442613      1.1797338
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.9464664   0.7667842      1.1682539
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                [18.5-25)         1.1119588   0.9033772      1.3686999
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              [18.5-25)         0.3565655   0.0000632   2011.0729516
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [18.5-25)         0.7060573   0.3998302      1.2468212
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         1.3652178   1.1294035      1.6502691
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         1.0787220   0.9227871      1.2610072
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         1.0484934   0.8762729      1.2545617
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.2872935   1.1694140      1.4170555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7766441   0.7155854      0.8429128
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.7237341   0.6316114      0.8292932
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.4996204   1.2364499      1.8188049
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7064096   0.5964484      0.8366434
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.8594014   0.6719871      1.0990849
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.0428073   0.6532684      1.6646253
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.8350460   0.6394042      1.0905492
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.8399378   0.6062758      1.1636545
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                [18.5-25)         1.1014577   0.8242402      1.4719119
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              [18.5-25)         0.4019201   0.1449931      1.1141203
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [18.5-25)         1.3315465   0.6987211      2.5375161
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         0.9432650   0.6792185      1.3099595
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         1.1754493   0.9496133      1.4549935
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         1.0717621   0.7842121      1.4647490
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000      1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.3924753   1.1538465      1.6804553
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.8242942   0.7111052      0.9554997
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.5124635   0.3840670      0.6837838


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0172876   -0.0701581    0.0355829
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                 0.0074112   -0.0175063    0.0323287
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0191479   -0.0470950    0.0087992
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0054756   -0.0316703    0.0207191
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0018152   -0.0178427    0.0142124
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                -0.0020656   -0.0441031    0.0399718
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0021416   -0.0031379    0.0074210
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0154010   -0.0216330   -0.0091690
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0055060   -0.0095192   -0.0014928
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0096831   -0.0246934    0.0053271
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                -0.0007624   -0.0115140    0.0099892
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0011106   -0.0023153    0.0045365
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0066719   -0.0120615   -0.0012824


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0337387   -0.1423718    0.0645640
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                 0.0135908   -0.0331923    0.0582556
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0490803   -0.1233498    0.0202789
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0140615   -0.0836262    0.0510373
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0080465   -0.0816705    0.0605662
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                -0.0062322   -0.1422458    0.1135855
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0216490   -0.0331362    0.0735290
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0487500   -0.0686763   -0.0291952
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0542145   -0.0944196   -0.0154865
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0714575   -0.1881604    0.0337827
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                -0.0050146   -0.0784193    0.0633937
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0259710   -0.0565985    0.1020880
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0467288   -0.0851378   -0.0096793
