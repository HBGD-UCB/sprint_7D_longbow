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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi                   ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0      105     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       58     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0       15     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1       17     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1       10     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0       81     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        7     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        8     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        2     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0      113     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1       10     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    0       69     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    1       73     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      0       20     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      1       29     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0       38     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1       13     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    0       85     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       49     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0       84     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       20     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    0      143     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    1       16     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      0        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      1        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              0      118     290
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        8     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0       79     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0      128     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       25     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      153     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1       24     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0       10     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        4     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0       61     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        4     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0      619    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1      349    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0      152    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1      195    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0       47    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1       27    1389
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0      234     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1      208     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       60     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0       48     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1       30     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0      275     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1      148     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       64     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       63     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0       89     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1       30     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0      312     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1      171     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0       36     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1       32     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0      157     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1       47     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      932    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      303    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0       25    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1       13    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0      832    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1      240    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    0     1982    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    1      559    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      0      320    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      1      131    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              0      154    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              1       32    3178
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    0     5813   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    1     2338   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      0      346   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      1      177   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              0     3702   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              1     1352   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0     4989    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1     1724    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0      348    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1      168    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0     2059    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1      509    9797
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    0      611     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    1       41     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      0      120     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      1       25     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0       40     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0      127     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       36     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0       19     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1       13     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0       51     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1        8     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0       84     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        4     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        8     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0      115     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1        8     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                    0       96     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                    1       46     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                      0       28     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                      1       21     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0       42     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1        9     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                    0      102     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       32     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0       93     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       11     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                    0      153     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                    1        6     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                      0        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                      1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese              0      121     290
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        5     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0       95     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       14     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        8     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0      141     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       12     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      170     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1        7     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0       13     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0       62     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        3     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0      782    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1      182    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0      243    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1      101    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0       59    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1       15    1382
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0      285     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1      156     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       59     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       44     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0       56     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1       22     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0      317     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1      106     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       79     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       48     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0       97     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1       22     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0      345     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1      138     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0       48     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1       20     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0      167     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1       37     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0     1059    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      176    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0       30    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1        8    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0      927    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1      145    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                    0     5872   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                    1     2279   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                      0      351   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                      1      172   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese              0     3734   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese              1     1320   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0     5413    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1     1279    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0      391    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1      118    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0     2174    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1      384    9759
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                    0      211     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                    1        4     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                      0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                      1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0        9     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0      123     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       31     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1        9     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0       51     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1        4     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0       77     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        4     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        9     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0      114     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1        2     206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    0       96     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    1       41     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      0       32     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      1       16     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0       42     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1        7     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    0      106     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       26     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0       93     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       10     235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    0      135     269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    1       12     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      0        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              0      114     269
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        3     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0       82     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       21     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0      129     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       15     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      150     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1       20     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0       59     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0      649    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1      238    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0      182    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1      139    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0       52    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1       16    1276
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0      268     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1      109     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       56     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       37     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0       58     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1       13     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0      329     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1       62     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       81     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       27     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0      105     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1       10     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0      400     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1       64     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0       49     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0      185     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1       14     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      844    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      180    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0       24    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1        6    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0      786    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1      132    1972
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    0     1982    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    1      559    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      0      320    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      1      131    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              0      154    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              1       32    3178
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    0     8058   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    1       88   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      0      513   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      1       10   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              0     5008   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              1       43   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0     5270    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1      596    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0      382    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1       75    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0     2081    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1      155    8559
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    0      606     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    1       38     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      0      114     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      1       25     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0       40     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0     823


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6342eb1f-c68a-46b4-80b5-d03ebd83f985/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6342eb1f-c68a-46b4-80b5-d03ebd83f985/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6342eb1f-c68a-46b4-80b5-d03ebd83f985/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6342eb1f-c68a-46b4-80b5-d03ebd83f985/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level    baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.3558282    0.2821851   0.4294713
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.5312500    0.3580093   0.7044907
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.1694915    0.0735681   0.2654150
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.5140845    0.4317085   0.5964605
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.5918367    0.4539358   0.7297376
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.2549020    0.1350472   0.3747568
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.3605372    0.3053901   0.4156843
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.5619597    0.4853370   0.6385823
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.3648649    0.1995422   0.5301876
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.4705882    0.4240186   0.5171578
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.5769231    0.4818958   0.6719504
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.3846154    0.2765627   0.4926681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.3498818    0.3043977   0.3953659
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.4960630    0.4090413   0.5830847
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.2521008    0.1740265   0.3301751
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.3540373    0.3113606   0.3967139
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.4705882    0.3518751   0.5893014
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.2303922    0.1725707   0.2882137
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.2453441    0.2213409   0.2693474
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.3421053    0.1912338   0.4929767
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.2238806    0.1989223   0.2488389
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.2199921    0.1937954   0.2461889
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.2904656    0.2285822   0.3523491
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.1720430   -0.0074851   0.3515711
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.2868360    0.2253876   0.3482844
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.3384321    0.2526163   0.4242480
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.2675109    0.2039909   0.3310308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.2568151    0.2463638   0.2672664
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.3255814    0.2851480   0.3660148
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.1982087    0.1827894   0.2136280
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.2208589    0.1570507   0.2846671
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.4062500    0.2357485   0.5767515
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.1355932    0.0480633   0.2231232
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.3239437    0.2468126   0.4010747
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.4285714    0.2897227   0.5674201
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.1764706    0.0716280   0.2813132
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.1887967    0.1472287   0.2303646
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.2936047    0.2263064   0.3609029
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.2027027    0.1426583   0.2627471
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.3537415    0.3090809   0.3984021
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.4271845    0.3315765   0.5227924
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.2820513    0.1821063   0.3819963
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.2505910    0.2092630   0.2919191
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.3779528    0.2935607   0.4623448
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.1848739    0.1150749   0.2546730
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.2857143    0.2453995   0.3260291
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.2941176    0.1857479   0.4024874
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.1813725    0.1284611   0.2342840
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.1425101    0.1230097   0.1620106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2105263    0.0808768   0.3401758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.1352612    0.1147839   0.1557385
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.2795976    0.2175395   0.3416557
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                0.3288719    0.2431637   0.4145801
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.2611793    0.1966176   0.3257410
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.1911237    0.1817029   0.2005446
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.2318271    0.1951645   0.2684897
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.1501173    0.1362748   0.1639598
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.2992701    0.2224235   0.3761167
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.3333333    0.1996888   0.4669779
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.1428571    0.0446693   0.2410450
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.2683202    0.2264087   0.3102317
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.4330218    0.3585179   0.5075258
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.2352941    0.0628082   0.4077800
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.2891247    0.2433191   0.3349303
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.3978495    0.2982813   0.4974176
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.1830986    0.0930560   0.2731412
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.1585678    0.1223326   0.1948030
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.2500000    0.1682683   0.3317317
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.0869565    0.0354159   0.1384972
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.1379310    0.1065340   0.1693281
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.2686567    0.1624461   0.3748673
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.0703518    0.0347955   0.1059080
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.1757813    0.1524619   0.1991006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2000000    0.0568282   0.3431718
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.1437908    0.1210874   0.1664943
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.2199921    0.1937954   0.2461889
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.2904656    0.2285822   0.3523491
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.1720430   -0.0074851   0.3515711
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.0108028    0.0075408   0.0140649
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.0191205    0.0048384   0.0334025
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.0085132    0.0044269   0.0125995
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.1016025    0.0938705   0.1093344
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.1641138    0.1301543   0.1980733
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.0693202    0.0587917   0.0798487


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4752066   0.4121581   0.5382551
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4110871   0.3516836   0.4704906
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2371002   0.2198828   0.2543177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816871   0.2197838   0.3435903
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2450750   0.2365573   0.2535928
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3140496   0.2554513   0.3726479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2156295   0.1693905   0.2618686
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402985   0.1262390   0.1543580
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746941   0.2120609   0.3373272
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1824982   0.1748345   0.1901620
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3079937   0.2595409   0.3564465
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612576   0.1450216   0.1774936
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0102770   0.0071241   0.0134298
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0965066   0.0902505   0.1027627


### Parameter: RR


agecat        studyid                    country                        intervention_level    baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.4929957   1.0146596   2.1968314
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.4763296   0.2607356   0.8701917
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.1512441   0.8676713   1.5274942
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.4958367   0.3017181   0.8148468
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.5586732   1.4334873   1.6947915
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     1.0120034   0.6148146   1.6657881
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2259615   1.0116369   1.4856929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.8173077   0.6067753   1.1008883
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.4178017   1.1397000   1.7637637
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.7205315   0.5149740   1.0081394
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.3292054   1.0050076   1.7579836
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.6507568   0.4926102   0.8596745
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.3943894   0.8875647   2.1906255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9125166   0.7867289   1.0584162
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.3203456   1.0266758   1.6980165
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.7820417   0.2763469   2.2131212
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.1798803   1.0148348   1.3717678
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9326267   0.8745706   0.9945366
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2677656   1.1124556   1.4447584
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7717953   0.7069249   0.8426185
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.8394097   1.1050848   3.0616909
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.6139360   0.3026736   1.2452930
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.3229814   0.8849930   1.9777328
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.5447570   0.2872336   1.0331667
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.5551367   1.3542035   1.7858839
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     1.0736561   0.7736762   1.4899481
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2076176   0.9339671   1.5614472
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.7973373   0.5473607   1.1614768
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.5082454   1.1426571   1.9908022
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.7377517   0.4886314   1.1138816
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.0294118   0.6938057   1.5273565
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.6348039   0.4590945   0.8777627
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.4772727   0.7861116   2.7761132
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9491339   0.7739316   1.1639985
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.1762329   1.0060810   1.3751615
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9341256   0.8738533   0.9985550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2129688   1.0278003   1.4314972
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7854455   0.7074677   0.8720182
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.1138211   0.6918981   1.7930351
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.4773519   0.2291872   0.9942303
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.6138250   1.4387179   1.8102444
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.8769155   0.4090413   1.8799588
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.3760481   1.0232859   1.8504199
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.6332860   0.3777608   1.0616535
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.5766129   1.0580257   2.3493836
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.5483872   0.2905393   1.0350700
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.9477612   1.2342852   3.0736605
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.5100503   0.2930101   0.8878576
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.1377778   0.5493769   2.3563755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.8180102   0.6655736   1.0053593
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.3203456   1.0266758   1.6980165
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.7820417   0.2763469   2.2131212
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.7699461   0.7961073   3.9350337
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.7880483   0.5462156   1.1369505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.6152541   1.2956544   2.0136897
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.6822691   0.5756750   0.8086005


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0211826   -0.0641179    0.0217528
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0388779   -0.0917685    0.0140127
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0505499    0.0368957    0.0642042
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0069759   -0.0182189    0.0321706
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0103574   -0.0175351    0.0382499
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0229114   -0.0477992    0.0019763
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0082439   -0.0245451    0.0080573
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0071948   -0.0096911    0.0240806
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0051489   -0.0114130    0.0011152
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0117401   -0.0174050   -0.0060752
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0035506   -0.0350317    0.0421328
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0098941   -0.0588967    0.0391085
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0268328    0.0172417    0.0364240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0031717   -0.0210376    0.0273810
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0124882   -0.0132602    0.0382367
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0274361   -0.0502789   -0.0045934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0022116   -0.0155307    0.0111075
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0049035   -0.0111137    0.0013067
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0086255   -0.0137015   -0.0035495
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0257658   -0.0733734    0.0218418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0396736    0.0215887    0.0577584
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0047755   -0.0207236    0.0302746
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0026700   -0.0194263    0.0247664
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0064242   -0.0247127    0.0118643
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0145236   -0.0301009    0.0010536
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0071948   -0.0096911    0.0240806
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0005259   -0.0018040    0.0007522
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0050959   -0.0092160   -0.0009757


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0632984   -0.1996978    0.0575931
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0818126   -0.1996014    0.0244105
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1229665    0.0919590    0.1529150
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0146072   -0.0395990    0.0659870
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0287514   -0.0518518    0.1031780
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0691925   -0.1470789    0.0034054
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0347698   -0.1058399    0.0317328
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0316690   -0.0442617    0.1020786
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0182788   -0.0416211    0.0045403
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0479042   -0.0712564   -0.0250610
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0158218   -0.1720176    0.1735561
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0315048   -0.1999522    0.1132962
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1244396    0.0869634    0.1603774
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0088864   -0.0613188    0.0744477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0474694   -0.0555433    0.1404288
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.1062271   -0.1980687   -0.0214259
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0157636   -0.1152660    0.0748613
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0178509   -0.0416571    0.0054112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0472636   -0.0754114   -0.0198525
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0942062   -0.2826501    0.0665520
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1288128    0.0761795    0.1784475
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0162488   -0.0744481    0.0992897
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0165595   -0.1304670    0.1444640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0488506   -0.1973275    0.0812142
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0900649   -0.1908023    0.0021506
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0316690   -0.0442617    0.1020786
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0511707   -0.1863235    0.0685846
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0528032   -0.0962629   -0.0110663
