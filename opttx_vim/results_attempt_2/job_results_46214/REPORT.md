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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               173     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                67     240
Birth       ki0047075b-MAL-ED          BRAZIL                         1                67     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0               118     185
Birth       ki0047075b-MAL-ED          INDIA                          1               123     196
Birth       ki0047075b-MAL-ED          INDIA                          0                73     196
Birth       ki0047075b-MAL-ED          NEPAL                          1                61     171
Birth       ki0047075b-MAL-ED          NEPAL                          0               110     171
Birth       ki0047075b-MAL-ED          PERU                           1                67     272
Birth       ki0047075b-MAL-ED          PERU                           0               205     272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                32     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               201     233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                39     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0      10
Birth       ki1000108-IRC              INDIA                          0                10      10
Birth       ki1000109-EE               PAKISTAN                       1                 2       2
Birth       ki1000109-EE               PAKISTAN                       0                 0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                48      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      50
Birth       ki1101329-Keneba           GAMBIA                         1              1196    1354
Birth       ki1101329-Keneba           GAMBIA                         0               158    1354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             16824   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1886   18710
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                37      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 3      40
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
6 months    ki1000109-EE               PAKISTAN                       1               346     371
6 months    ki1000109-EE               PAKISTAN                       0                25     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               412     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               171     583
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             14792   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1489   16281
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               407     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               170     577
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1420
24 months   ki1101329-Keneba           GAMBIA                         0               146    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7517    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               824    8341
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               137     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     152


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
![](/tmp/0716ea7b-edf4-430c-82c6-f134d14ecd67/20a7a8b3-449b-49b0-9b88-85a59b9f7445/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.9287286   -1.1276760   -0.7297812
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.5612779   -0.7916026   -0.3309532
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9995922   -1.1945053   -0.8046791
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4150764   -0.6261912   -0.2039617
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.9800869   -1.1372084   -0.8229654
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.7034380   -0.8406811   -0.5661950
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8615480   -1.2469007   -0.4761954
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed           0.0706730   -0.1098764    0.2512225
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.5355813   -1.5553714   -1.5157911
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.0601818   -1.2268221   -0.8935415
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.2307168    0.0321016    0.4293320
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.1884512   -1.3845892   -0.9923133
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.5404092   -0.6894222   -0.3913961
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -1.3268158   -1.4494141   -1.2042175
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.7369474   -1.1344850   -0.3394097
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2307903   -1.4349508   -1.0266298
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -2.3647373   -2.6697068   -2.0597677
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.1802801   -1.2734849   -1.0870752
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.9285114   -0.9824889   -0.8745339
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.3918049   -1.5479274   -1.2356824
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.2921554   -1.3155411   -1.2687698
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.1441783   -1.3293782   -0.9589784
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.9685749   -2.1668578   -1.7702920
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1185417   -0.1464134    0.3834968
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.5940956   -1.7835996   -1.4045917
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.2783420   -1.4424173   -1.1142666
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -1.7256690   -1.8856713   -1.5656668
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.3691337   -1.6959763   -1.0422911
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.8194346   -3.0364743   -2.6023949
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.4916727   -1.6444077   -1.3389377
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -1.5618507   -1.6203460   -1.5033553
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.9169419   -2.0957371   -1.7381468
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.9808738   -2.0398823   -1.9218653
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.7177107   -1.8616534   -1.5737680


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.0497083   -1.1780996   -0.9213171
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed          -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.0098469   -1.1519586   -0.8677353
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.7128070   -0.8704934   -0.5551207
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.9261397   -1.0389037   -0.8133757
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.7108584   -0.8390511   -0.5826657
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9205882   -1.1394357   -0.7017408
Birth       ki1101329-Keneba          GAMBIA                         observed             observed           0.0135081   -0.0559902    0.0830065
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.5457493   -1.5650991   -1.5263996
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.2009705   -1.3199485   -1.0819924
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2109514   -1.3300505   -1.0918522
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.5557940   -0.6681063   -0.4434817
6 months    ki0047075b-MAL-ED         PERU                           observed             observed          -1.3229136   -1.4307207   -1.2151065
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.0640356   -1.1937663   -0.9343049
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3516458   -1.4765824   -1.2267092
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -2.2056604   -2.3285064   -2.0828144
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1101329-Keneba          GAMBIA                         observed             observed          -0.9489317   -1.0001696   -0.8976937
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.3235298   -1.4103807   -1.2366790
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3060279   -1.3292905   -1.2827653
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.2339326   -1.4137041   -1.0541611
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.9391587   -2.0665449   -1.8117724
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -1.8433556   -1.9704665   -1.7162446
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -1.2693778   -1.3896188   -1.1491367
24 months   ki0047075b-MAL-ED         PERU                           observed             observed          -1.7440201   -1.8648503   -1.6231899
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.6114440   -1.7486349   -1.4742530
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6159762   -2.7525555   -2.4793968
24 months   ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba          GAMBIA                         observed             observed          -1.5804688   -1.6348908   -1.5260468
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.8788036   -1.9703700   -1.7872372
24 months   kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -2.0111797   -2.0396837   -1.9826758
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.7671053   -1.9017670   -1.6324435


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.1209798   -0.2813912    0.0394317
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1738032   -0.3721895    0.0245831
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0102547   -0.1629953    0.1424858
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2977306   -0.4878382   -0.1076230
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0539472   -0.0721558    0.1800501
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0074203   -0.0512317    0.0363911
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0590402   -0.3268349    0.2087545
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0571649   -0.2239562    0.1096264
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0101681   -0.0154110   -0.0049251
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.1407887   -0.2742421   -0.0073353
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1796960   -0.3177806   -0.0416115
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0225001   -0.1542428    0.1092426
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0153848   -0.1358728    0.1051032
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.0039022   -0.0724402    0.0802446
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.3270883   -0.6980266    0.0438500
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1208555   -0.2893834    0.0476724
6 months    ki1000109-EE              PAKISTAN                       optimal              observed           0.1590769   -0.1309280    0.4490818
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed           0.0931760    0.0260350    0.1603170
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0204203   -0.0393009   -0.0015396
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.0682751   -0.0582133    0.1947635
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0138725   -0.0208542   -0.0068907
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0897543   -0.1774260   -0.0020825
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.0294163   -0.1488797    0.2077122
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0767074   -0.2617114    0.1082966
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.2492599   -0.3991305   -0.0993894
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.0089642   -0.1010274    0.1189557
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0183511   -0.1421060    0.1054039
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.2423103   -0.5586415    0.0740210
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2034584    0.0210419    0.3858749
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0944452   -0.2211841    0.0322937
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0186181   -0.0413449    0.0041086
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.0381383   -0.1177535    0.1940302
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0303059   -0.0813623    0.0207505
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0493945   -0.0871877   -0.0116014
