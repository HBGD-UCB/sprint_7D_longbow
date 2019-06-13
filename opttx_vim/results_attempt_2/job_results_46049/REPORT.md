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
![](/tmp/4e47729b-75da-4ccf-a53c-f38896511028/06355899-b342-4337-8e60-002b5a34983e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e47729b-75da-4ccf-a53c-f38896511028/06355899-b342-4337-8e60-002b5a34983e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1857733   0.0698753   0.3016712
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2116335   0.0831061   0.3401609
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1700638   0.0876408   0.2524867
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.1143882   0.0512183   0.1775580
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1626067   0.0263158   0.2988976
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0606278   0.0127901   0.1084655
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2770441   0.1757300   0.3783582
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4863764   0.3775597   0.5951932
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2377231   0.1605457   0.3149006
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2313735   0.1663932   0.2963537
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2211816   0.1967956   0.2455675
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2146724   0.1469942   0.2823506
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2909422   0.1818218   0.4000627
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2216890   0.2096727   0.2337054
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0443312   0.0061069   0.0825555
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1469613   0.0450475   0.2488751
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1919063   0.0682776   0.3155350
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0876193   0.0247193   0.1505193
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2471813   0.1505007   0.3438618
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3505982   0.2410180   0.4601783
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2656487   0.1897432   0.3415543
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2474638   0.1836385   0.3112891
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1290114   0.1074437   0.1505791
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2935586   0.1872189   0.3998983
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1723983   0.1607398   0.1840567
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0891921   0.0251017   0.1532825
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2152649   0.1214489   0.3090809
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3092270   0.1992269   0.4192271
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0615210   0.0167765   0.1062656
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0992499   0.0504328   0.1480670
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1417164   0.1176536   0.1657791
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2146724   0.1469942   0.2823506
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0812062   0.0730315   0.0893809
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0625887   0.0207678   0.1044096


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.8013662   1.0042571   3.231165
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           2.2454224   1.2626487   3.993131
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.7047486   1.1112949   2.615118
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.7837800   0.4886747   1.257096
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.2527387   0.5641151   2.781975
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           2.0617607   1.0176421   4.177163
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.3888859   0.9466630   2.037688
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9818817   0.7966568   1.210172
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.5153728   1.1197294   2.050812
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4311312   1.1075008   1.849332
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0726250   0.9886792   1.163698
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0524438   0.7907132   1.400809
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9879575   0.9155353   1.066108
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0998362   1.0538274   1.147854
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.7766025   0.7763877   4.065387
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.5269968   0.8007321   2.911984
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.6364737   0.8940973   2.995252
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           2.0620149   1.0758228   3.952236
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.8990253   0.6510694   1.241414
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0180121   0.7629239   1.358391
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9903274   0.7621362   1.286841
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0437009   0.8314137   1.310192
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0875481   0.9568499   1.236099
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9613863   0.8772192   1.053629
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0462439   0.9910266   1.104538
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.7175457   0.9059543   3.256194
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2610590   0.7907622   2.011059
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9504351   0.6850074   1.318711
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           2.6208561   1.3035101   5.269531
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3250076   0.8465126   2.073974
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1380057   0.9936207   1.303371
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0524438   0.7907132   1.400809
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1984252   1.1053183   1.299375
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2215674   0.6554452   2.276661


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1488724    0.0394914   0.2582534
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2635731    0.1412577   0.3858885
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1198522    0.0448931   0.1948113
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0247330   -0.0781415   0.0286755
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0410970   -0.0887370   0.1709310
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0643722    0.0175011   0.1112433
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1077385   -0.0087720   0.2242490
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0088123   -0.1104821   0.0928574
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1225160    0.0502582   0.1947739
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0997523    0.0401321   0.1593726
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0160633   -0.0019736   0.0341002
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0112582   -0.0502791   0.0727956
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0035037   -0.0259091   0.0189018
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0221326    0.0126434   0.0316218
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0344277   -0.0030350   0.0718904
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0774481   -0.0183713   0.1732676
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1221433    0.0053973   0.2388893
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0930530    0.0319413   0.1541647
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0249590   -0.1042977   0.0543796
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0063150   -0.0947802   0.1074102
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0025695   -0.0721314   0.0669924
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0108144   -0.0454700   0.0670988
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0112947   -0.0051938   0.0277832
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0113354   -0.0380062   0.0153354
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0079724   -0.0013759   0.0173206
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0639994    0.0045605   0.1234383
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0561968   -0.0488283   0.1612220
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0153268   -0.1166669   0.0860133
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0997167    0.0536951   0.1457383
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0322570   -0.0123889   0.0769029
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0195577    0.0002525   0.0388628
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0112582   -0.0502791   0.0727956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0161134    0.0094656   0.0227611
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0138676   -0.0252098   0.0529450


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.4448658    0.0042390   0.6905141
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.5546495    0.2080141   0.7495700
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.4134032    0.1001489   0.6176081
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.2758683   -1.0463511   0.2045159
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.2017489   -0.7726878   0.6405432
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.5149777    0.0173362   0.7606031
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2799984   -0.0563421   0.5092478
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0184527   -0.2552456   0.1736710
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.3400964    0.1069271   0.5123883
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3012521    0.0970661   0.4592642
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0677077   -0.0114504   0.1406707
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0498305   -0.2646811   0.2861267
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0121893   -0.0922572   0.0620092
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0907737    0.0510780   0.1288088
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4371279   -0.2880163   0.7540209
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3451198   -0.2488572   0.6565916
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3889300   -0.1184465   0.6661382
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.5150374    0.0704789   0.7469787
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.1123157   -0.5359346   0.1944668
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0176934   -0.3107467   0.2638347
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0097671   -0.3121015   0.2229034
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0418711   -0.2027707   0.2367531
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0805005   -0.0450960   0.1910031
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0401646   -0.1399660   0.0508994
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0442000   -0.0090546   0.0946439
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.4177738   -0.1038085   0.6928930
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2070157   -0.2646026   0.5027496
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0521497   -0.4598382   0.2416838
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.6184453    0.2328406   0.8102298
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2452874   -0.1813173   0.5178339
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1212697   -0.0064203   0.2327591
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0498305   -0.2646811   0.2861267
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1655716    0.0952833   0.2303992
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1813796   -0.5256805   0.5607603
