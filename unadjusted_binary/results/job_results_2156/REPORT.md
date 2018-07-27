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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

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
![](/tmp/6651448e-f10d-471a-8f3d-62b16c0458d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6651448e-f10d-471a-8f3d-62b16c0458d2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6651448e-f10d-471a-8f3d-62b16c0458d2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6651448e-f10d-471a-8f3d-62b16c0458d2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                0.5281690    0.4458912   0.6104468
0-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                NA                0.5102041    0.3699457   0.6504624
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.4750000    0.3199243   0.6300757
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4545455    0.1596834   0.7494075
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                0.5370787    0.4907141   0.5834432
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                0.6886792    0.6004621   0.7768964
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3809524    0.2609415   0.5009633
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4666667    0.2139984   0.7193349
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                0.4066194    0.3597744   0.4534644
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                0.4330709    0.3468296   0.5193121
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2959184    0.2054790   0.3863577
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2380952    0.0557943   0.4203962
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                0.3954451    0.3518113   0.4390790
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                0.5588235    0.4407303   0.6769167
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.3333333    0.2613573   0.4053093
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2564103    0.1192785   0.3935420
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.2267206    0.2033634   0.2500779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.2894737    0.1452477   0.4336997
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2250674    0.1950117   0.2551231
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2151515    0.1708061   0.2594969
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                0.3342520    0.3015817   0.3669222
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                NA                0.3813747    0.2943445   0.4684050
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.1437500   -0.8375977   1.1250977
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3461538    0.1696740   0.5226337
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                0.0964299    0.0798772   0.1129826
0-24 months   ki1119695-PROBIT           BELARUS                        <18.5                NA                0.1281071    0.0944718   0.1617424
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.1010789    0.0814396   0.1207183
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0972585    0.0742997   0.1202172
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.3309545    0.3197084   0.3422007
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.4158607    0.3733736   0.4583478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2623936    0.2430975   0.2816897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2366149    0.2019951   0.2712346
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.1067282    0.0993444   0.1141120
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.1528046    0.1217887   0.1838206
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0757652    0.0641469   0.0873835
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0846287    0.0619567   0.1073006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.1442206    0.1217917   0.1666494
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.2068966    0.0594241   0.3543690
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1211073    0.0945026   0.1477119
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1279070    0.0871420   0.1686719
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                0.1531146    0.1261904   0.1800388
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                NA                0.1746479    0.1254779   0.2238179
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.0666667   -0.0074756   0.1408089
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2608696    0.1208590   0.4008802
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                0.0413553    0.0311366   0.0515739
6-24 months   ki1119695-PROBIT           BELARUS                        <18.5                NA                0.0395257    0.0229092   0.0561422
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0477149    0.0330893   0.0623404
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0399202    0.0260096   0.0538307
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.1499206    0.1400602   0.1597810
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.1939891    0.1534759   0.2345022
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1256443    0.1091533   0.1421353
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0820735    0.0570705   0.1070765


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower      ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ------------
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <18.5                [18.5-25)         0.9659864   0.7042785     1.3249441
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              [18.5-25)         0.8993333   0.6263550     1.2912811
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [18.5-25)         0.8606061   0.4416413     1.6770235
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         1.2822689   1.0987365     1.4964584
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         0.7093046   0.5116508     0.9833133
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         0.8688982   0.5021782     1.5034187
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         1.0650522   0.8461669     1.3405584
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         0.7277527   0.5249725     1.0088604
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         0.5855482   0.2699578     1.2700751
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         1.4131506   1.1134067     1.7935896
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         0.8429319   0.6614266     1.0742450
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         0.6484092   0.3755697     1.1194578
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.2767857   0.7676440     2.1236168
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.9927079   0.8386345     1.1750877
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.9489719   0.7536693     1.1948843
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                [18.5-25)         1.1409797   0.9176829     1.4186106
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              [18.5-25)         0.4300648   0.0004671   396.0027508
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [18.5-25)         1.0356075   0.6244396     1.7175127
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         1.3284997   1.0425122     1.6929407
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         1.0482117   0.9002617     1.2204759
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         1.0085928   0.8391543     1.2122435
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.2565496   1.1282863     1.3993937
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7928389   0.7311435     0.8597402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.7149468   0.6152331     0.8308214
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.4317177   1.1553816     1.7741459
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7098891   0.5999693     0.8399471
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.7929364   0.6012767     1.0456885
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.4345842   0.6916490     2.9755438
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.8397364   0.6415796     1.0990955
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.8868844   0.6220917     1.2643858
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <18.5                [18.5-25)         1.1406351   0.8568480     1.5184123
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              [18.5-25)         0.4354037   0.1423355     1.3318979
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [18.5-25)         1.7037537   0.9746637     2.9782342
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <18.5                [18.5-25)         0.9557598   0.6259341     1.4593818
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              [18.5-25)         1.1537798   0.9393214     1.4172017
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [18.5-25)         0.9652983   0.6769718     1.3764250
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000     1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.2939456   1.0395022     1.6106703
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.8380726   0.7236416     0.9705989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.5474464   0.4008566     0.7476427


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0157723   -0.0687588    0.0372142
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                 0.0082314   -0.0167624    0.0332252
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0164849   -0.0445502    0.0115805
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0060412   -0.0321044    0.0200220
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0011343   -0.0171724    0.0149038
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                -0.0028072   -0.0431345    0.0375201
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0024920   -0.0025331    0.0075172
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0150364   -0.0211815   -0.0088913
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0051681   -0.0091140   -0.0012222
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0087117   -0.0237894    0.0063659
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                -0.0010812   -0.0125347    0.0103724
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0014089   -0.0019138    0.0047316
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0071405   -0.0124880   -0.0017930


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)            NA                -0.0307815   -0.1396452    0.0676831
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                 0.0150948   -0.0318406    0.0598953
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0422543   -0.1167724    0.0272915
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0155139   -0.0847043    0.0492631
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0050282   -0.0786980    0.0636103
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                -0.0084696   -0.1389188    0.1070383
0-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0251918   -0.0268618    0.0746068
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0475958   -0.0672276   -0.0283252
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0508869   -0.0903754   -0.0128286
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0642890   -0.1813938    0.0412080
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [18.5-25)            NA                -0.0071113   -0.0855315    0.0656438
6-24 months   ki1119695-PROBIT           BELARUS                        [18.5-25)            NA                 0.0329452   -0.0472564    0.1070048
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0500103   -0.0880689   -0.0132828
