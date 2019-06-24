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
      Y: ['haz']
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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               164     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                63     227
Birth       ki0047075b-MAL-ED          BRAZIL                         1                65     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0               112     177
Birth       ki0047075b-MAL-ED          INDIA                          1               121     193
Birth       ki0047075b-MAL-ED          INDIA                          0                72     193
Birth       ki0047075b-MAL-ED          NEPAL                          1                60     166
Birth       ki0047075b-MAL-ED          NEPAL                          0               106     166
Birth       ki0047075b-MAL-ED          PERU                           1                64     265
Birth       ki0047075b-MAL-ED          PERU                           0               201     265
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                32     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               199     231
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                76     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0       9
Birth       ki1000108-IRC              INDIA                          0                 9       9
Birth       ki1000109-EE               PAKISTAN                       1                 1       1
Birth       ki1000109-EE               PAKISTAN                       0                 0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                45      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      47
Birth       ki1101329-Keneba           GAMBIA                         1              1150    1305
Birth       ki1101329-Keneba           GAMBIA                         0               155    1305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             13731   15136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1405   15136
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                28      31
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 3      31
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               172     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                65     237
6 months    ki0047075b-MAL-ED          BRAZIL                         1                81     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               128     209
6 months    ki0047075b-MAL-ED          INDIA                          1               141     233
6 months    ki0047075b-MAL-ED          INDIA                          0                92     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                85     233
6 months    ki0047075b-MAL-ED          NEPAL                          0               148     233
6 months    ki0047075b-MAL-ED          PERU                           1                67     270
6 months    ki0047075b-MAL-ED          PERU                           0               203     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                31     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               217     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                68     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               172     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1               349     375
6 months    ki1000109-EE               PAKISTAN                       0                26     375
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               412     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               170     582
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             14758   16253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1495   16253
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                77      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      89
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               150     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                58     208
24 months   ki0047075b-MAL-ED          BRAZIL                         1                71     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                98     169
24 months   ki0047075b-MAL-ED          INDIA                          1               133     225
24 months   ki0047075b-MAL-ED          INDIA                          0                92     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                82     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               143     225
24 months   ki0047075b-MAL-ED          PERU                           1                46     199
24 months   ki0047075b-MAL-ED          PERU                           0               153     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                27     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               205     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                57     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               153     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               407     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               171     578
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1421
24 months   ki1101329-Keneba           GAMBIA                         0               147    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7492    8313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               821    8313
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               136     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     151


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/bf3005fc-6384-4120-993b-10c0dcdc47c8/d5a9746d-0a7c-4b0d-90d7-70eff6193519/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.9824783   -1.1958133   -0.7691432
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.4683104    0.2401520    0.6964688
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.0168090   -1.2027344   -0.8308836
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.7815670   -0.9963959   -0.5667381
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0826549   -0.1351791    0.3004889
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0772687   -0.3469162    0.5014537
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7906021    0.5122667    1.0689375
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed           1.7074107    1.6175917    1.7972298
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.7307797   -0.7631823   -0.6983770
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.2661469   -0.4663835   -0.0659102
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           1.1101277    0.8733983    1.3468570
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.6941637   -0.8596199   -0.5287075
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.1180116   -0.0726169    0.3086400
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           1.0865667    0.8788151    1.2943183
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.4668176    0.2774756    0.6561597
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6798414    0.4416075    0.9180753
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.6549990   -0.7694214   -0.5405767
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.7024985   -1.0772887   -0.3277082
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.1467053   -0.2431758   -0.0502347
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.1910878   -0.2533453   -0.1288303
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.6498464   -0.8484701   -0.4512226
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.5889197   -0.6126969   -0.5651425
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.2748220   -0.6474148    0.0977709
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.7166369   -0.9164536   -0.5168202
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.4663036    0.1777986    0.7548085
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.8892775   -1.0898249   -0.6887300
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2785211   -0.4566640   -0.1003783
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed           0.0667432   -0.0639188    0.1974051
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.7366842    0.5160843    0.9572840
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0809258   -0.0745243    0.2363759
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.8451745   -1.0010918   -0.6892573
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.7558971   -0.8109670   -0.7008271
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.0135692   -1.2504843   -0.7766541
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.1862473   -1.2563311   -1.1161636
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.2167433   -1.6534570   -0.7800295


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.9701762   -1.1093516   -0.8310008
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.3837288    0.2059602    0.5614974
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.0824352   -1.2259825   -0.9388879
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.9184337   -1.0582074   -0.7786600
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.0558491   -0.1687562    0.0570581
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.0290476   -0.1772448    0.1191495
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7865789    0.5832028    0.9899551
Birth       ki1101329-Keneba          GAMBIA                         observed             observed           1.6646743    1.5791251    1.7502236
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.7222456   -0.7423351   -0.7021562
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.1245816   -0.2544517    0.0052886
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -0.7105222   -0.8368775   -0.5841669
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed           0.1010587   -0.0308005    0.2329178
6 months    ki0047075b-MAL-ED         PERU                           observed             observed           1.0571296    0.9346064    1.1796528
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.5435551    0.3895443    0.6975659
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5063403    0.3745918    0.6380888
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -0.7218667   -0.8355727   -0.6081607
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1101329-Keneba          GAMBIA                         observed             observed          -0.2057405   -0.2614576   -0.1500234
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -0.6194068   -0.7173394   -0.5214742
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.5929896   -0.6128338   -0.5731455
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.3657303   -0.5647992   -0.1666615
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.8080769   -0.9302432   -0.6859106
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9551111   -1.0714034   -0.8388188
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.3795556   -0.4938120   -0.2652991
24 months   ki0047075b-MAL-ED         PERU                           observed             observed           0.1242714    0.0054301    0.2431126
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.4157543    0.2953789    0.5361297
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0434286   -0.0830724    0.1699295
24 months   ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba          GAMBIA                         observed             observed          -0.7930925   -0.8442611   -0.7419240
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.1267450   -1.2257791   -1.0277110
24 months   kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3031012   -1.3269655   -1.2792368
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.0137086   -1.1659964   -0.8614208


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.0123021   -0.1252687    0.1498728
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0845816   -0.2067468    0.0375836
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0656262   -0.1741690    0.0429165
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1368667   -0.3074489    0.0337154
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1385039   -0.3341211    0.0571132
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.1063164   -0.4997130    0.2870803
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0040231   -0.2077235    0.1996772
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0427364   -0.0777658   -0.0077069
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.0085340   -0.0145656    0.0316336
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.1415653    0.0025005    0.2806301
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1384052   -0.3186016    0.0417912
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0163585   -0.1405759    0.1078590
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0169529   -0.1725276    0.1386218
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0294371   -0.2098225    0.1509483
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0767375   -0.0377047    0.1911797
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1735011   -0.3623304    0.0153282
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.0668676   -0.1090553   -0.0246799
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0676124   -0.3469319    0.4821567
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0616653   -0.1187157   -0.0046150
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0146527   -0.0454259    0.0161204
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.0304395   -0.1409586    0.2018377
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0040699   -0.0170932    0.0089534
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0909084   -0.4440099    0.2621932
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0914400   -0.2580944    0.0752143
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0196764   -0.1969511    0.1575984
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0658337   -0.2011494    0.0694821
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1010344   -0.2421116    0.0400427
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed           0.0575282   -0.0372103    0.1522667
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.3209299   -0.5366038   -0.1052560
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0374972   -0.1107936    0.0357992
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0427667   -0.1713515    0.0858182
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0371955   -0.0579776   -0.0164133
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.1131758   -0.3340073    0.1076556
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.1168538   -0.1830229   -0.0506847
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.2030347   -0.2089233    0.6149926
