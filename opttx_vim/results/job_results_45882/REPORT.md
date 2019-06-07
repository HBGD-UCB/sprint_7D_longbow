---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg         ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       39     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        9     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       97     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       65     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       33     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       11     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      132     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1       11     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       40     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       30     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        6     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       33     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        9     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       66     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       84     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       28     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       22     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       67     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1       13     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       39     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       37     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       63     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       19     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0       96     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        8     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0      102     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1       13     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0       66     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        5     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      156     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       38     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       25     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        5     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       34     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1       12     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       92     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        6     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       78     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       21     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       54     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        5     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       21     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       10     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      204     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      146     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       58     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       21     460
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       49     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       33     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      224     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      224     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       53     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       41     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0       92     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       28     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      256     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      176     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       80     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       37     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      148     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       44     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      240     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      166     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      117     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       40     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1147    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      329    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      292    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1      101    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      355    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1      128    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      168     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1       40     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      219     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1       82     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      216     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1       54     779
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0     3599    6711
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1     1390    6711
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0      375    6711
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1      171    6711
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0      808    6711
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1      368    6711
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4550   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1     1272   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1684   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      715   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2211   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      736   11168
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0      109     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        5     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0      457     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       47     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0      206     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1       14     838
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       41     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0      122     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       40     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       34     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       10     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      134     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        9     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       40     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       33     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        3     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       34     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        8     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  0       98     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  1       52     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       34     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       16     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       73     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       52     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       24     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       70     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       12     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 0      100     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  0      110     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  1        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              0       69     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              1        2     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      177     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       17     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       27     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       40     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        6     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       94     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       94     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1        5     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       57     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        2     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       24     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1        7     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      268     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1       81     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       65     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       14     459
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       60     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       22     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      274     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      172     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       66     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       28     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0       96     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       24     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      306     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      126     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       91     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       26     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      158     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       34     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      275     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      131     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      127     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       30     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1284    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      192    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      335    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       58    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      403    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       80    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                 0     3623    6711
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                 1     1366    6711
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                  0      377    6711
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                  1      169    6711
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg              0      817    6711
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg              1      359    6711
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4847   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      953   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1868   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      513   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2396   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      539   11116
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  0      164     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  1        3     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              0       70     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        1     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        3     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0      118     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       37     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       37     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1        4     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      133     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        2     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       37     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       30     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        4     206
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       37     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        3     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       94     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       51     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       39     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       10     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       72     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        7     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       57     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       70     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       11     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0       96     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0       96     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1        9     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0       60     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        4     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      157     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       25     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       26     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       35     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        7     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       91     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       75     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       17     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       53     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        5     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       26     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1        5     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      230     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      100     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       58     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       12     431
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       55     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       17     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      264     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      123     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       63     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       19     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0      107     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1        7     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      313     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1       79     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       95     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       13     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      174     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      324     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1       67     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      136     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       15     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1066    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      189    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      246    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       65    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      347    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       65    1978
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      168     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1       40     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      219     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1       82     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      216     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1       54     779
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0     4950    6709
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1       38    6709
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0      543    6709
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1        3    6709
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0     1163    6709
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1       12    6709
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4596    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      400    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1841    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      280    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2319    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      264    9700
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0      109     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        5     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0      451     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       45     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0      201     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1       13     824


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
```




# Results Detail

## Results Plots
![](/tmp/d9452640-54e5-4092-b4d4-497bbf6a4e28/fbdd3c61-66bb-455e-8638-ebf1d966c65b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d9452640-54e5-4092-b4d4-497bbf6a4e28/fbdd3c61-66bb-455e-8638-ebf1d966c65b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1910750   0.0765873   0.3055627
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2069689   0.0787133   0.3352245
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1742081   0.0912629   0.2571533
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.1151388   0.0428480   0.1874297
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1718372   0.0275651   0.3161093
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0600296   0.0123968   0.1076624
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2770441   0.1757300   0.3783582
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3954118   0.2852070   0.5056166
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2393318   0.1619294   0.3167342
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2858166   0.2178163   0.3538168
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2352462   0.2095419   0.2609505
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2146724   0.1469942   0.2823506
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2978427   0.1877615   0.4079240
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2239443   0.2117745   0.2361141
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0432258   0.0052514   0.0812001
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1420781   0.0400839   0.2440724
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1944466   0.0713698   0.3175235
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0854216   0.0232978   0.1475454
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2471813   0.1505007   0.3438618
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2591537   0.1664119   0.3518956
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2028383   0.1299858   0.2756909
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2250371   0.1634381   0.2866361
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1303409   0.1085207   0.1521610
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2945574   0.1898331   0.3992818
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1693503   0.1579490   0.1807517
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0901934   0.0260815   0.1543054
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2152649   0.1214489   0.3090809
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2928283   0.1851787   0.4004779
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0620471   0.0174150   0.1066793
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0776780   0.0375545   0.1178016
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1635940   0.1398834   0.1873047
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2146724   0.1469942   0.2823506
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0831499   0.0746489   0.0916509
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0426802   0.0053516   0.0800088


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4752066   0.4121581   0.5382551
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2899160   0.2321510   0.3476810
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.0896552   0.0567177   0.1225926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.2037037   0.1555745   0.2518329
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1250000   0.0844083   0.1655917
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3847826   0.3023315   0.4672337
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2372449   0.2200495   0.2544403
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2259307   0.1907517   0.2611097
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2874385   0.1857322   0.3891448
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2438216   0.2358577   0.2517856
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0787590   0.0605107   0.0970072
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3140496   0.2554513   0.3726479
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1806723   0.1316889   0.2296556
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2222222   0.1648972   0.2795472
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1403061   0.1262673   0.1543450
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2822232   0.1798711   0.3845754
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1803706   0.1732226   0.1875186
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1531915   0.1070438   0.1993392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2714617   0.2176472   0.3252763
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1612740   0.1450620   0.1774860
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2259307   0.1907517   0.2611097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0973196   0.0914209   0.1032182
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0764563   0.0583018   0.0946108


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.7513840   0.9997602   3.068082
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           2.2960291   1.2754688   4.133186
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.6641930   1.0942311   2.531036
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.7786702   0.4707507   1.288001
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1854459   0.5329692   2.636704
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           2.0823055   1.0240407   4.234203
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.3888859   0.9466630   2.037688
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.2077639   0.9299261   1.568612
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.5051872   1.1137689   2.034164
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1585257   0.9391315   1.429174
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0084962   0.9293715   1.094358
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0524438   0.7907132   1.400809
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9650682   0.8982131   1.036899
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0887601   1.0432993   1.136202
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.8220373   0.7838313   4.235376
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.5794793   0.8093706   3.082339
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.6150938   0.8920192   2.924296
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           2.1150657   1.0937115   4.090204
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.8990253   0.6510694   1.241414
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3772256   0.9827994   1.929947
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2969896   0.9273083   1.814048
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1477136   0.8986760   1.465764
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0764554   0.9454016   1.225676
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9581263   0.8748533   1.049326
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0650739   1.0091493   1.124098
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.6984771   0.9021571   3.197697
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2610590   0.7907622   2.011059
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0036604   0.7146293   1.409590
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           2.5986345   1.3027120   5.183726
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.6929732   1.0516678   2.725346
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9858185   0.8888807   1.093328
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0524438   0.7907132   1.400809
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1704115   1.0776883   1.271113
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.7913771   0.7749099   4.141168


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1435707    0.0354025   0.2517389
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2682377    0.1461132   0.3903622
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1157078    0.0405999   0.1908158
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0254837   -0.0843287   0.0333614
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0318665   -0.1055085   0.1692416
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0649704    0.0182756   0.1116652
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1077385   -0.0087720   0.2242490
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0821523   -0.0210293   0.1853339
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1209074    0.0485320   0.1932828
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0453093   -0.0146323   0.1052508
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0019987   -0.0172230   0.0212204
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0112582   -0.0502791   0.0727956
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0104042   -0.0325429   0.0117345
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0198773    0.0103193   0.0294353
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0355332   -0.0017110   0.0727773
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0823313   -0.0135534   0.1782161
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1196029    0.0033619   0.2358440
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0952507    0.0346351   0.1558663
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0249590   -0.1042977   0.0543796
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0977594    0.0101509   0.1853680
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0602409   -0.0082139   0.1286957
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0332410   -0.0219192   0.0884013
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0099653   -0.0069403   0.0268708
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0123342   -0.0385763   0.0139079
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0110203    0.0018811   0.0201595
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0629981    0.0035355   0.1224606
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0561968   -0.0488283   0.1612220
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0010719   -0.0983817   0.1005254
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0991907    0.0532849   0.1450964
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0538288    0.0157984   0.0918592
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0023200   -0.0192572   0.0146172
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0112582   -0.0502791   0.0727956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0141697    0.0072504   0.0210890
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0337761   -0.0027531   0.0703053


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.4290230   -0.0002398   0.6740634
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.5644655    0.2159745   0.7580559
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.3991082    0.0861163   0.6049049
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.2842407   -1.1242664   0.2236029
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1564356   -0.8762811   0.6207386
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.5197631    0.0234763   0.7638280
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2799984   -0.0563421   0.5092478
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1720236   -0.0753542   0.3624939
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.3356308    0.1021477   0.5083975
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1368340   -0.0648136   0.3002949
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0084247   -0.0759960   0.0862218
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0498305   -0.2646811   0.2861267
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0361962   -0.1133215   0.0355862
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0815241    0.0415022   0.1198748
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4511638   -0.2757848   0.7638934
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3668799   -0.2355279   0.6755711
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3808409   -0.1210521   0.6580374
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.5272014    0.0856821   0.7555134
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.1123157   -0.5359346   0.1944668
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2739026   -0.0175017   0.4818510
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2289838   -0.0783900   0.4487468
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1287025   -0.1127481   0.3177617
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0710252   -0.0577516   0.1841239
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0437038   -0.1430488   0.0470070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0610980    0.0090663   0.1103977
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.4112373   -0.1084544   0.6872749
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2070157   -0.2646026   0.5027496
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0036471   -0.3993268   0.2905738
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.6151825    0.2323706   0.8070885
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.4093232    0.0491294   0.6330741
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0143855   -0.1250103   0.0853613
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0498305   -0.2646811   0.2861267
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1455997    0.0720879   0.2132876
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4417703   -0.2904725   0.7585222
