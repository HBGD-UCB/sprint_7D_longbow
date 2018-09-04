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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    stunted   n_cell       n
----------  ----------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               0       32     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               1        5     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               0      164     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               1       33     234
Birth       ki0047075b-MAL-ED       BRAZIL                         0               0        4     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0               1        0     174
Birth       ki0047075b-MAL-ED       BRAZIL                         1               0      153     174
Birth       ki0047075b-MAL-ED       BRAZIL                         1               1       17     174
Birth       ki0047075b-MAL-ED       INDIA                          0               0       85     190
Birth       ki0047075b-MAL-ED       INDIA                          0               1       13     190
Birth       ki0047075b-MAL-ED       INDIA                          1               0       76     190
Birth       ki0047075b-MAL-ED       INDIA                          1               1       16     190
Birth       ki0047075b-MAL-ED       NEPAL                          0               0        1     171
Birth       ki0047075b-MAL-ED       NEPAL                          0               1        0     171
Birth       ki0047075b-MAL-ED       NEPAL                          1               0      152     171
Birth       ki0047075b-MAL-ED       NEPAL                          1               1       18     171
Birth       ki0047075b-MAL-ED       PERU                           0               0      167     250
Birth       ki0047075b-MAL-ED       PERU                           0               1       21     250
Birth       ki0047075b-MAL-ED       PERU                           1               0       54     250
Birth       ki0047075b-MAL-ED       PERU                           1               1        8     250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      191     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       20     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       97     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       16     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     113
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               0       18      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               1        1      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               0        9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               1        0      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               0        1      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               1        1      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               0       21      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               1        4      27
Birth       ki1114097-CONTENT       PERU                           0               0        1       2
Birth       ki1114097-CONTENT       PERU                           0               1        0       2
Birth       ki1114097-CONTENT       PERU                           1               0        1       2
Birth       ki1114097-CONTENT       PERU                           1               1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      0               0      416     491
Birth       ki1135781-COHORTS       GUATEMALA                      0               1       30     491
Birth       ki1135781-COHORTS       GUATEMALA                      1               0       42     491
Birth       ki1135781-COHORTS       GUATEMALA                      1               1        3     491
Birth       ki1135781-COHORTS       INDIA                          0               0     2618    4776
Birth       ki1135781-COHORTS       INDIA                          0               1      391    4776
Birth       ki1135781-COHORTS       INDIA                          1               0     1593    4776
Birth       ki1135781-COHORTS       INDIA                          1               1      174    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    0               0      936    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0               1       77    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1               0      176    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1               1        2    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     8256   39184
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1     4554   39184
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0    18258   39184
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1     8116   39184
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      290    1644
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1      142    1644
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0      860    1644
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1      352    1644
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       33     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        5     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      162     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1       40     240
6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      199     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        6     209
6 months    ki0047075b-MAL-ED       INDIA                          0               0       98     233
6 months    ki0047075b-MAL-ED       INDIA                          0               1       27     233
6 months    ki0047075b-MAL-ED       INDIA                          1               0       91     233
6 months    ki0047075b-MAL-ED       INDIA                          1               1       17     233
6 months    ki0047075b-MAL-ED       NEPAL                          0               0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0               1        0     236
6 months    ki0047075b-MAL-ED       NEPAL                          1               0      223     236
6 months    ki0047075b-MAL-ED       NEPAL                          1               1       12     236
6 months    ki0047075b-MAL-ED       PERU                           0               0      159     263
6 months    ki0047075b-MAL-ED       PERU                           0               1       39     263
6 months    ki0047075b-MAL-ED       PERU                           1               0       47     263
6 months    ki0047075b-MAL-ED       PERU                           1               1       18     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      193     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       47     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      181     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       57     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      240     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1       92     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      153     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1       52     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0       20     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        6     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0      467     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1       88     581
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               0       73     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               1       16     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               0      483     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               1      132     704
6 months    ki1114097-CONTENT       PERU                           0               0       11     215
6 months    ki1114097-CONTENT       PERU                           0               1        3     215
6 months    ki1114097-CONTENT       PERU                           1               0      185     215
6 months    ki1114097-CONTENT       PERU                           1               1       16     215
6 months    ki1135781-COHORTS       GUATEMALA                      0               0      328     658
6 months    ki1135781-COHORTS       GUATEMALA                      0               1      263     658
6 months    ki1135781-COHORTS       GUATEMALA                      1               0       41     658
6 months    ki1135781-COHORTS       GUATEMALA                      1               1       26     658
6 months    ki1135781-COHORTS       INDIA                          0               0     2355    4971
6 months    ki1135781-COHORTS       INDIA                          0               1      735    4971
6 months    ki1135781-COHORTS       INDIA                          1               0     1643    4971
6 months    ki1135781-COHORTS       INDIA                          1               1      238    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    0               0      718    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0               1      222    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1               0      132    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1               1       11    1083
6 months    ki1148112-LCNI-5        MALAWI                         0               0      515     812
6 months    ki1148112-LCNI-5        MALAWI                         0               1      294     812
6 months    ki1148112-LCNI-5        MALAWI                         1               0        2     812
6 months    ki1148112-LCNI-5        MALAWI                         1               1        1     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     6666   33555
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1     2848   33555
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0    18451   33555
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1     5590   33555
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0     1491    9441
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1      642    9441
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     5566    9441
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1     1742    9441
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       16     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1       15     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0       98     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1       83     212
24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      160     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        6     169
24 months   ki0047075b-MAL-ED       INDIA                          0               0       64     225
24 months   ki0047075b-MAL-ED       INDIA                          0               1       57     225
24 months   ki0047075b-MAL-ED       INDIA                          1               0       68     225
24 months   ki0047075b-MAL-ED       INDIA                          1               1       36     225
24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               0      178     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               1       49     228
24 months   ki0047075b-MAL-ED       PERU                           0               0       93     196
24 months   ki0047075b-MAL-ED       PERU                           0               1       56     196
24 months   ki0047075b-MAL-ED       PERU                           1               0       31     196
24 months   ki0047075b-MAL-ED       PERU                           1               1       16     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      149     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       82     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       58     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1      149     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      106     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1      153     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0       85     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       85     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       13     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1       11     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      373     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1      179     576
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       53     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1       17     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      321     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1      112     503
24 months   ki1114097-CONTENT       PERU                           0               0        9     164
24 months   ki1114097-CONTENT       PERU                           0               1        4     164
24 months   ki1114097-CONTENT       PERU                           1               0      134     164
24 months   ki1114097-CONTENT       PERU                           1               1       17     164
24 months   ki1135781-COHORTS       GUATEMALA                      0               0      167     896
24 months   ki1135781-COHORTS       GUATEMALA                      0               1      652     896
24 months   ki1135781-COHORTS       GUATEMALA                      1               0       20     896
24 months   ki1135781-COHORTS       GUATEMALA                      1               1       57     896
24 months   ki1135781-COHORTS       INDIA                          0               0      955    3754
24 months   ki1135781-COHORTS       INDIA                          0               1     1328    3754
24 months   ki1135781-COHORTS       INDIA                          1               0      948    3754
24 months   ki1135781-COHORTS       INDIA                          1               1      523    3754
24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      234     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0               1      630     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1               0       82     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1               1       44     990
24 months   ki1148112-LCNI-5        MALAWI                         0               0      319     572
24 months   ki1148112-LCNI-5        MALAWI                         0               1      251     572
24 months   ki1148112-LCNI-5        MALAWI                         1               0        1     572
24 months   ki1148112-LCNI-5        MALAWI                         1               1        1     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     2090   17206
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1     2923   17206
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0     6671   17206
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1     5522   17206
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0     1123    9270
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      951    9270
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     4503    9270
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1     2693    9270


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0d45acf2-ba32-4592-aa38-f8b0dac1560c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d45acf2-ba32-4592-aa38-f8b0dac1560c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d45acf2-ba32-4592-aa38-f8b0dac1560c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d45acf2-ba32-4592-aa38-f8b0dac1560c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1351351   0.0247437   0.2455266
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1675127   0.1152541   0.2197713
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                0.1326834   0.0671109   0.1982558
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                0.1728660   0.0977196   0.2480124
Birth       ki0047075b-MAL-ED       PERU          0                    NA                0.1117021   0.0665842   0.1568201
Birth       ki0047075b-MAL-ED       PERU          1                    NA                0.1290323   0.0454195   0.2126451
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1301168   0.1185433   0.1416902
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1061961   0.0923271   0.1200652
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3442387   0.3322220   0.3562555
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.3118249   0.3027234   0.3209265
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3120646   0.2444566   0.3796726
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2839205   0.2433352   0.3245059
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238775   0.2392803
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1980198   0.1429498   0.2530898
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.2150847   0.1436346   0.2865348
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.1580638   0.0898579   0.2262697
6 months    ki0047075b-MAL-ED       PERU          0                    NA                0.2046011   0.1498117   0.2593905
6 months    ki0047075b-MAL-ED       PERU          1                    NA                0.3528703   0.2602857   0.4454548
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2713211   0.2253722   0.3172699
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2421237   0.1872756   0.2969717
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2307692   0.0686805   0.3928579
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1585586   0.1281439   0.1889732
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2058291   0.1332568   0.2784014
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2157549   0.1833732   0.2481366
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                0.4405189   0.4009721   0.4800658
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.3007882   0.2368969   0.3646794
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.2266897   0.2126075   0.2407719
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1462174   0.1308674   0.1615674
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2353170   0.2081758   0.2624582
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0683489   0.0251353   0.1115626
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2887667   0.2761445   0.3013888
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2414679   0.2322972   0.2506387
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3029868   0.2742936   0.3316799
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2402374   0.2242520   0.2562228
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.4779863   0.3202425   0.6357301
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.4580379   0.3866069   0.5294688
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.4734959   0.3864448   0.5605469
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.3435807   0.2529077   0.4342537
24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.3746348   0.2987932   0.4504765
24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.3428442   0.2343577   0.4513308
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5855365   0.5282165   0.6428565
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5092787   0.4399139   0.5786434
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.4605156   0.2841934   0.6368379
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3241025   0.2850304   0.3631745
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2360780   0.1372538   0.3349022
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2590088   0.2177240   0.3002936
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.7935074   0.7661157   0.8208990
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.8526698   0.8005517   0.9047879
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.5592609   0.5402175   0.5783042
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.4094113   0.3869677   0.4318549
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7187285   0.6892515   0.7482055
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.3802278   0.3204589   0.4399968
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.5390281   0.5201862   0.5578700
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4697806   0.4551197   0.4844415
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4494123   0.4197497   0.4790749
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3795361   0.3598171   0.3992550


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1623932   0.1150373   0.2097491
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                0.1526316   0.1013601   0.2039030
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                0.1160000   0.0762256   0.1557744
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.1182998   0.1091394   0.1274602
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.3233463   0.3156839   0.3310086
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1875000   0.1380164   0.2369836
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                0.2167300   0.1668401   0.2666199
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1617900   0.1318200   0.1917600
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2102273   0.1801065   0.2403480
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                0.4392097   0.4012606   0.4771588
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.1957353   0.1847045   0.2067660
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2151431   0.1906585   0.2396277
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2514677   0.2433332   0.2596023
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2525156   0.2383895   0.2666417
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.4133333   0.3488467   0.4778200
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.3673469   0.2996839   0.4350100
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2564612   0.2182616   0.2946608
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.7912946   0.7646707   0.8179186
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.4930741   0.4770789   0.5090692
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6808081   0.6517553   0.7098609
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4908172   0.4777026   0.5039317
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3930960   0.3759134   0.4102786


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.2395939   0.5170294   2.9719647
Birth       ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       INDIA         1                    0                 1.3028461   0.6834136   2.4837202
Birth       ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU          1                    0                 1.1551459   0.5382944   2.4788706
Birth       ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       INDIA         1                    0                 0.8161603   0.6971777   0.9554487
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.9058391   0.8674996   0.9458731
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.9098133   0.7016914   1.1796641
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.5049505   0.6339883   3.5724256
6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA         1                    0                 0.7348910   0.4279783   1.2618976
6 months    ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU          1                    0                 1.7246741   1.1883672   2.5030149
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8923880   0.6806376   1.1700152
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.6870871   0.3317411   1.4230635
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.0482236   0.7154379   1.5358046
6 months    ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       GUATEMALA     1                    0                 0.6828042   0.5440131   0.8570044
6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         1                    0                 0.6450112   0.5715552   0.7279078
6 months    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   1                    0                 0.2904547   0.1527110   0.5524418
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8362044   0.7927847   0.8820021
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7928973   0.7046578   0.8921865
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.9582657   0.6733411   1.3637561
24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.7256256   0.5288697   0.9955807
24 months   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU          1                    0                 0.9151424   0.6334017   1.3222031
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8697641   0.7411956   1.0206343
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.7037817   0.4710660   1.0514634
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.0971324   0.7012738   1.7164472
24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 1.0745582   1.0025435   1.1517458
24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       INDIA         1                    0                 0.7320578   0.6878488   0.7791083
24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5290284   0.4504821   0.6212701
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8715327   0.8342308   0.9105026
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8445164   0.7777611   0.9170014


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0272580   -0.0755772    0.1300932
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.0199482   -0.0278435    0.0677400
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0042979   -0.0192827    0.0278785
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0118169   -0.0185157   -0.0051181
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0208925   -0.0305904   -0.0111945
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0115780   -0.0698760    0.0467199
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0559211   -0.0459368    0.1577789
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0262435   -0.0717034    0.0192164
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.0121289   -0.0177804    0.0420383
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0031646   -0.0295698    0.0232405
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0689792   -0.2265213    0.0885629
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0043982   -0.0640963    0.0728926
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0013092   -0.0132087    0.0105903
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0309544   -0.0385893   -0.0233195
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0201739   -0.0276508   -0.0126970
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0372989   -0.0478063   -0.0267915
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0504711   -0.0761652   -0.0247771
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0157222   -0.1583065    0.1268621
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0601625   -0.1178090   -0.0025160
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0072879   -0.0428927    0.0283169
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0307580   -0.0652791    0.0037632
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1306545   -0.3033371    0.0420280
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0203832   -0.0716714    0.1124379
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0022127   -0.0107133    0.0062878
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0661868   -0.0777420   -0.0546316
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0379205   -0.0502502   -0.0255907
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0482109   -0.0638688   -0.0325531
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0563163   -0.0833493   -0.0292833


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1678521   -0.7783643    0.6106140
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.1306952   -0.2427722    0.3919313
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0370506   -0.1889133    0.2200680
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0998896   -0.1582119   -0.0445042
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0646133   -0.0951607   -0.0349180
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0385309   -0.2520357    0.1385658
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.2982456   -0.5135140    0.6746253
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.1389713   -0.4055341    0.0770373
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 0.0559633   -0.0914213    0.1834451
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0118014   -0.1152297    0.0820347
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.4263502   -1.8201542    0.2785944
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0209210   -0.3653325    0.2979032
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0029808   -0.0304495    0.0237556
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.1581444   -0.1978642   -0.1197416
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0937696   -0.1283201   -0.0602771
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1483248   -0.1916598   -0.1065658
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1998733   -0.3073375   -0.1012429
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0340112   -0.3934453    0.2327082
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1455545   -0.2956145   -0.0128746
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -0.0198393   -0.1216729    0.0727491
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0554419   -0.1199144    0.0053190
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.3960895   -1.0352479    0.0423447
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0794788   -0.3593744    0.3766550
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0027963   -0.0136035    0.0078957
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.1342330   -0.1586354   -0.1103445
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0556992   -0.0745449   -0.0371840
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0982259   -0.1311114   -0.0662964
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1432635   -0.2154809   -0.0753368
